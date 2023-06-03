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
 <%@page  isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="new.jsp" %>
<style type="text/css">

a{
text-decoration: none;
color: black;


}
a:hover {
	text-decoration: none;
}


</style>
</head>
<body style="background-color:#dcdde1">
<c:if test="${empty userObj}">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<div class="container">




<br>
<br>
<br>
<br>

<c:if test="${not empty userObj }">


<h3 class="text-center">Hello ${userObj.name}</h3>

</c:if>
<div class="row-p-6">


<div class="col-md-6 mt-3">
<a href="GetAllOrder.jsp">
<div class="card">
<div class="card-body">
<h3 class="text-center">Single Customer Order</h3>
</div>
</div>
</a>

</div>

<div class="col-md-6 mt-3">
<a href="AdminOrder.jsp">
<div class="card">
<div class="card-body">
<h3 class="text-center">Get All Order List</h3>
</div>
</div>
</a>

</div>
</div>

</div>
</body>
</html>