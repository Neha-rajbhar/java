
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
	
	
	<style type="text/css">
	a{
	text-decoration: none;
	background-color: #ff6b81;
	color: white;
	position: relative;
	}
	
	a:hover{
	text-decoration: none;
	color: #ff6b81;
	}
	
	</style>
</head>
<body style="background-color:#f1f2f6">
	<c:if test="${empty userObj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<div class="container text-center mt-3">
	<h1>Thankyou</h1>
	<h3>Your Order SucessFully</h3>
	<h5>Within few hours Your order will be deliverd</h5>
	<a href="index.jsp">Home</a>
	<a href="GetAllOrder.jsp">View Order</a>
	</div>