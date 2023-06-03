<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="com.website.Dao.ConnectionProvider" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.website.Model.Products" %>
 <!-- navigation starts -->
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a href="index.html" class="navbar-brand">Tasty Cake's</a>

            <div class="collpase navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
               
                   <li class="nav-item"><a href="welcome.jsp" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="login.jsp" class="nav-link">Login</a></li>
                    
                    <li class="nav-item"><a href="DisplayCartt" class="nav-link">All product</a></li>
                    
                    <li class="nav-item cta"><a href="Cart.jsp" class="nav-link">Order a cake</a></li>
                    <li class="nav-item"><a href="About.jsp" class="nav-link">About Us</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- navigation ends -->