package com.website.Cantroller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.website.Dao.ConnectionProvider;
import com.website.Model.Products;

/**
 * Servlet implementation class DeleteProduct
 */
@WebServlet("/DeleteProduct")
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		
    		
    	
    		   String sid=request.getParameter("id");  
    	       int id=Integer.parseInt(sid);  
    	       int status= ConnectionProvider.delete(id);  
    	       // response.sendRedirect("ViewServlet");  
    	        if(status>0)
     	       {
     	    	   response.sendRedirect("AllDisplayCart");  
     	       }
     	       else
     	       {
     	    	   response.sendRedirect("AddNewProduct.jsp");  
     	       }
     	       
    		
    		// String sid=request.getParameter("id"); 
    		// int id = Integer.parseInt(request.getParameter("id"));
    		     		
    		

    		
    	      
    	 
	

    	}
    	}
