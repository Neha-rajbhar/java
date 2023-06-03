package com.website.Cantroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.website.DB.DbConfig;
import com.website.Dao.UserDaoImpl1;
import com.website.Model.*;

/**
 * Servlet implementation class UserRegi
 */
@WebServlet("/UserRegi")
public class UserRegi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String phone=request.getParameter("phone");
		
		System.out.println(name+" "+email+" "+password+" "+phone);
		
		HttpSession session=request.getSession();
		
		Register r=new Register();
		r.setName(name);
		r.setEmail(email);
		r.setPassword(password);
		r.setPhone(phone);
		
		UserDaoImpl1 dao=new UserDaoImpl1(DbConfig.getconn()) ;
			boolean f=dao.userRegister(r);
			if(f) {
				System.out.println("register Success");
				session.setAttribute("sucessMsg", "Registration Sucess");
				response.sendRedirect("new_register.jsp");
		}
			else
			{
				System.out.println("try again");
				session.setAttribute("failMsg", "Try Again");
				response.sendRedirect("new_register.jsp");
			}
		
		
		
	}
	}


