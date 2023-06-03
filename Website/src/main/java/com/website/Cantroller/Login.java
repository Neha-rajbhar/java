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
import com.website.Model.Register;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		UserDaoImpl1 dao=new UserDaoImpl1(DbConfig.getconn()) ;
		
		HttpSession session=request.getSession();
		
		if("Admin@gmail.com".equals(email) && "a".equals(password)) {
			//Register r = new Register();
			Register r=dao.login(email, password);
			session.setAttribute("userObj", r);
			System.out.println(r);
			response.sendRedirect("homeAdmin.jsp");
		}else
		{
			Register r=dao.login(email, password);
			if(r != null) {
				session.setAttribute("userObj", r);
				session.setAttribute("emails", email);
				response.sendRedirect("dashboard.jsp");
				System.out.println(r+" user");
				System.out.println(email);
			}
			else
			{
				session.setAttribute("failed", "Email and Password MismATCH");
				response.sendRedirect("login.jsp");
			}
			
		}
	}

}
