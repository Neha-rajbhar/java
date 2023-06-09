package com.website.Cantroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.website.Dao.ConnectionProvider;
import com.website.Model.Products;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		  response.setContentType("text/html");  
    	        PrintWriter out=response.getWriter();  
    	        out.println("<h1>Update Products</h1>");  
    	        String sid=request.getParameter("id");  
    	        int id=Integer.parseInt(sid);  
    	          
    	        Products p=ConnectionProvider.getEmployeeById(id);  
    	          
    	        out.print("<form action='EditDisplayCart' method='post'>");  
    	        out.print("<table>");  
    	        out.print("<tr><td></td><td><input type='hidden' name='id' value='"+p.getId()+"'/></td></tr>");  
    	        out.print("<tr><td>Name:</td><td><input type='text' name='namep' value='"+p.getName()+"'/></td></tr>");  
    	        out.print("<tr><td>Category: </td><td><input type='text' name='category' value='"+p.getCategory()+"'</td></tr>");  
    	        out.print("<tr><td>Price:</td><td><input type='number' name='price' value='"+p.getPrice()+"'/></td></tr>");  
    	        out.print("<tr><td>Status:</td><td>");  
    	        out.print("<select name='active' style='width:150px'>");  
    	        out.print("<option>Yes</option>");  
    	        out.print("<option>No</option>");  
    	       
    	        out.print("</select>");  
    	        out.print("</td></tr>");  
    	        out.print("<tr><td colspan='2'><input type='submit' value='Edit & Save '/></td></tr>");  
    	        out.print("</table>");  
    	        out.print("</form>");  
    	          
    	        out.close();  
    	    }  	}


