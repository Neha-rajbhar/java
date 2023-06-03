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
    
     <%
Register auth = (Register) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}

ProductDaoImpl dao=new ProductDaoImpl(DbConfig.getconn()) ;
List<Produc> produc = dao.getAllProducts();

%>
<!DOCTYPE html>
<html>
<head>




	
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<title>Insert title here</title>
<style>
h3{
text-align: center;
padding: 0 0 20px 0;
border-bottom: 1px solid silver;
}
h2{
text-align: center;
padding: 0 0 20px 0;
}


</style>
</head>
<body>

<%
Register r=(Register)session.getAttribute("userObj");
%>


<c:if test="${not empty Add }">
<p class="text-center text-sucess">${Add}</p>
<c:remove var="Add" scope="session"/>
</c:if>
<c:if test="${not empty Not }">
<p class="text-center text-sucess">${Not}</p>
<c:remove var="Not" scope="session"/>
</c:if>

<div class="container">
<br>
<br>
<br>
<br>

		<h2>All Products</h2>
		<h3><c:if test="${not empty userObj }">

<h3>${userObj.email}</h3>

</c:if></h3>
		<div class="row">
			<%
			
			if (!produc.isEmpty()) {
				for (Produc p : produc) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100">
					<img src="getImage?filename=<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price">Price: $<%=p.getPrice() %></h6>
						<h6 class="weight">weight: $<%=p.getWeight() %></h6>
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
						
						<%
						if(r==null)
						{
						%>
							<a class="btn btn-dark" href="login.jsp">Add to Cart</a> 
							
						<%
						}
						else
						{
						
					
					%>	
					<a class="btn btn-primary" href="AddCartUser?pid=<%=p.getId()%>&&uid=<%=r.getId()%>">Add To Cart</a>
					<%} %>
						
						
						
							<a class="btn btn-success" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			} else {
			out.println("There is no proucts");
			}
			%>

		</div>
	</div>
			
			
</body>
</html>