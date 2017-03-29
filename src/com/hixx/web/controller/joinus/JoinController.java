package com.hixx.web.controller.joinus;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hixx.web.dao.mysql.MySQLMemberDao;
import com.hixx.web.data.dao.MemberDao;
import com.hixx.web.data.entity.Member;

@WebServlet("/join")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/customer/join.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String formUsername = request.getParameter("form-username");
		String formBirthday = request.getParameter("form-birthday");
		String formGender = request.getParameter("form-gender");
		String formPassword = request.getParameter("form-password");
		String formPasswordCheck = request.getParameter("form-password-check");
		
		MemberDao memberDao = new MySQLMemberDao();
		Member member = memberDao.get(formUsername);
		int validate = 0;
		
		if (member == null) {
			
			if(formPassword.equals(formPasswordCheck)) {
			
				Calendar c = Calendar.getInstance();
				int ytime;
				ytime = c.get(Calendar.YEAR);
				int xx =Integer.parseInt(formBirthday.substring(0, 4));
				int formAge = ytime-xx+1;
				
				member = new Member();
				member.setId(formUsername);
				member.setPwd(formPassword);
				member.setGender(formGender);
				member.setAge(formAge);
				member.setBirthdate(formBirthday);
				
				memberDao.add(member);
			}
			else validate = 2;
			
		}
		else validate = 1;
		
		
		request.setAttribute("validate", validate);
		request.getRequestDispatcher("/WEB-INF/views/customer/join.jsp").forward(request, response);
	}
}
