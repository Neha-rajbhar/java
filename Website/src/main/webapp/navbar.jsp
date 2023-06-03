<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<c:if test="${not empty sucess }">
<p class="text-center text-sucess">${sucess}</p>
<c:remove var="sucess" scope="session"/>
</c:if>
<c:if test="${not empty failed}">
<p class="text-center text-sucess">${failed}</p>
<c:remove var="failed" scope="session"/>
</c:if>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3" >
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
           
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto"></ul>
            <ul class="navbar-nav">
               <c:if test="${not empty userObj}">

              <li class="nav-item active">
                    <a class="nav-link" href="homeAdmin.jsp">${userObj.name}</a>
                     <a class="nav-link" href="logout">Logout</a>
                     <a class="nav-link" href="dashboard.jsp">Home</a>
                </li>
                </c:if>
                 <c:if test="${empty userObj}">
                <li class="nav-item active">
                    <a class="nav-link"  href="login.jsp">Login</a>
                </li>
                 </c:if>

            </ul>

        </div>
    </div>
</nav>
</body>
</html>