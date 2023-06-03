<%@ page import="com.website.Dao.ConnectionProvider" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.website.Model.Users" %>
 <%String first=request.getParameter("firstname");
 String last=request.getParameter("lastname");
 String emailn=request.getParameter("email");
 String passwordn=request.getParameter("password");
 
 try{
	 Connection conn=ConnectionProvider.viewconnection();
	 String sql="insert into custom(firstname,lastname,email,password) values(?,?,?,?)";
	 Users u=new Users();
	 u.setFirstname(first);
	 u.setLastname(last);
	 u.setEmail(emailn);
	 u.setPassword(passwordn);
	 
	 
	 PreparedStatement psmt=conn.prepareStatement(sql);
	 psmt.setString(1,u.getFirstname());
	 psmt.setString(2,u.getLastname());
	 psmt.setString(3,u.getEmail());
	 psmt.setString(4,u.getPassword());
	 
	    
	    
	
	 
	int result= psmt.executeUpdate();
	if(result>0)
	{
		response.sendRedirect("Message.jsp?msg=valid");
	}
	else
	{
		 response.sendRedirect("Message.jsp?msg=invalid");

	}
	 
	    psmt.close();
	    conn.close();
	    
	    
 }
 catch(Exception e)
 {
		 e.printStackTrace();
 }
 
 
 %>
