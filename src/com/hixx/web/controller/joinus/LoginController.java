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
			out.println("alert('�α����� ȯ���մϴ�!');");
			out.println("location.href = 'defaultRating';");
			out.println("</script>");
			out.close();*/
		}
		else {
			/*out.println("<script language='javascript'>");
			out.println("alert('���̵� Ȥ�� ��й�ȣ�� ��ġ���� �ʽ��ϴ�!');");
			out.println("location.href = 'login';");
			out.println("</script>");
			out.close();*/
		}
		
		//�ݵ�� ����Ұ� jsp --> ����, ���� --> jsp���θ� ȣ���Ѵٰ� �����ϸ��
		//���⼭ �ٷ� alertâ �� ����, login.jsp�� ���� ���Ǻ��ؼ� ����൵ �ȴ�.
		//���⼭ validate�� ��� login.jsp �󿡼� ó������ null�� ���ٰ� �Է��� 1�� �ٲ�. �����Ұ�
		
		request.setAttribute("validate", validate);
		request.getRequestDispatcher("/WEB-INF/views/customer/login.jsp").forward(request, response);
	}

}
