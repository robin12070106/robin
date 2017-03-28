package com.hixx.web.controller.rating;

import java.io.IOException;

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
		int cnum = 51;int sw=0;
		String cityHan[] = new String [cnum];
		String cityHanto[] = new String [cnum];
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
					cityHanto[i] = cityHan[cityRank[i]-1];
					cityPassto[i] = cityPass[cityRank[i]-1];			
				}
				
				request.setAttribute("cityRank", cityRank);
				request.setAttribute("cityHanto", cityHanto);
				request.setAttribute("cityPass", cityPass);
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
		String ccode = request.getParameter("city-code");
		String trate = request.getParameter("city-rate");
		String frate = request.getParameter("food-rate");
		String srate = request.getParameter("sightsee-rate");
		
		
		
		
		response.sendRedirect("default-rating");
	}

}
