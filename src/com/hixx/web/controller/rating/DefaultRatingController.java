package com.hixx.web.controller.rating;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hixx.web.dao.mysql.MySQLCityInfDao;
import com.hixx.web.dao.mysql.MySQLCityScoreDao;
import com.hixx.web.dao.mysql.MySQLMemberDao;
import com.hixx.web.data.dao.CityInfDao;
import com.hixx.web.data.dao.CityScoreDao;
import com.hixx.web.data.dao.MemberDao;
import com.hixx.web.data.entity.CityInf;

@WebServlet("/default-rating")
public class DefaultRatingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = (String)request.getSession().getAttribute("id");
		MemberDao memberDao = new MySQLMemberDao();
		int cnum = 51;int sw=0;int ssw=0;
		String cityHan[] = new String [cnum];
		String cityHan2[] = new String [cnum];
		int cityPassto[] = new int[cnum];
		if(memberDao.get(id).getTicket() != 1) {		
			CityScoreDao cityScoreDao = new MySQLCityScoreDao();
			int result = cityScoreDao.init(id);
			request.setAttribute("result", result);
			
			if(result <10) {
				int cityRank[] = cityScoreDao.cityRank();
				int cityPass[] = cityScoreDao.cityPass(id);
			
				CityInfDao cityInfDao = new MySQLCityInfDao();
				for(CityInf i : cityInfDao.getList()) {
					cityHan[sw] = i.getCityHan();
					sw++;
				}
				for(int i=0; i<sw;i++) {
					cityHan2[ssw] = cityHan[cityRank[i]-1];
					cityPassto[ssw] = cityPass[cityRank[i]-1];
					if(cityPass[cityRank[i]-1] ==0) ssw++;
				}
				String cityHanto[] = new String [ssw];
				for(int i=0;i<ssw;i++) {
					if(cityPassto[i] ==0) cityHanto[i] = cityHan2[i];
				}
				request.setAttribute("cityRank", cityRank);
				request.setAttribute("cityHanto", cityHanto);
				request.setAttribute("cityPassto", cityPassto);
				request.getRequestDispatcher("/WEB-INF/views/customer/default-rating.jsp").forward(request, response);
			}
			
			else {
				memberDao.ticketAdd(id);
				response.sendRedirect("index");
			}
			
		}
		else {
			response.sendRedirect("index");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		int trate = 0;int frate=0;int srate=0;
		String cname = request.getParameter("city");
		String _trate = request.getParameter("city-rate");
		String _frate = request.getParameter("food-rate");
		String _srate = request.getParameter("sightsee-rate");
		
		if (_trate != null) trate = Integer.parseInt(_trate);
		if (_frate != null) frate = Integer.parseInt(_frate);
		if (_srate != null) srate = Integer.parseInt(_srate);
		
		
		String id = (String)request.getSession().getAttribute("id");
		

		CityInfDao cityInfDao = new MySQLCityInfDao();
		
		int cnum = 51;int ssw=0;int ccode =0;int result=0;
		String cityHan[] = new String[cnum];
		for(CityInf i : cityInfDao.getList()) {
			cityHan[ssw] = i.getCityHan();
			if (cityHan[ssw].equals(cname)) ccode = ssw+1;
			ssw++;
		}
		
		CityScoreDao cityScoreDao = new MySQLCityScoreDao();
		result = cityScoreDao.add(id,ccode,trate,frate,srate);
		/*
		if (result==0) {
			PrintWriter out = response.getWriter();
			out.println("<script language='javascript'>");
			out.println("alert('해당 도시는 이미 선호가 반영되었습니다');");
			out.println("</script>");
			out.close(); //response.sendRedirect에 문제가 생겨서 일단 주석처리
		}*/
		
		response.sendRedirect("default-rating");
	}

}
