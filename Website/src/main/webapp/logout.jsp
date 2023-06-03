<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Logout sucessfully</h1>
<%session.invalidate(); %>

<a href="index.jsp">Login page</a>
</body>
</html>