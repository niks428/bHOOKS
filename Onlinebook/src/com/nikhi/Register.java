package com.nikhi;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nikhi.dao.RegisterDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();

		String uname = request.getParameter("uname");
		String name = request.getParameter("name");
		String pass = request.getParameter("password");
		String pass2 = request.getParameter("password2");
		String add = request.getParameter("add");
		String ph = request.getParameter("phone");
		String email = request.getParameter("email");

		if (pass.equals(pass2)) {
			
			RegisterDao Rdao = new RegisterDao();
			
			if (Rdao.check(name,uname,email,pass,add,ph)) {
				
				HttpSession session=request.getSession();
				session.setAttribute("username", uname);
				
				response.sendRedirect("Member.jsp");
				
			} else {
				
				response.sendRedirect("Login.jsp");
				System.out.print("Server Error !! Not Registered");
			}
		} else {
			response.sendRedirect("Register.jsp");
			out.print("Password not Same");
		}

	}

}
