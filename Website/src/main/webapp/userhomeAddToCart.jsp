<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.website.Dao.ConnectionProvider" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.website.Model.Products" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<thead>
<tr>
<th>Id</th>
<th>Name</th>
<th>Category</th>
<th>Price</th>
<th>Image</th>
<th>Add To Cart</th>
<form action="SearchByProduct.jsp" method="post">
 <input type="text" name="search" placeholder="Search">
 <input type="submit" value="Search">
 
</tr>
</thead>
<tbody>
<%
Products p = new Products();
try{
	 
		 Connection conn=ConnectionProvider.viewconnection();
		 String sql="select * from products where active= 'Yes'";
		 Statement st=conn.createStatement();
		 ResultSet rs=st.executeQuery(sql);
		 while(rs.next())
		 {

%>
<tr>
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getDouble(4) %></td>
<td><%=rs.getBlob(6) %></td>
<td><a href="AddToCartServlet?id=<%=p.getId() %>">Add To Cart</a></td>
</tr>
<%
}
}
catch(Exception e){
	e.printStackTrace();
}

%>


</tbody>




</table>
</body>
</html>