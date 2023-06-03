package com.website.Cantroller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


import com.website.Dao.ConnectionProvider;
import com.website.Model.Produc;
import com.website.Model.Products;

/**
 * Servlet implementation class AddProduct
 */
@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		
		String namee=request.getParameter("namep");
		String category=request.getParameter("category");
        Double price=Double.parseDouble(request.getParameter("price"));
        String active=request.getParameter("active");
        Double weight=Double.parseDouble(request.getParameter("weight"));
        
        
      // Double weight=Double.parseDouble(request.getParameter("weight"));
       //String description=request.getParameter("description");
      
        
        try {
        	
        	Part part=request.getPart("image");
    		String imageFileName=part.getSubmittedFileName();
    		System.out.println(imageFileName);
    		
    	
    		
    		InputStream is=null;
    		if(part != null)
    		{
    			for(Part part2: request.getParts()) {
    				String path="E:\\images"+ File.separator + imageFileName;
    				part2.write(path);
    			}
    		}
    		
    		    		

        	PrintWriter out=response.getWriter();
        	int result=0;
        	Connection con=ConnectionProvider.viewconnection();
        	 String sql="insert into products(name,category,price,active,image,weight) values(?,?,?,?,?,?)";
        	 Produc p=new Produc();
        	
        	 p.setName(namee);
        	 p.setCategory(category);
        	 p.setPrice(price);
        	// p.setWeight(weight);
        	 p.setActive(active);
        	 //p.setDescription(description);
        	// p.setImage(is);
        	 p.setImage(imageFileName);
        	 p.setWeight(weight);
        	
        	 PreparedStatement psmt=con.prepareStatement(sql);
        	
 			 psmt.setString(1,p.getName());
 			 psmt.setString(2, p.getCategory());
 			 psmt.setDouble(3, p.getPrice());
 			 psmt.setString(4, p.getActive());
             psmt.setString(5, imageFileName);
             psmt.setDouble(6, p.getWeight());
            
 			 result= psmt.executeUpdate();
 			if(result>0)
 			{
 				//out.println("<p>Sucessfully inserted in the table</p>");
 				session.setAttribute("addSucess", "Successfully Insrted");
				response.sendRedirect("AddNewProduct.jsp");
 				//request.getRequestDispatcher("DisplayCart.jsp").include(request, response);
 				
 			}
 			else
 			{
 				
 				session.setAttribute("addFail", "Try Again");
				response.sendRedirect("AddNewProduct.jsp");
 				
				/*
				 * out.println("<p>Sorry, unable to insert!</p>");
				 * request.getRequestDispatcher("AddNewProduct.jsp").include(request, response);
				 */
 				

 			}
 			 
 			    psmt.close();
 			    con.close();
        }
        catch(Exception e) {
        	e.printStackTrace();
        }

	}
	
	

	
	}


