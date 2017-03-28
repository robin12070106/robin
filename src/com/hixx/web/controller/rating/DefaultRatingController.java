package com.hixx.web.controller.rating;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hixx.web.dao.mysql.MySQLCityScoreDao;
import com.hixx.web.dao.mysql.MySQLMemberDao;
import com.hixx.web.data.dao.CityScoreDao;
import com.hixx.web.data.dao.MemberDao;

@WebServlet("/default-rating")
public class DefaultRatingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String)request.getSession().getAttribute("id");
		MemberDao memberDao = new MySQLMemberDao();
		
		System.out.println(memberDao.get(id).getTicket());
		System.out.println(memberDao.get(id).getId());
		System.out.println(memberDao.get(id).getPwd());
		
		if(memberDao.get(id).getTicket() != 1) {		
			CityScoreDao cityScoreDao = new MySQLCityScoreDao();
			int result = cityScoreDao.init(id);
			request.setAttribute("result", result);
			
			if(result <10) {
				int cityRank[] = cityScoreDao.cityrank(); 
				int cityPass[] = cityScoreDao.citypass();
				request.setAttribute("cityRank", cityRank);
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
