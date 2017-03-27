package com.hixx.web.controller.joinus;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hixx.web.dao.mysql.MySQLMemberDao;
import com.hixx.web.data.dao.MemberDao;
import com.hixx.web.data.entity.Member;

/**
 * Servlet implementation class LoginController
 */
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
		/*response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		 
		PrintWriter out = response.getWriter();
		 */
		if (member != null && member.getPwd().equals(formPassword)) {
			validate = 1;
			HttpSession session = request.getSession();
			session.setAttribute("id", formUsername);
					
		/*	out.println("<script language='javascript'>");
			out.println("alert('로그인을 환영합니다!');");
			out.println("location.href = 'defaultRating';");
			out.println("</script>");
			out.close();*/
		}
		else {
			/*out.println("<script language='javascript'>");
			out.println("alert('아이디 혹은 비밀번호가 일치하지 않습니다!');");
			out.println("location.href = 'login';");
			out.println("</script>");
			out.close();*/
		}
		
		//반드시 기억할것 jsp --> 서블릿, 서블릿 --> jsp으로만 호출한다고 생각하면됨
		//여기서 바로 alert창 찍어도 좋고, login.jsp로 가서 조건비교해서 찍어줘도 된다.
		//여기서 validate의 경우 login.jsp 상에서 처음에는 null로 갔다가 입력후 1로 바뀜. 주의할것
		
		request.setAttribute("validate", validate);
		request.getRequestDispatcher("/WEB-INF/views/customer/login.jsp").forward(request, response);
	}

}
