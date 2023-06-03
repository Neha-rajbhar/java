<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="com.website.Dao.ConnectionProvider" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.website.Model.Users" %>
 <%@ page import="com.website.Model.Cart" %>
 <%@ page import="com.website.Model.Produc" %>
 <%@page import="java.util.*"%>
    
    <%
Users auth = (Users) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
Connection con=ConnectionProvider.viewconnection();
List<Produc> produc = ConnectionProvider.getAllProducts();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>

<%@include file="/include/head.jsp"%>


	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/include/navbar.jsp"%>

<div class="container">
<%String email=(String)session.getAttribute("Email"); %>
		<div class="card-header my-3">All Products</div>
		<h2><a href=""><%out.println(email); %></a></h2>
		<div class="row">
			<%
			Users u=new Users();
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
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="AddToCartServlet?id=<%=p.getId()%>">Add to Cart</a> 
							<a class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
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
			<%@include file="/include/footer.jsp"%>
			
</body>
</html>