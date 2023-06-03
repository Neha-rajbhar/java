package com.website.Cantroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.website.Model.EmailUser;

/**
 * Servlet implementation class VerifyCode
 */
@WebServlet("/VerifyCode")
public class VerifyCode extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		
		try(PrintWriter out = response.getWriter()){
			
			    HttpSession session = request.getSession();
			    EmailUser eu = (EmailUser) session.getAttribute("authcode");
			    
			    String code = request.getParameter("authcode");
			    
			    if(code.equals(eu.getCode())) {
			    	out.println("Verification Done");
			    	RequestDispatcher rd=request.getRequestDispatcher("Verify.jsp");
			    	rd.include(request, response);
			    	
			    	response.sendRedirect("NewPassword.jsp");
			    }
				
}
	}
	}
