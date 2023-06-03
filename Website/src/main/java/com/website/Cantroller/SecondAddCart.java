package com.website.Cantroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.website.Dao.ConnectionProvider;
import com.website.Model.add;

/**
 * Servlet implementation class SecondAddCart
 */
@WebServlet("/SecondAddCart")
public class SecondAddCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * response.setContentType("text/html;charset=UTF-8");
		 * 
		 * 
		 * Double price=Double.parseDouble(request.getParameter("price"));
		 * 
		 * HttpSession session = request.getSession(); session.setAttribute("cart",
		 * addproduct); int product_id=Integer.parseInt(request.getParameter("id"));
		 * String email=request.getParameter("email"); add a= new add();
		 * a.setProduct_id(product_id); a.setEmail(email); a.setQuantity(1);
		 * a.setPrice(price); a.setTotal(price);
		 * 
		 * 
		 */
	}

	
}
