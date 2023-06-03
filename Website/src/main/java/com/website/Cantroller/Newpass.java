package com.website.Cantroller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.website.Dao.ConnectionProvider;

/**
 * Servlet implementation class Newpass
 */
@WebServlet("/Newpass")
public class Newpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		//String email=session.getAttribute("Email").toString();
	   	 String email= request.getParameter("email");
	   	 String npass=request.getParameter("newpass");
	   	 String cpass=request.getParameter("confirmpass");
	   	 if(!cpass.equals(npass))
	   	 {
	   		session.setAttribute("fail", "New password doesnt match with Confirm password");
			response.sendRedirect("NewPassword.jsp");
	   		 
	   	 }
	   	 else
	   	 {
	   		 int check=0;
	   		 try{
	   			 
	   			 Connection con=ConnectionProvider.viewconnection();
	   			 Statement st=con.createStatement();
	   			 ResultSet rs=st.executeQuery("select * from custom where email='"+email+"'");
	   			 while(rs.next())
	   			 {
	   				 check=1;
	   				 st.executeUpdate("update custom set password='"+npass+"' where email='"+email+"'");
	   				session.setAttribute("sucessMsg", "Password changed sucessfully");
					response.sendRedirect("login.jsp");
	   			 }
	   			 if(check==0)
	   			 {
	   				session.setAttribute("failed", "New password doesnt match with Confirm password");
	   				response.sendRedirect("NewPassword.jsp");
	   		   		 
	   			 }
	   		 }
	   		 catch(Exception e)
	   		 {
	   			 System.out.print(e);
	   			 e.printStackTrace();
	   		 }
	   		  
	   	 }
	   	 
		
	   	
	   	}

	}


