package com.website.Cantroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.website.Dao.ConnectionProvider;
import com.website.Model.Products;

/**
 * Servlet implementation class SearchItem
 */
@WebServlet("/SearchItem")
public class SearchItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String searchby= request.getParameter("search");
	 response.setContentType("text/html");  
     PrintWriter out=response.getWriter();  
	int z=0;
	 try{  
     	
         Connection con=ConnectionProvider.viewconnection();     
        Statement st=con.createStatement();  
        String query="select * from products where name like '%"+searchby+"%' or category like '%"+searchby+"%' and active='Yes'";
        
         ResultSet rs=st.executeQuery(query);  
         while(rs.next()){  
        	 z=1;
        	 Products p = new Products();
             p.setId(rs.getInt("id"));
             p.setName(rs.getString("name"));
             p.setCategory(rs.getString("category"));
             p.setPrice(rs.getDouble("price"));
             p.setActive(rs.getString("active"));  
             p.setImage(rs.getString("image"));
             out.println("<a href='AddToCartServlet?id=" + p.getId()+"'>Add To Cart</a>;");
                         
         }  
         if(z==0) {
        	 out.println("Not Found ");
         }
         con.close();  
     }catch(Exception ex){ex.printStackTrace();}  
       
       
 }  
	}


