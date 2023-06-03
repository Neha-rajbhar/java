package com.website.Cantroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.website.DB.DbConfig;
import com.website.Dao.ProductDaoImpl;
import com.website.Model.Produc;



/**
 * Servlet implementation class EditProduc
 */
@WebServlet("/EditProduc")
public class EditProduc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("namep");
		String category=request.getParameter("category");
		Double price=Double.parseDouble(request.getParameter("price"));
		
        String active=request.getParameter("active");
	
		
		
		Produc p =new Produc();
		p.setId(id);
		 p.setName(name);
    	 p.setCategory(category);
    	 p.setPrice(price);
    	 p.setActive(active);
    	
    	// p.setImage(fileName);
    	 HttpSession session=request.getSession();
    	 ProductDaoImpl dao=new ProductDaoImpl(DbConfig.getconn()) ;
    	boolean f= dao.updateProduct(p);
		
    	if(f) {
    		
    		System.out.println("register Success");
			session.setAttribute("sucessMsg", "Updated Sucess");
			response.sendRedirect("product.jsp");
	}
		else
		{
			System.out.println("try again");
			session.setAttribute("failMsg", "Try Again");
			response.sendRedirect("editProduct.jsp");
		}
	}

}
