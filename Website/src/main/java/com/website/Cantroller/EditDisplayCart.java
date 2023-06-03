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
 * Servlet implementation class EditDisplayCart
 */
@WebServlet("/EditDisplayCart")
public class EditDisplayCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   	  response.setContentType("text/html");  
      PrintWriter out=response.getWriter();  
        
      String sid=request.getParameter("id");  
      int id=Integer.parseInt(sid);  
      String name=request.getParameter("namep");  
      String cate=request.getParameter("category");  
      Double pri=Double.parseDouble(request.getParameter("price"));
  
      String statu=request.getParameter("active");  
        
      Products p=new Products();  
      p.setId(id);  
      p.setName(name);  
      p.setCategory(cate);
      p.setPrice(pri);
      p.setActive(statu);
        
      int status=0;
      status=ConnectionProvider.update(p);  
      if(status>0){  
          response.sendRedirect("AllDisplayCart");  
      }else{  
          out.println("Sorry! unable to update record");  
      }  
        
      out.close();  
  }  	}


