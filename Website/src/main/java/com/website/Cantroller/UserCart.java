package com.website.Cantroller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.website.Dao.AddToCartDao;
import com.website.Dao.ConnectionProvider;
import com.website.Model.AddCart;
import com.website.Model.Products;
import com.website.Model.Users;

/**
 * Servlet implementation class UserCart
 */
@WebServlet("/UserCart")
public class UserCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int ppid=Integer.parseInt(request.getParameter("pid"));
			//int uid=Integer.parseInt(request.getParameter("uid"));
			//String sid=request.getParameter("id");  
		      //int id=Integer.parseInt(sid);  
		      Connection con = ConnectionProvider.viewconnection();
		      Products p=new Products();
			//Users u = new Users();
			  //u=ConnectionProvider.getUserById(id);
		     // ConnectionProvider cp= new ConnectionProvider();
			  p=ConnectionProvider.getEmployeeById(ppid);  
			  String namee=request.getParameter("namep");
				String category=request.getParameter("category");
		        Double price=Double.parseDouble(request.getParameter("price"));
		        String active=request.getParameter("active");
			  
			AddCart ac= new AddCart();
			ac.setPid(ppid);
			//ac.setUid(uid);
			ac.setNamec(namee);
			ac.setCategoryc(category);
			ac.setPricec(price);
			ac.setTotal(price);
			
			
			int result = AddToCartDao.addDetailToCart();
			if(result>0) {
				System.out.println("Added To Cart");
			}
			else
			{
				System.out.println("Not Added To Cart");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e);
		}
	}

	

}
