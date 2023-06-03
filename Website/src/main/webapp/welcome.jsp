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
	<%@include file="/include/MainHeader.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.back-img{
background: url("b2.jpg");
height: 50vh;
width: 100%;
background-size: cover;
background-repeat: no-repeat;
background-position: center;

}
.btn .btn-success{
height:50px;


}
h3{
color:black;
font-weight: bold;
font-family: sans-serif;
font-size: 16px;
text-align: center;
}


</style>
</head>
<body>
	<%@include file="/include/MainNavbar.jsp"%>
	
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
					  <a class="btn btn-danger" href="Choclate.jsp">View Details</a>
				   <a class="btn btn-success" href="Cart.jsp">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
		<%
	}
		%>	
			
	
	
			
	</div>
	<div class="text-center mt-1">
	<a href="DisplayCartt.jsp" class="btn btn-danger btn-sm text-white m-3">View All</a>
	
	</div>
	</div>
	
	<div class="container">
	<h3>Pineapple Cake</h3>
	<div class="row">
	<%
	
	List<Produc> plist = dao.getPineapple();
	for(Produc p: plist)
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
					  <a class="btn btn-danger" href="Choclate.jsp">View Details</a>
				   <a class="btn btn-success" href="Cart.jsp">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
		<%
	}
		%>	
			
			
			
	
	</div>
	<div class="text-center mt-1">
	<a href="Choclate.jsp" class="btn btn-danger btn-sm text-white m-3">View All</a>
	
	</div>
	</div>
	
	<%@include file="footer.jsp" %>
	<!-- slider  section start 
    <section class="home-slider owl-carousel js-fullheight">
        <div class="slider-item js-fullheight" style="background-image: url(imagess/bg_1.jpg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row slider-text js-fullheight justify-content-center align-items-center"
                    data-scrollax-parent="true">

                    <div class="col-md-12 col-sm-12 text-center ftco-animate">
                        <span class="subheading">Cake</span>
                        <h1 class="mb-4">Birthday Cake</h1>
                    </div>

                </div>
            </div>
        </div>

        <div class="slider-item js-fullheight" style="background-image: url(imagess/bg_2.jpg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row slider-text js-fullheight justify-content-center align-items-center"
                    data-scrollax-parent="true">

                    <div class="col-md-12 col-sm-12 text-center ftco-animate">
                        <span class="subheading">Cake</span>
                        <h1 class="mb-4">Wedding Cake</h1>
                    </div>

                </div>
            </div>
        </div>

        <div class="slider-item js-fullheight" style="background-image: url(imagess/bg_3.jpg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row slider-text js-fullheight justify-content-center align-items-center"
                    data-scrollax-parent="true">

                    <div class="col-md-12 col-sm-12 text-center ftco-animate">
                        <span class="subheading">Cake</span>
                        <h1 class="mb-4">Beleniss Special Dessert</h1>
                    </div>

                </div>
            </div>
        </div>

        <div class="slider-item js-fullheight" style="background-image: url(imagess/bg_4.jpg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="row slider-text js-fullheight justify-content-center align-items-center"
                    data-scrollax-parent="true">

                    <div class="col-md-12 col-sm-12 text-center ftco-animate">
                        <span class="subheading">Cake</span>
                        <h1 class="mb-4">Beleniss Special Pastries</h1>
                    </div>

                </div>
            </div>
        </div>
    </section>
     slider  section end  
     featured section starts  
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="featured">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="featured-menus ftco-animate">
                                    <div class="menu-img img" style="background-image: url(imagess/b1.jpg);"></div>
                                    <div class="text text-center">
                                        <h3>Desert</h3>
                                        <p><span>Chocolate</span>,
                                            <span>Sprinkles</span>,<span>Strawberry</span>,<span>Waffers</span></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="featured-menus ftco-animate">
                                    <div class="menu-img img" style="background-image: url(imagess/b2.jpg);"></div>
                                    <div class="text text-center">
                                        <h3>Chocolate Cake</h3>
                                        <p><span>Chocolate</span>,
                                            <span>Sprinkles</span>,<span>Strawberry</span>,<span>Waffers</span></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="featured-menus ftco-animate">
                                    <div class="menu-img img" style="background-image: url(imagess/b3.jpg);"></div>
                                    <div class="text text-center">
                                        <h3>Pastry</h3>
                                        <p><span>Chocolate</span>,
                                            <span>Sprinkles</span>,<span>Strawberry</span>,<span>Waffers</span></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="featured-menus ftco-animate">
                                    <div class="menu-img img" style="background-image: url(imagess/b4.jpg);"></div>
                                    <div class="text text-center">
                                        <h3>Donuts</h3>
                                        <p><span>Chocolate</span>,
                                            <span>Sprinkles</span>,<span>Strawberry</span>,<span>Waffers</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    

    <section class="ftco-wrap-about" id="about">
        <div class="intro">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="intro_content">
                            <div class="intro_subtitle page_subtitle">About Us</div>
                            <div class="intro_title">
                                <h2>Beautiful Story</h2>
                            </div>
                            <div class="intro_text">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum, voluptatum, earum
                                    corrupti molestiae id, alias quaerat qui expedita voluptatibus sed magnam aperiam
                                    quos! Illum quo nobis repellat possimus alias reiciendis quas pariatur, labore
                                    maxime blanditiis. Nam perferendis veritatis necessitatibus? Animi distinctio at et
                                    assumenda doloremque possimus unde doloribus aliquid nobis.</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-4 col-md-6 intro_col">
                                <div class="intro_image"><img src="imagess/intro_1.jpg" alt="intro"></div>
                            </div>
                            <div class="col-xl-4 col-md-6 intro_col">
                                <div class="intro_image"><img src="imagess/intro_2.jpg" alt="intro"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-counter img ftco-no-pt" id="section-counter">
        <div class="container">
            <div class="row d-md-flex">
                <div class="col-md-9">
                    <div class="row d-md-flex align-items-center">
                        <div
                            class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18">
                                <div class="text">
                                    <strong class="number" data-number="11">0</strong>
                                    <span>Years of Experience</span>
                                </div>
                            </div>
                        </div>
                        <div
                            class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18">
                                <div class="text">
                                    <strong class="number" data-number="100">0</strong>
                                    <span>Cakes/Variety</span>
                                </div>
                            </div>
                        </div>
                        <div
                            class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18">
                                <div class="text">
                                    <strong class="number" data-number="30">0</strong>
                                    <span>Staffs</span>
                                </div>
                            </div>
                        </div>
                        <div
                            class="col-md-6 col-lg-3 mb-4 mb-lg-0 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18">
                                <div class="text">
                                    <strong class="number" data-number="1500">0</strong>
                                    <span>Happy Customers</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 text-center text-md-left">
                    <p>The amount of love gained by you people is just pure and we are keep on improving our services
                        and tastes.</p>
                </div>
            </div>
        </div>
    </section>


    
    <section class="ftco-section bg-light" id="gallery">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title normal-title">
                        <div class="row justify-content-center mb-5 pb-2">
                            <div class="col-md-12 text-center heading-section ftco-animate">
                                <span class="subheading">Gallery</span>
                                <h2 class="mb-4">Our Hot Picked Cakes</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-6 p-0">
                    <div class="gallery__pic">
                        <img src="imagess/dish1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-6 p-0">
                    <div class="gallery__pic">
                        <img src="imagess/dish2.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-6 p-0">
                    <div class="gallery__pic">
                        <img src="imagess/dish3.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-6 p-0">
                    <div class="gallery__pic">
                        <img src="imagess/dish4.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-6 p-0">
                    <div class="gallery__pic">
                        <img src="imagess/dish5.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-6 p-0">
                    <div class="gallery__pic">
                        <img src="imagess/dish6.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-6 p-0">
                    <div class="gallery__pic">
                        <img src="imagess/dish7.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-6 p-0">
                    <div class="gallery__pic">
                        <img src="imagess/dish8.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>


    </section>
   
    <section class="ftco-section" id="menu">
        <div class="container-fluid px-4">
            <div class="row justify-content-center mb-5 pb-2">
                <div class="col-md-7 text-center heading-section ftco-animate">
                    <span class="subheading">Specialities</span>
                    <h2 class="mb-4">Our Menu</h2>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 col-lg-4 menu-wrap">
                    <div class="heading-menu text-center ftco-animate">
                        <h3>Cakes</h3>
                    </div>
                    <div class="menus d-flex ftco-animate">
                        <div class="menu-img img" style="background-image: url(imagess/menu1.jpg);"></div>
                        <div class="text">
                            <div class="d-flex">
                                <div class="one-half">
                                    <h3>Strawberry</h3>
                                </div>
                                <div class="one-forth">
                                    <span class="price">₹400</span>
                                </div>
                            </div>
                            <p><span>Strawberry</span>, <span>Chocolate</span>, <span>Berry</span>, <span>Cream</span>
                            </p>
                        </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                        <div class="menu-img img" style="background-image: url(imagess/menu2.jpg);"></div>
                        <div class="text">
                            <div class="d-flex">
                                <div class="one-half">
                                    <h3>Chocolate Cake</h3>
                                </div>
                                <div class="one-forth">
                                    <span class="price">₹399</span>
                                </div>
                            </div>
                            <p><span>Strawberry</span>, <span>Chocolate</span>, <span>Berry</span>, <span>Cream</span>
                            </p>
                        </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                        <div class="menu-img img" style="background-image: url(imagess/menu3.jpg);"></div>
                        <div class="text">
                            <div class="d-flex">
                                <div class="one-half">
                                    <h3>Red Valvet</h3>
                                </div>
                                <div class="one-forth">
                                    <span class="price">₹500</span>
                                </div>
                            </div>
                            <p><span>Strawberry</span>, <span>Chocolate</span>, <span>Berry</span>, <span>Cream</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 menu-wrap">
                    <div class="heading-menu text-center ftco-animate">
                        <h3>Wedding Cake</h3>
                    </div>
                    <div class="menus d-flex ftco-animate">
                        <div class="menu-img img" style="background-image: url(imagess/menu4.jpg);"></div>
                        <div class="text">
                            <div class="d-flex">
                                <div class="one-half">
                                    <h3>Pineapple</h3>
                                </div>
                                <div class="one-forth">
                                    <span class="price">₹450</span>
                                </div>
                            </div>
                            <p><span>Strawberry</span>, <span>Chocolate</span>, <span>Berry</span>, <span>Cream</span>
                            </p>
                        </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                        <div class="menu-img img" style="background-image: url(imagess/menu5.jpg);"></div>
                        <div class="text">
                            <div class="d-flex">
                                <div class="one-half">
                                    <h3>Belgium Cake</h3>
                                </div>
                                <div class="one-forth">
                                    <span class="price">₹400</span>
                                </div>
                            </div>
                            <p><span>Strawberry</span>, <span>Chocolate</span>, <span>Berry</span>, <span>Cream</span>
                            </p>
                        </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                        <div class="menu-img img" style="background-image: url(imagess/menu6.jpg);"></div>
                        <div class="text">
                            <div class="d-flex">
                                <div class="one-half">
                                    <h3>Cookies</h3>
                                </div>
                                <div class="one-forth">
                                    <span class="price">₹400</span>
                                </div>
                            </div>
                            <p><span>Strawberry</span>, <span>Chocolate</span>, <span>Berry</span>, <span>Cream</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 menu-wrap">
                    <div class="heading-menu text-center ftco-animate">
                        <h3>Pastries</h3>
                    </div>
                    <div class="menus d-flex ftco-animate">
                        <div class="menu-img img" style="background-image: url(imagess/menu7.jpg);"></div>
                        <div class="text">
                            <div class="d-flex">
                                <div class="one-half">
                                    <h3>Blackberries</h3>
                                </div>
                                <div class="one-forth">
                                    <span class="price">₹400</span>
                                </div>
                            </div>
                            <p><span>Strawberry</span>, <span>Chocolate</span>, <span>Berry</span>, <span>Cream</span>
                            </p>
                        </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                        <div class="menu-img img" style="background-image: url(imagess/menu8.jpg);"></div>
                        <div class="text">
                            <div class="d-flex">
                                <div class="one-half">
                                    <h3>Orange</h3>
                                </div>
                                <div class="one-forth">
                                    <span class="price">₹400</span>
                                </div>
                            </div>
                            <p><span>Strawberry</span>, <span>Chocolate</span>, <span>Berry</span>, <span>Cream</span>
                            </p>
                        </div>
                    </div>
                    <div class="menus d-flex ftco-animate">
                        <div class="menu-img img" style="background-image: url(imagess/menu9.jpg);"></div>
                        <div class="text">
                            <div class="d-flex">
                                <div class="one-half">
                                    <h3>Mango</h3>
                                </div>
                                <div class="one-forth">
                                    <span class="price">₹400</span>
                                </div>
                            </div>
                            <p><span>Strawberry</span>, <span>Chocolate</span>, <span>Berry</span>, <span>Cream</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section testimony-section img" id="testimonial"
        style="background-image: url(images/bg_1.jpg);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                    <span class="subheading">Testimonials</span>
                    <h2 class="mb-3">Happy Clients</h2>
                </div>
            </div>
            <div class="row ftco-animate">
                <div class="col-md-12">
                    <div class="carousel-testimony owl-carousel ftco-owl">
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="fa fa-quote-left"></span>
                                </div>
                                <div class="text">
                                    <p class="mb-4">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa illo corrupti
                                        ratione voluptatibus recusandae dolore.
                                    </p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(imagess/person_1.jpg);"></div>
                                        <div class="pl-3">
                                            <p class="name">Nilay Hirpara</p>
                                            <span class="position">Owner</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="fa fa-quote-left"></span>
                                </div>
                                <div class="text">
                                    <p class="mb-4">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa illo corrupti
                                        ratione voluptatibus recusandae dolore.
                                    </p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(imagess/person_2.jpg);"></div>
                                        <div class="pl-3">
                                            <p class="name">Nilay Hirpara</p>
                                            <span class="position">Owner</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="fa fa-quote-left"></span>
                                </div>
                                <div class="text">
                                    <p class="mb-4">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa illo corrupti
                                        ratione voluptatibus recusandae dolore.
                                    </p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(imagess/person_3.jpg);"></div>
                                        <div class="pl-3">
                                            <p class="name">Nilay Hirpara</p>
                                            <span class="position">Owner</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="fa fa-quote-left"></span>
                                </div>
                                <div class="text">
                                    <p class="mb-4">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa illo corrupti
                                        ratione voluptatibus recusandae dolore.
                                    </p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(imagess/person_4.jpg);"></div>
                                        <div class="pl-3">
                                            <p class="name">Nilay Hirpara</p>
                                            <span class="position">Owner</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="fa fa-quote-left"></span>
                                </div>
                                <div class="text">
                                    <p class="mb-4">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa illo corrupti
                                        ratione voluptatibus recusandae dolore.
                                    </p>
                                    <div class="d-flex align-items-center">
                                        <div class="user-img" style="background-image: url(imagess/person_1.jpg);"></div>
                                        <div class="pl-3">
                                            <p class="name">Nilay Hirpara</p>
                                            <span class="position">Owner</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="ftco-section" id="chef">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-2">
                <div class="col-md-12 text-center heading-section ftco-animate">
                    <span class="subheading">Chef</span>
                    <h2 class="mb-4">Our Master Chef</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img" style="background-image: url(imagess/chef4.jpg);"></div>
                        <div class="text pt-4">
                            <h3>Navnit Kumar</h3>
                            <span class="position mb-2">Cake Designer</span>
                            <div class="faded">
                                <ul class="ftco-social d-flex">
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-linkedin"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img" style="background-image: url(imagess/chef1.jpg);"></div>
                        <div class="text pt-4">
                            <h3>Nilay Hirpara</h3>
                            <span class="position mb-2">Owner</span>
                            <div class="faded">
                                <ul class="ftco-social d-flex">
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-linkedin"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img" style="background-image: url(imagess/chef2.jpg);"></div>
                        <div class="text pt-4">
                            <h3>Ravi Kumawat</h3>
                            <span class="position mb-2">Cake Maker</span>
                            <div class="faded">
                                <ul class="ftco-social d-flex">
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-linkedin"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img" style="background-image: url(imagess/chef3.jpg);"></div>
                        <div class="text pt-4">
                            <h3>Somyadeep Dey</h3>
                            <span class="position mb-2">Manager</span>
                            <div class="faded">
                                <ul class="ftco-social d-flex">
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-linkedin"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section img" id="order" style="background-image: url(imagess/order_bg.jpg);"
        data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row d-flex">
                <div class="col-md-7 ftco-animate makereservation p-4 px-md-5 pb-md-5">
                    <div class="heading-section ftco-animate mb-5 text-center">
                        <span class="subheading">Order</span>
                        <h2 class="mb-4">Your Cake</h2>
                    </div>
                    <form action="#">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" class="form-control" placeholder="John Doe">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Email</label>
                                    <input type="email" class="form-control" placeholder="johndoe@gmail.com">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Address</label>
                                    <input type="text" class="form-control" placeholder="XYZ">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Phone</label>
                                    <input type="text" class="form-control" placeholder="9874563215">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Date</label>
                                    <input type="text" class="form-control" id="book_date" placeholder="Date">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Time</label>
                                    <input type="text" class="form-control" id="book_time" placeholder="Time">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Cake Flavour</label>
                                    <div class="select-wrap one-third">
                                        <div class="icon"><span class="ios-ios-arrow-down"></span></div>
                                        <select name="" id="" class="form-control">
                                            <option value="">Black Forest</option>
                                            <option value="">Yellow Butter Cake</option>
                                            <option value="">Pound Cake</option>
                                            <option value="">Red Velvet Cake</option>
                                            <option value="">Carrot Cake</option>
                                            <option value="">Sponge Cake</option>
                                            <option value="">Genoise Cake</option>
                                            <option value="">Chiffon Cake</option>
                                        </select>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Kg</label>
                                    <div class="select-wrap one-third">
                                        <div class="icon"><span class="ios-ios-arrow-down"></span></div>
                                        <select name="" id="" class="form-control">
                                            <option value="">0.5</option>
                                            <option value="">1</option>
                                            <option value="">1.5</option>
                                            <option value="">2.5</option>
                                            <option value="">5</option>
                                            <option value="">10</option>
                                            <option value="">Custom</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 mt-3">
                                <div class="form-group text-center">
                                    <input type="submit" value="Order Your Cake" class="btn btn-primary py-3 px-5">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section bg-light" id="blog">
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-md-7 text-center heading-section ftco-animate">
                    <span class="subheading">Blog</span>
                    <h2 class="mb-4">Recent Posts</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-cat-widget">
                        <div class="content relative">
                            <div class="overlay overlay-bg"></div>
                            <a href="#" target="_blank">
                                <div class="thumb">
                                    <img src="imagess/cat-widget1.jpg" alt=""
                                        class="content-image img-fluid d-block mx-auto">
                                </div>
                                <div class="content-details">
                                    <h4 class="content-title mx-auto text-uppercase">Social Life</h4>
                                    <span></span>
                                    <p>Enjoy your social life.</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-cat-widget">
                        <div class="content relative">
                            <div class="overlay overlay-bg"></div>
                            <a href="#" target="_blank">
                                <div class="thumb">
                                    <img src="imagess/cat-widget2.jpg" alt=""
                                        class="content-image img-fluid d-block mx-auto">
                                </div>
                                <div class="content-details">
                                    <h4 class="content-title mx-auto text-uppercase">Politics</h4>
                                    <span></span>
                                    <p>Be a part of politics.</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-cat-widget">
                        <div class="content relative">
                            <div class="overlay overlay-bg"></div>
                            <a href="#" target="_blank">
                                <div class="thumb">
                                    <img src="imagess/cat-widget3.jpg" alt=""
                                        class="content-image img-fluid d-block mx-auto">
                                </div>
                                <div class="content-details">
                                    <h4 class="content-title mx-auto text-uppercase">Food</h4>
                                    <span></span>
                                    <p>Let the food be finished.</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- blog section ends -->
	
		
		<!-- scripts 
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script src="main.js"></script> -->
   
</body>
</html>