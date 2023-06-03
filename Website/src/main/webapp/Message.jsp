<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="index.jsp">Login</a>
<%
String msg=request.getParameter("msg");

if("added".equals(msg))
{
%>	
<h1>Product Added Successfully </h1>
<%}%>
<%
if("exist".equals(msg))
{
%>	
<h1>Product already exsist in your cart! Quantity increased!</h1>
<%}%>
<%
if("valid".equals(msg))
{
%>	
<h1>Successfully inserted</h1>
<%}%>
<%
if("invalid".equals(msg))
{
%>	 
<h1>Some thing Went Wrong! Try Again !</h1>
<%}%>

</body>
</html>