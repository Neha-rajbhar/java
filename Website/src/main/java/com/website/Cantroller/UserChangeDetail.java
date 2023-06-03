package com.website.Cantroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.website.Dao.ConnectionProvider;
import com.website.Model.Register;
import com.website.Model.Users;

/**
 * Servlet implementation class UserChangeDetail
 */
@WebServlet("/UserChangeDetail")
public class UserChangeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		
   		request.getRequestDispatcher("everyNav.jsp").include(request, response);
   		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        out.println("<h1>Update Details</h1>");   
   		String uid=request.getParameter("id");     
   		 int id=Integer.parseInt(uid);    	
   		    	          
   		 Register u=ConnectionProvider.getUserById(id);  

   		out.print("<form action='ChangeUserDetails' method='post'>");  
   		out.print("<table>");  
   		out.print("<tr><td></td><td><input type='hidden' name='id' value='"+u.getId()+"'/></td></tr>");  
   		out.print("<tr><td>Name:</td><td><input type='text' name='name' value='"+u.getName()+"'/></td></tr>");  
   		out.print("<tr><td>Email: </td><td><input type='email' name='email' value='"+u.getEmail()+"'</td></tr>");  
   		out.print("<tr><td>Phone No:</td><td><input type='text' name='phone' value='"+u.getPhone()+"'/></td></tr>");  
   		 
   		out.print("</td></tr>");  
   		out.print("<tr><td colspan='2'><input type='submit' value=' Save '/></td></tr>");  
   		out.print("</table>");  
   		out.print("</form>");  

   		out.close();    	      
		
   	}

		
}
