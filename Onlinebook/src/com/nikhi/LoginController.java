package com.nikhi;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nikhi.dao.LoginDao;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String action = request.getParameter("action");
		if("login".equals(action)) {
			
			LoginDao dao=new LoginDao();
			String uname=request.getParameter("uname");
			String pass=request.getParameter("password");
			
			if(dao.check(uname, pass)) {
				HttpSession session=request.getSession();
				session.setAttribute("username", uname);
				response.sendRedirect("Member.jsp");
			}else {
				response.sendRedirect("Login.jsp");
			}	
			
		}else if("forgotPassword".equals(action)) {
			
			//reset password
			response.sendRedirect("ResetP.html");
			
		}else if("register".equals(action)) {
			
			response.sendRedirect("Register.jsp");
			
			
			
		}
		
	
	}


}
