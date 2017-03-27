package com.hixx.web.controller.rating;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hixx.web.dao.mysql.MySQLCityScoreDao;
import com.hixx.web.data.dao.CityScoreDao;

@WebServlet("/defaultRating")
public class DefaultRatingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String)request.getSession().getAttribute("id");
		CityScoreDao cityScoreDao = new MySQLCityScoreDao();
		int result = cityScoreDao.init(id);
		request.setAttribute("result", result);
		
		if(result <10) {
			request.getRequestDispatcher("/WEB-INF/views/customer/default-rating.jsp").forward(request, response);
		}
		else {
			System.out.println("³¡");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		
	}

}
