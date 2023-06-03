<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.website.Dao.ConnectionProvider" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.website.Model.Products" %>
 <%@ page import="com.website.Model.*" %>
 
 <%
 int product_id=Integer.parseInt(request.getParameter("id"));
 %>
 <% 
 
 String email=request.getParameter("email");
 
 


 int quantity=1;
 double product_total=0;
 double product_price=0;
 double cart_total=0;
 Users u = new Users();
 add a = new add();
 int z=0;
 try{
     Products p = new Products();
   
	 Connection conn=ConnectionProvider.viewconnection();
	 String query="select * from products where id='"+a.getProduct_id()+"'";
	 Statement st=conn.createStatement();
	 ResultSet rs=st.executeQuery(query);
	 while(rs.next()){
		 product_price=rs.getDouble(4);
		 product_total=product_price;
		 
		 
	 }
	 ResultSet rs1=st.executeQuery("select * from addcart where product_id='"+a.getProduct_id()+"' and email='"+u.getEmail()+"'");
	 while(rs1.next()){
		 cart_total=rs1.getInt(5);
		 cart_total= cart_total+product_total;
		 quantity=rs1.getInt(3);
		 quantity=quantity+1;
		 z=1;
	 }
	 if(z==1)
	 {
		 st.executeUpdate("update addcart set total='"+cart_total+"' , quantity='"+a.getQuantity()+"' where product_id='"+a.getProduct_id()+"' and email='"+u.getEmail()+"'");
	     response.sendRedirect("userhomeAddToCart.jsp?msg=exist"); 
	 }
	 if(z==0)
	 {
		 
		 a.setEmail(email);
		 a.setProduct_id(product_id);
		 a.setQuantity(quantity);
		 a.setPrice(product_price);
		 a.setTotal(product_total);
		 
		 PreparedStatement psmt=conn.prepareStatement("insert into addcart (email,product_id,quantity,price,total) values(?,?,?,?,?)");
         psmt.setString(1, u.getEmail());
         psmt.setInt(2, a.getProduct_id());
	     psmt.setInt(3, a.getQuantity());
	     psmt.setDouble(4, a.getPrice());
	     psmt.setDouble(5, a.getTotal());
	     psmt.executeUpdate();
	     response.sendRedirect("userhomeAddToCart.jsp?msg=added"); 
	 }
 }
 catch(Exception e)
 {
	 e.printStackTrace();
	 response.sendRedirect("userhomeAddToCart.jsp?msg=invalid"); 
 }
 
 
 %>