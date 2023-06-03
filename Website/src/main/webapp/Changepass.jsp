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
<title>Insert title here</title>
</head>
<body>
<%@include file="UserNavbar.jsp"%>

<br>
<br>
<br>
<br>

<%
String email=(String)session.getAttribute("emails");


%>


<div class="container p-2">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<c:if test="${not empty sucessMsg }">
<p class="text-center text-sucess">${sucessMsg}</p>
<c:remove var="sucessMsg" scope="session"/>
</c:if>

<c:if test="${not empty failed }">
<p class="text-center text-sucess">${failed}</p>
<c:remove var="failed" scope="session"/>
</c:if>

<c:if test="${not empty fail }">
<p class="text-center text-sucess">${fail}</p>
<c:remove var="fail" scope="session"/>
</c:if>
<div class="card-body">
<h4 class="text-center">Change Password</h4>
<form action="ChangePassword" method="post">
  
  <div class="form-group">
    <label for="exampleInputPassword1">Old Password</label>
    <input type="password"  name="oldpass" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">New Password</label>
    <input type="password"  name="newpass" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Confirm Password</label>
    <input type="password"  name="confirmpass" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</div>
</div>
</div></div>




</div>
</div>
</div></div>



</body>
</html>
