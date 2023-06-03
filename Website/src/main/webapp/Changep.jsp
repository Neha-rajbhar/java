<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("noteMatch".equals(msg))
{
%>
<h3 class="alert">New password and Confirm password does not match!</h3>
<%
}
%>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your old Password is wrong!</h3>
<%}%>
<%
if("done".equals(msg))
{
%>
<h3 class="alert">Password change successfully!</h3>
<%}%>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>

<%}%>
</body>
</html>