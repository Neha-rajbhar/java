
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
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	
	<style>
	body{
	
	background-color:#f0f1f2;
	
	}
	
	
	</style>
</head>
<body>

<br>
<br>
<br>



	<c:if test="${empty userObj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	

			
	<c:if test="${not empty yes }">
		<p class="text-center alert alert-success " role="alert">${yes}</p>
		<c:remove var="yes" scope="session" />
	</c:if>
	<c:if test="${not empty No}">
		<p class="text-center alert alert-danger " role="alert">${No}</p>
		<c:remove var="No" scope="session" />
	</c:if>
	
	<c:if test="${not empty ooo}">
		<p class="text-center alert alert-danger " role="alert">${ooo}</p>
		<c:remove var="ooo" scope="session" />
	</c:if>
	
	
	<%
	Register r = (Register) session.getAttribute("userObj");

	CartDaoImpl dao = new CartDaoImpl(DbConfig.getconn());
	List<Cart> cart = dao.getCartByUser(r.getId());
	%>
	<br>
<div class="container">
<div class="row p-2">
<div class="col-md-6">

<div class="card bg-white">
<div class="card-body">
<h3 class="text-center text-success font-weight-bold">Your Selected item</h3>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Category</th>
      <th scope="col">Price</th>
      <th scope="col">Remove</th>
    </tr>
  </thead>
  <tbody>
			<%
			double totalprice = 0.00;

			for (Cart c : cart) {
				totalprice = c.getTotal_price();
			%>
			<tr>
				<th><%=c.getP_name()%></th>
				<td><%=c.getCategory()%></td>

				<td><%=c.getPrice()%></td>
				<td><a class="btn btn-sm btn-danger"
					href="removeProduct?pid=<%=c.getPid()%>&&uid=<%=c.getUserid()%>">Remove</a>
			</tr>
			<%
			}
			%>
			<th>Total Price</th>
			<td><%=totalprice%> <a href="Checkout.jsp">Check Out</a>
		</tbody>
</table>
</div>
</div>
</div>

<div class="col-md-6">

<div class="card">
<div class="card-body">
<h3 class="text-center text-success">Details for Order</h3>
<form action="OrderServ" method="post">
<div class="form-row">
<input type="hidden" name="id" value="${userObj.id}">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Name</label>
      <input type="text" class="form-control" name="name" id="inputEmail4" placeholder="Name" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Email</label>
      <input type="email" class="form-control" name="email" id="inputPassword4" placeholder="Enter Email" required>
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Phone</label>
      <input type="text" class="form-control" name="phone" id="inputEmail4" placeholder="Enter phone no" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Address</label>
      <input type="text" class="form-control" name="address" id="inputPassword4" placeholder="Enter Address" required>
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">City</label>
      <input type="text" class="form-control" id="inputEmail4" name="city" placeholder="Enter City" required>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">State</label>
      <input type="text" class="form-control" name="state" id="inputPassword4" placeholder="Enter State" required>
    </div>
  </div>
<div class="form-group">
<label>Payment</label>
<select class="form-control" name="payment">

<option value="noSelect">--select--</option>
<option value="COD">Cash on Delivery</option>

</select>

</div>

<div class="text-center">
<button class="btn btn-warning">Order</button>
<a class="btn btn-success" href="welcome.jsp">Continue Sopping</a>

</div>
</form>

</div>
</div>
</div>
</div>
</div>
	
	<!-- <table class="table">
		<thead class="thead-light">
			<tr>

				<th scope="col">Product Name</th>
				<th scope="col">Category</th>

				<th scope="col">Price</th>
				<th>Remove</th>

			</tr>
		</thead>
		<tbody>
			
		</tbody>
	</table>

	<div class="login-box">
		
		<form action="OrderServ" method="post">
			<h1>Check Out</h1>

			<input type="hidden" name="id" value="${userObj.id}">
			<p>
				Name: <input type="text" name="name" id="fnamee" required>
			</p>

			<p>
				Email ID: <input type="email" name="email" id="fnamee" required>
			</p>
			
			<p>
				phone: <input type="number" name="phone" id="fnamee" required>
			</p>
			<p>
				Address: <textarea   name="address" id="description"></textarea>
			</p>
			<p>
				City: <input type="text" name="city" id="fnamee" required>
			</p>
			<p>
				State: <input type="text" name="state" id="fnamee" required>
			</p>
			
			<div class="form-group">
			<label>Payment mode</label>
			<select class="form-control" name="payment" width="15px">
			<option value="noSelect">---Select One--</option>
			<option value="COD">Cash On Delivery</option>
			
			
			</select>
			</div>
			
			<input type="submit" value="Submit"> <a href="login.jsp">Login</a>
		</form>
	</div>
	 -->














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