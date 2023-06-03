package com.website.Cantroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.website.Dao.ConnectionProvider;
import com.website.Model.Products;
import com.website.Model.Users;

/**
 * Servlet implementation class GetAllUser
 */
@WebServlet("/GetAllUser")
public class GetAllUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.println("<h1>User's List</h1>");
		// request.getRequestDispatcher("Table.jsp").include(request, response);
		List<Users> list = ConnectionProvider.getUsers();

		out.print("<table border='1' width='100%'");
		out.print(
				"<tr><th>Id</th><th>Firstname</th><th>Lastname</th><th>Email</th><th>Password</th><th>Edit</th><th>Delete</th></tr>");
		for (Users u : list) {
			out.print("<tr><td>" + u.getId() + "</td><td>" + u.getFirstname() + "</td><td>" + u.getLastname() + "</td> <td>"
					+ u.getEmail() + "</td><td>" + u.getPassword() + "</td><td><a href='UserChangeDetails?id=" + u.getId()+"'>Edit</a></td><td><a href='DeleteUser?id=" + u.getId() + "'>Delete</a></td></tr>");
		}
		out.print("</table>");

		out.close();

	}

	

}
