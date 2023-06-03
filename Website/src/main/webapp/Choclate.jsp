<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
        <%@ page import="com.website.DB.DbConfig" %>
        <%@page import="com.website.Dao.*" %>
 <%@ page import="java.sql.*" %>
 
 <%@page import="java.util.*"%>
 <%@page import="com.website.Model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.btn-primary{
height:40px; 
width:100px;
padding:0;
margin-right: 5px;
}

.btn-success{
height:40px; 
padding:0;
margin-right: 5px;
}

</style>
</head>
<body>
<%@include file="/include/MainNavbar.jsp"%>


<%
Register r=(Register)session.getAttribute("userObj");
%>

<div class="container-fluid back-img">
	<h2 class="text-center text-white p-6">Cake order</h2>
	
	
	</div>
	<div class="container">
	<h3>Choclate Cake</h3>
	<div class="row">
	<%
	ProductDaoImpl dao=new ProductDaoImpl(DbConfig.getconn()) ;
	List<Produc> list = dao.getChoclate();
	for(Produc p:list)
	{
	%>
	
	<div class="col-md-3 my-3">
				<div class="card w-100">
					<img src="getImage?filename=<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName()%></h5>
						<h6 class="price">Price:<%=p.getPrice() %></h6>
						<h6 class="weight">weight:<%=p.getWeight() %></h6>
						<h6 class="category">Category:<%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
					  <a class="btn btn-primary" href="Choclate.jsp">View</a>
					  
					  <%
						if(r==null)
						{
						%>
							<a class="btn btn-success" href="login.jsp">Add Cart</a> 
							
						<%
						}
						else
						{
						
					
					%>	
					<a class="btn btn-primary" href="AddCartUser?pid=<%=p.getId()%>&&uid=<%=r.getId()%>">Add To Cart</a>
					<%} %>
						
				   
						</div>
					</div>
				</div>
			</div>
		<%
	}
		%>	
			
	
	
			
	
	</div>

</div>
</div>

</div>
</body>
</html>