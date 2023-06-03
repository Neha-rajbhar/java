<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style>
*{
margin: 0px;
padding: 0px;
box-sizing: border-box;
}
nav{
width: 100% ;
height: 75px;
line-height: 75px;
padding: 0px 100px;

background: linear-gradient(#033747,#012733);

}
nav .logo p{
font-size: 30px;
font-weight: bold ;
float: left;
color: white;
text-transform: uppercase;
letter-spacing: 1.5px;
cursor: pointer;


}
nav ul{
float: right;

}
nav li{
display: inline-block;
list-style: none;
}
nav li a{
font-size: 18px;
text-transform: uppercase;
padding: 0px 30px;
color: white;
text-decoration: none;
}
nav li a:hover{
color: #ff8c69;
transition: all 0.4s ease 0s;
}
.content-items{
width: 100%;
height: 100vh;
background-size: cover;
background-position: center;

}

</style>

</head>
<body>
<nav>
<div class="logo">
<p>Tastey Cake</p>
</div>
<ul>
<li><a href="welcome.jsp">Home</a></li>


<li><a href="logouts">Logout</a></li>
</ul>

</nav>



</div>
</body>
</html>