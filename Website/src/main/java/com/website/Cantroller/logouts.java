package com.website.Cantroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logouts
 */
@WebServlet("/logouts")
public class logouts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			HttpSession session = request.getSession();
			session.removeAttribute("userObj");
			
			HttpSession session1 = request.getSession();
			session.removeAttribute("userObj");
			session1.setAttribute("sucessMsg", "Logout Sucess");
			response.sendRedirect("login.jsp");
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		
	}

	

}
