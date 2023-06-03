<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">E-Commerce Cart</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="Cart.jsp">Cart <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
				<li class="nav-item"><a href="AddNewProduct.jsp" class="nav-link">Add New Product</a></li>
				<li class="nav-item"><a href="GetAllUser" class="nav-link">All Users</a></li>
                    <li class="nav-item"><a href="userhomeAddToCart.jsp" class="nav-link">Add To Cart</a></li>
			</ul>
		</div>
	</div>
</nav>