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

<br>
<br>
<br>
<br>




<c:if test="${empty userObj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	
	
<c:if test="${not empty sucessMsg }">
<p class="text-center text-sucess">${sucessMsg}</p>
<c:remove var="sucessMsg" scope="session"/>
</c:if>
<c:if test="${not empty failMsg}">
<p class="text-center text-sucess">${failMsg}</p>
<c:remove var="failMsg" scope="session"/>
</c:if>
	<div class="container-fluid">

		
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th scope="col">Order Id</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Phone No</th>
					<th scope="col">Address</th>
					<th scope="col">City</th>
					<th scope="col">State</th>
					
					<th scope="col">Product Name</th>
					
					<th scope="col">Category</th>
					
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
					
				</tr>
			</thead>
			<tbody>
			
			<%

Register r=(Register)session.getAttribute("userObj");
OrderDaoImpl dao=new OrderDaoImpl(DbConfig.getconn()) ;
List<OrderModel> olist = dao.getAllOrder();
for(OrderModel o:olist)
{
%>


				
				<tr>
					<th scope="row"><%=o.getOrder_id() %></th>
					<td scope="row"><%=o.getUser_name()%></td>
					<td scope="row"><%=o.getEmail()%></td>
					<td scope="row"><%=o.getPhone()%></td>
					<td scope="row"><%=o.getAddress()%></td>
					<td scope="row"><%=o.getCity()%></td>
					<td scope="row"><%=o.getState()%></td>
					<td scope="row"><%=o.getP_name()%></td>
					<td scope="row"><%=o.getCategory() %>
					<td scope="row"><%=o.getPrice()%></td>
					<td scope="row"><%=o.getPayment()%></td>

               </tr>
<%
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