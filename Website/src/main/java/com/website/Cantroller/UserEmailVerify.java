package com.website.Cantroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.website.Model.SendMail;
import com.website.Model.EmailUser;

/**
 * Servlet implementation class UserEmailVerify
 */
@WebServlet("/UserEmailVerify")
public class UserEmailVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html;charset=UTF-8");
	try(PrintWriter out = response.getWriter()){
		String email = request.getParameter("userEmail");
		
		SendMail sm = new SendMail();
		String code = sm.getRandom();
		
		EmailUser eu = new EmailUser(email,code);
		
		boolean test = sm.sendEmail(eu);
		
		if(test) {
			HttpSession session = request.getSession();
			session.setAttribute("authcode", eu);
			response.sendRedirect("Verify.jsp");
		}
	}
	
	
	}

}
