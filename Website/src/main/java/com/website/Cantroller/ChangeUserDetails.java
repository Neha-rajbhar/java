package com.website.Cantroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.website.Dao.ConnectionProvider;
import com.website.Model.Products;
import com.website.Model.Register;
import com.website.Model.Users;

/**
 * Servlet implementation class ChangeUserDetails
 */
@WebServlet("/ChangeUserDetails")
public class ChangeUserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			 response.setContentType("text/html");  
		      PrintWriter out=response.getWriter();  
		        
		      String uid=request.getParameter("id");  
		      int id=Integer.parseInt(uid);  
		      String name=request.getParameter("name");  
		      String email=request.getParameter("email");  
		      String phone=request.getParameter("phone");  
		        
		     Register r= new Register();
		     r.setId(id);
		     r.setName(name);
		     r.setEmail(email);
		     r.setPhone(phone);
		     
		     HttpSession session=request.getSession();
		        
		      int status=0;
		      status=ConnectionProvider.updateUser(r);  
		      if(status>0){
		    	  
		    	  session.setAttribute("sucessMsg", "Details changed sucessfully");
					response.sendRedirect("dashboard.jsp");
		    	  //out.println("Updated Successfully");
		    	 // request.getRequestDispatcher("ChangeUserDetails").include(request, response);

		         // response.sendRedirect("GetAllUser");  
		      }else{
		    	  
		    	 // session.setAttribute("failed", "Something went wrong try again");
					//response.sendRedirect("dashboard.jsp");
		          //out.println("Sorry! unable to update record");  
		      }  
		        
		      out.close();  	
		}

}
