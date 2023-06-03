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



/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		
		 HttpSession session=request.getSession();
   	 ProductDaoImpl dao=new ProductDaoImpl(DbConfig.getconn()) ;
   	int status= dao.deleteProduct(id);
		
   	if(status>0) {
   		
   		//System.out.println("register Success");
			session.setAttribute("sucessMsg", "delete Sucess");
			response.sendRedirect("product.jsp");
	}
		else
		{
			//System.out.println("try again");
			session.setAttribute("failMsg", "Try Again");
			response.sendRedirect("product.jsp");
		}
	}

	

}
