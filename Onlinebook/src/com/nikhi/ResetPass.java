package com.nikhi;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nikhi.dao.RegisterDao;
import com.nikhi.dao.ResetDao;
import com.nikhi.dao.ResetP;

/**
 * Servlet implementation class ResetPass
 */
@WebServlet("/ResetPass")
public class ResetPass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ResetPass() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

			System.out.print("in"+request.getParameter("action"));
			ResetP ResetDao = new ResetP();

			String uname = request.getParameter("uname");
			String email = request.getParameter("email");

			if (ResetDao.check(uname, email)) {
				// sets Session for Reset Password only
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				session.setAttribute("uname", uname);
				
				response.sendRedirect("SetPass.jsp");

			}else {
				//email not exists
				response.sendRedirect("resetP.html");
			}

	}
}
