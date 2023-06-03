package com.website.Cantroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.website.Dao.ConnectionProvider;

/**
 * Servlet implementation class DeleteUser
 */
@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String uid=request.getParameter("id");  
	        int id=Integer.parseInt(uid);  
	        int status= ConnectionProvider.deleteUser(id);  
	        if(status>0)
	         {
	    	   response.sendRedirect("GetAllUser");  
	         }
	         else
	         {
	    	   PrintWriter out = response.getWriter();

	   		   out.println("Something went wrong try again.");

	    	   request.getRequestDispatcher("GetAllUser").include(request, response);
	    	    
	         }
	       	}

	
}
