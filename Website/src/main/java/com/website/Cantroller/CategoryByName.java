package com.website.Cantroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.website.Dao.ConnectionProvider;
import com.website.Model.Products;

/**
 * Servlet implementation class CategoryByName
 */
@WebServlet("/CategoryByName")
public class CategoryByName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	       // out.println("<a href='register.jsp'>Employee</a>");  
	        
	         
	        	 out.println("<h1>Product List</h1>");
	        	// request.getRequestDispatcher("Table.jsp").include(request, response);
	        	 String name=request.getParameter("name"); 
	       List<Products> list=ConnectionProvider.getCategoryOfProducts(name);  
	          
	       out.print("<table border='1' width='100%'");  
	        out.print("<tr><th>Id</th><th>Name</th><th>Category</th><th>Price</th><th>Status</th><th>Edit</th><th>Delete</th></tr>");  
	        for(Products p:list){  
	       out.print("<tr><td>"+p.getId()+"</td><td>"+p.getName()+"</td><td>"+p.getCategory()+"</td> <td>"+p.getPrice()+"</td><td>"+p.getActive()+"</td><td><a href='EditServlet?id="+p.getId()+"'>Edit</a></td><td><a href='DeleteProduct?id="+p.getId()+"'>Delete</a></td></tr>");  
	       }  
	        out.print("</table>");  
	          
	        out.close();  
	       }
	}

	


