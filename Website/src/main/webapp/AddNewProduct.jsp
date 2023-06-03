<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.website.Dao.ConnectionProvider" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.website.Model.Users" %>
 <%@ page import="com.website.Model.Products" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
margin: 0;
padding: 0;

font-family: sans-serif;
height: 100vh;
overflow: hidden;
}
.center{
width: 400px;
height: 520px;
background: white;

top: 50%;
left: 50%;
position: absolute;
transform: translate(-50%,-50%);
border-radius: 10px;

}

.center h1{
text-align: center;
padding: 0 0 20px 0;
border-bottom: 1px solid silver;
}
.center txt_field{
position: relative;
border-bottom: 2px solid #adadad;
margin: 30px 0;
}
.center form{
padding:0 40px;
box-sizing: border-box;
box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.pass{
margin: -5px 0 20px 5px;
color: #a6a6a6;
cursor: pointer;
}
.pass:hover{


text-decoration:  underline;
}
input[type="submit"]{

width: 100% ;
height: 50px;
border: 1px solid;
background: #2691d9;
border-radius:25px ;
font-size: 18px;
color: #e9f4fb;
font-weight: 700;
cursor: pointer;
outline: none;
}
input[type="submit"]:hover{
border-color:#2691d9;
transition:.5s; 

}
.signup_link{
margin: 30px 0;
text-align: center;
font-size: 16px;
color: #666666;

}
.signup_link a{

color: #2691d9;
text-decoration: none;
}
.signup_link a:hover{
text-decoration: underline;
}
.center p{
margin: 0;
padding: 5px;
font-weight: bold;
}

.center input{
width: 80%;
margin-bottom: 10px;



}

.center input[type="text"], input[type="password"]{



}


</style>
</head>
<body>
<%@include file="new.jsp" %>
	

<div class="center">

<c:if test="${not empty addSucess }">
		<p class="text-center alert alert-success " role="alert">${addSucess}</p>
		<c:remove var="addSucess" scope="session" />
	</c:if>
	<c:if test="${not empty addFail}">
		<p class="text-center alert alert-danger " role="alert">${addFail}</p>
		<c:remove var="addFail" scope="session" />
	</c:if>
<form action="AddProduct" method="post" enctype="multipart/form-data">
<h1>Add Product</h1>

<p>Name</p>
<input type="text" name="namep" placeholder="Enter name" required/>
<p>Category</p>
<input type="text" name="category" placeholder="Enter name" required/>
<p>Price</p>
<input type="number" name="price" placeholder="Enter price" required/>
<p>Price</p>
<input type="number" name="weight" placeholder="Enter weight" required/>
<p>Active</p>
<select name="active" id="cake">
  <option value="Yes">Yes</option>
  <option value="No">No</option>
  </select>
  <p>
 <p>Select Image: </p>
 <input type="file" name="image">
 <br>
 <br>
 
<input type="submit" value="Save" required/>
</form>
</div>
</body>
</html>