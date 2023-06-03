package com.website.Cantroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.website.DB.DbConfig;
import com.website.Dao.ConnectionProvider;
import com.website.Dao.ProductDaoImpl;
import com.website.Model.Produc;
import com.website.Model.Products;

/**
 * Servlet implementation class New_Edit
 */
@WebServlet("/New_Edit")
public class New_Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("new.jsp").include(request, response);
		
		request.getRequestDispatcher("br.jsp").include(request, response);
		
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	        out.println("<link rel='stylesheet' href='css/bootstrap.css'></link>");
	         
	        String sid=request.getParameter("id");  
	        int id=Integer.parseInt((sid));  
	          
	        
	        
	        ProductDaoImpl dao=new ProductDaoImpl(DbConfig.getconn()) ;
	        Produc pr=dao.getProdtById(id);
	          
	        
	        out.println("<h2 class='text-primary' style='font-size:20px;text-align:center;padding:20px;'>Update Products</h2>"); 
	        out.print("<form action='EditProduc' method='post' style='width:320px;height:520px;background:rgba(0,0,0,0.5);color:white;top:50%;left:50%;position: absolute;\r\n"
	        		+ "transform: translate(-50%,-50%);\r\n"
	        		+ "box-sizing: border-box;\r\n"
	        		+ "padding: 70px 30px;>");  
	       // out.print("<table>");  
	        out.println("<p style='margin: 0;\r\n"
	        		+ "padding: 5px;\r\n"
	        		+ "font-weight: bold;'>ID</p>");
	        out.print("<input style='width: 100%;\\r\\n\"\r\n"
	        		+ "	        		+ \"margin-bottom: 20px;'type='text' name='id' value='"+pr.getId()+"'/>");  
	        out.println("<p style='margin: 0;\r\n"
	        		+ "padding: 5px;\r\n"
	        		+ "font-weight: bold;'>Name</p>");
	        out.print("<input style='width: 100%;\r\n"
	        		+ "margin-bottom: 20px;' type='text' name='namep' value='"+pr.getName()+"'/>"); 
	        out.println("<p style='margin: 0;\r\n"
	        		+ "padding: 5px;\r\n"
	        		+ "font-weight: bold;'>Categoey</p>");
	        out.print("<input style='width: 100%;\r\n"
	        		+ "margin-bottom: 20px;border:none;' type='text' name='category' value='"+pr.getCategory()+"'/>");  
	        out.println("<p style='margin: 0;\r\n"
	        		+ "padding: 5px;\r\n"
	        		+ "font-weight: bold;'>Price</p>");
	        out.print("<input style='width: 100%;\r\n"
	        		+ "margin-bottom: 20px;' type='number' name='price' value='"+pr.getPrice()+"'/>");
	        out.println("<p style='margin: 0;\r\n"
	        		+ "padding: 5px;\r\n"
	        		+ "font-weight: bold;'>Status</p>");
	       // out.print("<tr><td>Status:</td><td>");  
	        out.print("<select name='active' style='width:150px'>");  
	        out.print("<option>Yes</option>");  
	        out.print("<option>No</option>");  
	       
	        out.print("</select>");  
	        out.println(" ");
	        out.println(" ");
	        out.println(" ");
	      
	        out.print("<input style='width: 100%;\r\n"
	        + "margin:20px;background-color: #04AA6D;\\r\\n\"\r\n"
	        + "       		+ \"  color: white;\\r\\n\"\r\n"
	        + "       		+ \"  padding: 14px 20px;\\r\\n\"\r\n"
	        + "       		+ \"  margin: 8px 0;\\r\\n\"\r\n"
	        + "       		+ \"  border: none;\\r\\n\"\r\n"
	        + "       		+ \"  cursor: pointer;\\r\\n\"\r\n"
	        + "       		+ \"  width: 100%;\\r\\n\"\r\n"
	        + "       		+ \"border-radius:10px;'type='submit' value='Edit & Save '/>");  
	         
	        out.print("</form>");  
	          
	        out.close();  
		
	}
	
	

}
