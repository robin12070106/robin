package com.hixx.web.controller.joinus;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hixx.web.dao.mysql.MySQLMemberDao;
import com.hixx.web.data.dao.MemberDao;
import com.hixx.web.data.entity.Member;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/views/customer/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String formUsername = request.getParameter("form-username");
		String formPassword = request.getParameter("form-password");
		
		MemberDao memberDao = new MySQLMemberDao();
		Member member = memberDao.get(formUsername);
		int validate = 0;
		if (member != null && member.getPwd().equals(formPassword)) {
			validate = 1;
			HttpSession session = request.getSession();
			session.setAttribute("id", formUsername);
		}
		
		request.setAttribute("validate", validate);
		request.getRequestDispatcher("/WEB-INF/views/customer/login.jsp").forward(request, response);
	}

}
