<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
margin: 0;
padding: 0;
background: url(bac.jpg);
background-size: cover;
background-repeat: no-repeat;

font-family: sans-serif;
}
.login-box{
width: 320px;
height: 520px;
background: rgba(0,0,0,0.5);
color: white;
top: 50%;
left: 50%;
position: absolute;
transform: translate(-50%,-50%);
box-sizing: border-box;
padding: 70px 30px;
}
.avtar{
width: 70px ;
height: 70px;
border-radius: 50%;
position: absolute;
top: 0px;
left: 120px;
margin-top: 5px;
}
h1{
margin: 5px;
padding: 0 0 20px;
text-align: center;
font-size: 22px;
}
.login-box p{
margin: 0;
padding: 5px;
font-weight: bold;
}

login-box input{
width: 100%;
margin-bottom: 20px;

}

.login-box input[type="email"], input[type="password"]{
border: none;
background: transparent;
border-bottom: 1px solid #fff;
outline: none;
height: 40px;
color: #fff;
font-size: 16px;
}

.login-box input[type="submit"]{
border: none;
outline: none;
height: 40px;
font-size: 18px;
background: #40739e;
color: #fff;
border-radius: 20px;
width: 80%;
margin-top: 15px;
margin-left: 15px;
}

.login-box input[type="submit"]:hover{

cursor: pointer;
background: ;
color: #fff;

}
.login-box a{
text-decoration:none;
border:none;
outline:none;
color:#EE5A24;;
background:transparent;

font-size:16px;


margin-left: 50px;


}

.login-box a:hover{
text-decoration:none;
border:none;
outline:none;
color:#3498db;
font-size:16px;
}


.login-box input[type="submit"]
{
border:none;

outline:none;
color:#fff;
background:#1c8adb;
height:40px;
font-size:18px;
border-radius:20px;
}
.login-box input[type="submit"]:hover
{
cursor:pointer;
background:#0a837f;
color:#000;
}

</style>

</head>
<body>
<%@include file="everyNav.jsp"%>


<div class="login-box">
<img alt="" src="logo.png" class="avtar">
<form action="Login" method="post">
<h1>Login Form</h1>
<c:if test="${not empty failed }">
<p class="text-center text-sucess">${failed}</p>
<c:remove var="sucessMsg" scope="session"/>
</c:if>


<p>Email:</p>
<input type="email" name="email" id="" placeholder="Email Id" required="required"/>



<p>Password:</p>
<input type="password" name="password" id="" placeholder="password" required="required"/>


<input type="submit" value="submit">
<br>
<br>
<a class="btn" href="new_register.jsp">New User ?</a>
<br>
<br>
<a href="EmailForm.jsp">Forget Password ?</a>
</form>
</div>

</body>
</html>