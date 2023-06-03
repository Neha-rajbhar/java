<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
        <%@ page import="com.website.DB.DbConfig" %>
        <%@page import="com.website.Dao.*" %>
 <%@ page import="java.sql.*" %>
 
 <%@page import="java.util.*"%>
 <%@page import="com.website.Model.*" %>
 <%@page  isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
	<%@include file="new.jsp" %>
	
	
	<%


ProductDaoImpl dao=new ProductDaoImpl(DbConfig.getconn()) ;
List<Produc> produc = dao.getAllProducts();

%>

<c:if test="${not empty sucessMsg }">
<p class="text-center text-sucess">${sucessMsg}</p>
<c:remove var="sucessMsg" scope="session"/>
</c:if>
<c:if test="${not empty failMsg}">
<p class="text-center text-sucess">${failMsg}</p>
<c:remove var="failMsg" scope="session"/>
</c:if>
<br>
<br>
<br>
	<div class="container-fluid">

		<br>
		<br>
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th scope="col">Product Id</th>
					<th scope="col">Product Name</th>
					<th scope="col">Category</th>
					<th scope="col">Preview</th>
					<th scope="col">Price</th>
					<th scope="col">Status</th>
					<th scope="col">Delete</th>
					<th scope="col">Update</th>
				</tr>
			</thead>
			<tbody>
				<%
			
			if (!produc.isEmpty()) {
				for (Produc p : produc) {
			%>
				<tr>
					<th><%=p.getId() %></th>
					<td><%=p.getName() %></td>
					<td><%=p.getCategory() %></td>
					<td><img src="getImage?filename=<%=p.getImage() %>" height="100px" width="100px"></td>
					<td><%=p.getPrice()%></td>
					
					<td><%=p.getActive()%></td>



					
					<td><a href="Delete?id=<%=p.getId()%>" class="btn btn-danger">Delete</a></td>
					<td><a href="New_Edit?id=<%=p.getId()%>"
						class="btn btn-warning">Update</a></td>



				</tr>
				<%
			}
			} else {
			out.println("There is no proucts");
			}
			%>

			</tbody>
		</table>
	</div>



	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

</body>
</html>