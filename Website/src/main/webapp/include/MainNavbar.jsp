<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="com.website.Dao.ConnectionProvider" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.website.Model.Products" %>
 
 
 
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/fontawesome.min.css">
          <link rel="stylesheet" href="Style1.css">
          <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
          
          <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
          <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
          
          <style>
          
          .bg-custom{
          background: #FC427B;
          
          }
          .navbar .nav-item{
          color: white;
          font-weight: bold;
          
          }
          .navbar .nav-item:hover .nav-link{
          background-color: white;
         color: #FD7272;
         border-radius: 15px;
          }
          
          </style>
</head>
<body>



 <!-- navigation starts -->
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-custom " id="ftco-navbar">
        <div class="container">
            <a href="index.html" class="navbar-brand">Tasty Cake's</a>

            <div class="collpase navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
               
                   <li class="nav-item"><a href="welcome.jsp" class="nav-link"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
                    <li class="nav-item"><a href="login.jsp" class="nav-link"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a></li>
                    
                    <li class="nav-item"><a href="DisplayCartt.jsp" class="nav-link"><i class="fa fa-birthday-cake" aria-hidden="true"></i>All product</a></li>
                    
                    <li class="nav-item cta"><a href="Cart.jsp" class="nav-link">Order a cake</a></li>
                    
                </ul>
            </div>
        </div>
    </nav>
    <!-- navigation ends -->
    </body>
</html>