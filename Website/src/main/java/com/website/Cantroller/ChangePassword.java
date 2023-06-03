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
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		HttpSession session = request.getSession();

   	 String email=session.getAttribute("emails").toString();
   	 String opass=request.getParameter("oldpass");
   	 String npass=request.getParameter("newpass");
   	 String cpass=request.getParameter("confirmpass");
   	 if(!cpass.equals(npass))
   	 {
   		 
   		session.setAttribute("failed", "New password and Confirm password doesn,t match");
		response.sendRedirect("Changepass.jsp");
   	 }
   	 else
   	 {
   		 int check=0;
   		 try{
   			 
   			 Connection con=ConnectionProvider.viewconnection();
   			 Statement st=con.createStatement();
   			 ResultSet rs=st.executeQuery("select * from user_d where email='"+email+"' and password='"+opass+"'");
   			 while(rs.next())
   			 {
   				 check=1;
   				 st.executeUpdate("update user_d set password='"+npass+"' where email='"+email+"'");
   				 
   				session.setAttribute("sucessMsg", "Password changed sucessfully");
				response.sendRedirect("Changepass.jsp");
   			 }
   			 if(check==0)
   			 {
   				session.setAttribute("fail", "Your old password is wrong");
				response.sendRedirect("Changepass.jsp");
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
