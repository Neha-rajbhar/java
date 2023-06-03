package com.website.Cantroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.website.DB.DbConfig;
import com.website.Dao.CartDaoImpl;



/**
 * Servlet implementation class removeProduct
 */
@WebServlet("/removeProduct")
public class removeProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pid=Integer.parseInt(request.getParameter("pid"));
		int uid=Integer.parseInt(request.getParameter("uid"));
		
		 HttpSession session=request.getSession();
   	
   	 CartDaoImpl dao=new CartDaoImpl(DbConfig.getconn());
   	int status= dao.deleteCart(pid,uid);
		
   	if(status>0) {
   		
   		//System.out.println("register Success");
			session.setAttribute("sucessMsg", "delete Sucess");
			response.sendRedirect("Cart.jsp");
	}
		else
		{
			//System.out.println("try again");
			session.setAttribute("failMsg", "Try Again");
			response.sendRedirect("Cart.jsp");
		}
	}

	
}
