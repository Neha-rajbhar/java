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
import com.website.Dao.ProductDaoImpl;
import com.website.Model.Cart;
import com.website.Model.Produc;



/**
 * Servlet implementation class AddCartUser
 */
@WebServlet("/AddCartUser")
public class AddCartUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int pid=Integer.parseInt(request.getParameter("pid"));
			int uid=Integer.parseInt(request.getParameter("uid"));
			
			ProductDaoImpl dao=new ProductDaoImpl(DbConfig.getconn());
			Produc p = dao.getProdtById(pid);
			
			Cart c= new Cart();
			c.setPid(pid);
			c.setUserid(uid);
			c.setP_name(p.getName());
			c.setCategory(p.getCategory());
			c.setPrice(p.getPrice());
			c.setTotal_price(p.getPrice());
			
			CartDaoImpl dao2=new CartDaoImpl(DbConfig.getconn());
			boolean f=dao2.addCart(c);
			
			HttpSession session=request.getSession();
			
			if(f) {
				session.setAttribute("Add", "Item added to cart");
				response.sendRedirect("Cart.jsp");
				System.out.println("add to cart");
			}
			else {
				
				session.setAttribute("Not", "Not Added to cart");
				response.sendRedirect("DisplayCartt.jsp");
				System.out.println("not add to cart");
			}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
	}

	

}
