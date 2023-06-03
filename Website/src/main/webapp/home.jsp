<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
String email=(String)session.getAttribute("Email");
String id=(String)session.getAttribute("Id");
%>
<h1>welcome <%out.print(email); %></h1>
<a href="changep.jsp">Change Password</a>
 <h2><a href="logout.jsp">Logout</a></h2>
 <a href="AddNewProduct.jsp">Add New Product</a>
 <a href="AllDisplayCart">All Products</a>
 <a href="GetAllUser">All Users</a>
 <a href="changep.jsp">Change Password</a>
 
</body>
</html>