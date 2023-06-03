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
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/fontawesome.min.css">
          <link rel="stylesheet" href="Style1.css">
          <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
          
          <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
          <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">

<style type="text/css">



 
 
 @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap');
 
*{
	margin:0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Roboto', sans-serif;
}
body {
	overflow-x:hidden; 
}
.container{
	position: relative;
	width: 100%;
}
.navigation{
	position: fixed;
	width: 300px;
	height: 100%;
	background: #FC427B;
	transition:0.5s;
	overflow: hidden;
}
.navigation ul{
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
}
.navigation ul li{
	position: relative;
	width: 100%;
	list-style: none;
}
.navigation ul li:hover {
	background: #487eb0;
}
	
.navigation ul li:nth-child(1):hover {
background: transparent;
}
.navigation ul li:nth-child(1){
line-height: 60px;
margin-bottom: 20px;
font-weight: 600;
border-bottom: 1px solid #fff;
}

.navigation ul li a{
position: relative;
display: block;
width: 100%;
display: flex;
text-decoration: none;
color: #fff;

}
.navigation ul li a .icon{
position: relative;
display: block;
min-width: 60px;
height: 60px;
line-height: 30px;
text-align: center;

}
.navigation ul li a .icon.fa{
color: white;
font-size: 24px;
}
.navigation ul li a .title{
position: relative;
display: block;
padding: 0 10px;
height: 60px;
line-height: 60px;
white-space: nowrap;
}
.main{
position: absolute;
width: calc(100% - 300px);
left: 300px;
min-height: 100vh;
background: white;

}
.main .topbar{
width: 100%;
background: white;
height: 60px;
padding: 0 10px;
display: flex;
justify-content: space-between;
align-items: center;
box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
z-index: 1;
}
.toggle{
position: relative;
width:  60px;
height:  60px;

}
.toggle::before {
	content: '\f0c9';
	font-family: fontAwesome;
	position: absolute;
	width: 100%;
	height: 100%;
	line-height: 60px;
	font-size: 24px;
	text-align: center;
	color: black;
}

.navigation.active{
width: 60px;
}
.main.active{
width: calc(100% - 60px);
left: 60px;
}
.search{
position: relative;
width: 400px;
margin: 0 10px;
}
.search label{
position: relative;
width: 100%;

}
.search label input{
width: 100%;
height: 40px;
border-radius: 40px;
padding: 5px 20px;
padding-left: 35px;
outline: none;
border: 1px solid rgba(0,0,0,0.2);
}
.search label .fa{
position: absolute;
left: 15px;
top: 12px;
}
.user{
position: relative;
min-width: 50px;
width:50px;
height: 50px;
border-radius: 50%;
overflow: hidden;
cursor: pointer;
}
.user img{
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
object-fit: cover;
}
.cardBox{
position: relative;
width: 100%;
padding: 20px;
display:grid;
grid-template-columns: repeat(4,1fr);
grid-gap:40px;
justify-content: space-between;
}
.cardBox.card{
position: relative;
background: #dcdde1;
padding: 20px;
display: flex;
justify-content: space-between;
cursor: pointer;
}
.cardBox .card .numbers{
position: relative;
font-size: 2em;
font-weight: 500;
}
.cardBox .card .cardName{
color: grey;
}
.cardBox .card .iconBox{
font-size: 2.5em;
color:#00a8ff;
}
.cards{
margin-top: 60px;
width: 100%;
padding: 35px 20px;
display: grid;
grid-template-columns: repeat(4,1fr);
grid-gap:20px;
}
.cards .card{
background: linear-gradient(45deg,#FC427B,#f5f6fa);
padding: 20px;
display: flex;
align-items: center;
justify-content: space-between;
box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);


}
.card-content{
color: black;
font-weight: 600;
font-size: 30px;
}

.icon-box i{
font-size: 45px;
color: black;
}

h4{
font-size: 20px;
font-weight: bold;
text-align: center;
margin:15px;
font-family: sans-serif;
}
.cards a{
text-decoration: none;

}

</style>
</head>
<body>



<div class="navigation">
<ul>
<li>
<a href="homeAdmin.jsp">
<span class="icon"><i class="fa fa-home" aria-hidden="true"></i></span>
<span class="title"><h4>Admin-home</h4></span>
</a>
</li>
<li>
<a href="Cart.jsp">
<span class="icon"><i class="fa fa-shopping-cart" aria-hidden="true"></i></i></span>
<span class="title"><h4>Cart</h4></span>
</a>
</li>
<li>
<a href="Setting.jsp">
<span class="icon"><i class="fa fa-cog" aria-hidden="true"></i></span>
<span class="title"><h4>Settings</h4></span>
</a>
</li>
<li>
<a href="logouts">
<span class="icon"><i class="fa fa-sign-out" aria-hidden="true"></i></span>
<span class="title"><h4>Logout</h4></span>
</a>
</li>
</ul>
</div>
<div class="main">
<div class="topbar">
<div class="toggle" onclick="toggleMenu();"></div>

<div class="user">
<img src="logo.png">
</div>
</div>
<c:if test="${not empty userObj }">
<h4>Welcome ${userObj.email}</h4>
</c:if>
<div class="cards">
<a href="product.jsp">
<div class="card">
<div class="card-content">
<div class="card-name">
View Product
</div>
<div class="icon-box">
<i class="fa fa-product-hunt" aria-hidden="true"></i>
</div>
</div>
</div>
</a>

<a href="AddNewProduct.jsp">
<div class="card">
<div class="card-content">
<div class="card-name">
Add New Product
</div>
<div class="icon-box">
<i class="fa fa-plus" aria-hidden="true"></i>
</div>
</div>
</div>
</a>

<a href="DisplayCartt.jsp">
<div class="card">
<div class="card-content">
<div class="card-name">
Product Available
</div>
<div class="icon-box">
<i class="fa fa-shopping-cart" aria-hidden="true"></i>
</div>
</div>
</div>
</a>



</div>
</div>

<script type="text/javascript">
function toggleMenu() {
	let toggle=document.querySelector('.toggle');
	let navigation=document.querySelector('.navigation');
	let main=document.querySelector('.main');
	toggle.classList.toggle('active');
	navigation.classList.toggle('active');
	main.classList.toggle('active');
}

</script>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>



</body>
</html>