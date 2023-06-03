<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/include/MainHeader.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/include/MainNavbar.jsp"%>
<div class="login-box">
<img src="logo.png" class="avtar">
<form action="registerDao.jsp" method="post">
<h1>Registration Form</h1>
<p>First Name: <input type="text" name="firstname" id="fnamee"  required></p>
<p>Last Name: <input type="text" name="lastname" id="fnamee" required></p>
<p>Email ID: <input type="email" name="email" id="fnamee" required></p>
<p>Password: <input type="password" name="password" id="fnamee" required></p>
<input type="submit" value="Register"> <a href="index.jsp">Login</a>
</form>
</div>

<br>
<br><br>
<br>
<br>
<br><br>
<br>
<br>
<br><br>
<br>
<br>
<br><br>
<br>
<br>
<br><br>
<br>
<br>
<br><br>
<br>
<br>
<br><br>
<br>
<br>
<br><br>
<br>
	<%@include file="/include/MainFooter.jsp"%>
</body>
</html>