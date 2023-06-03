package com.website.Cantroller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.website.DB.DbConfig;
import com.website.Dao.CartDaoImpl;
import com.website.Dao.OrderDaoImpl;
import com.website.Model.Cart;
import com.website.Model.OrderModel;



/**
 * Servlet implementation class OrderServ
 */
@WebServlet("/OrderServ")
public class OrderServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String paymentType = request.getParameter("payment");
		// String full=address+","+city+","+state;

		// System.out.println(name+" "+email+" "+phone+" "+address+" "+city+" "+state+"
		// "+paymentType);

		CartDaoImpl dao = new CartDaoImpl(DbConfig.getconn());
		List<Cart> clist = dao.getCartByUser(id);
		/*
		 * for(Cart c:clist) { System.out.println(c.getP_name()); }
		 */

		
		 if(clist.isEmpty()) {
			 session.setAttribute("item", "Add items in cart");
				//response.sendRedirect("login.jsp");
			  response.sendRedirect("Cart.jsp");
			 
		 }
		 else 
		 {
			 OrderDaoImpl dao2=new OrderDaoImpl(DbConfig.getconn()); 
			    ArrayList<OrderModel> orderlist=new ArrayList<OrderModel>();
			  Random r=new Random();
			  for(Cart c:clist)
			  { 
				  OrderModel o = new OrderModel();
			  o.setOrder_id("ORDER-00"+r.nextInt());
			  o.setUser_name(name);
			  o.setEmail(email);
			  o.setPhone(phone);
			  o.setAddress(address);
			  o.setCity(city);
			  o.setState(state);
			  o.setP_name(c.getP_name()); 
			  o.setCategory(c.getCategory());
			  o.setPrice(c.getPrice());
			  o.setPayment(paymentType);
			  orderlist.add(o);
			 
			  }
			  
			 for(Cart c:clist) {
		  System.out.println(c.getP_name()+" "+c.getCategory()+" "+c.getPrice()+" "+c.
		  getTotal_price()); }
			 
			  
			  if("noSelect".equals(paymentType)) { 
				  session.setAttribute("ooo", "payment method is not selected");
					//response.sendRedirect("login.jsp");
				  response.sendRedirect("Cart.jsp");
				  }
			  else 
			  { boolean f=dao2.saveOrder(orderlist); 
			  if(f) {
				  session.setAttribute("yes", "Order Sucsess");
					response.sendRedirect("order_sucess.jsp");
			  System.out.println("order Sucess"); 
			  } else {
				  session.setAttribute("No", "your order is not placed");
					response.sendRedirect("login.jsp");
			  System.out.println("Not Sucess");
			  } }
		 }
		
		
		
		
	}

}
