package com.nikhi;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nikhi.dao.ResetDao;

/**
 * Servlet implementation class CheckedResetPass
 */
@WebServlet("/CheckedResetPass")
public class CheckedResetPass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckedResetPass() {
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
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();

		String uname = (String) session.getAttribute("uname");
		String email = (String) session.getAttribute("email");
		String pass = request.getParameter("pass");
		String pass2 = request.getParameter("pass2");

		if (pass.equals(pass2)) {
			ResetDao rDao = new ResetDao();
			if (rDao.check(uname, email, pass)) {
				response.sendRedirect("Login.jsp");
				System.out.print("Password SuccessFully Changed");
				session.removeAttribute("uname");
				session.removeAttribute("email");
				session.invalidate();
			} else {
				response.sendRedirect("ResetP.html");
				// server error
			}
		} else {
			System.out.print("Password not Same");
			response.sendRedirect("Login.jsp");

		}

	}
}
