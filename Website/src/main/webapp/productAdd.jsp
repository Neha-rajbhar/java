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
<style type="text/css">
body{
margin: 0;
padding: 0;
background : linear-gradient(120deg,#2980b9,#8e44ad);
font-family: sans-serif;
height: 100vh;
overflow: hidden;
}
.center{
width: 400px;
height: 420px;
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
width: 100%;
margin-bottom: 20px;

}

.center input[type="text"], input[type="password"]{



}


</style>
</head>
<body>
<%@include file="new.jsp" %>
<div class="center">
    <h3>Add a new Product</h3>
    
    <c:if test="${not empty sucess }">
<p class="text-center text-sucess">${sucess}</p>
<c:remove var="sucess" scope="session"/>
</c:if>
<c:if test="${not empty failed}">
<p class="text-center text-sucess">${failed}</p>
<c:remove var="failed" scope="session"/>
</c:if>
<form action="AddProduct" method="post" enctype="multipart/form-data">        


                <input type="hidden" name="id" >
                
                    <p>Name</p>
                    <input type="text" class="form-control" required  name="name" id="name"
                           placeholder="Enter name">

               <p>Category</p>
                    <input type="text" class="form-control" required  name="category" id="name"
                           placeholder="Enter name">
                    
                <p>Price</p>
                    <input type="number" class="form-control" required  name="price" id="price"
                           placeholder="Price">
                
                    <input type="number" class="form-control" required name="weight" id="weight"
                           placeholder="Weight">
                </div>
                <div class="form-group">
                    <label for="description">Product Description</label>
                    <textarea class="form-control" rows="5"  name="description" id="description"></textarea>
                </div>
            </div>
             <div class="col-sm-5">
                <p>Product Image</p>
                <div class="custom-file">
                    <input type="file"   name="file"  id="productImages"/>
                    <label class="custom-file-label" for="productImages">Choose file</label>
                </div>

					<div class="col-sm-5">
						<p>Active</p>
						<div class="form-group">
							<select name="active" id="cake">
								<option value="Yes">Yes</option>
								<option value="No">No</option>
							</select>
						</div>
						<p>
					</div>

					
                
                <br><br>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form>
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
<script>
    function readURL(input){
        if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function(e){
                $('#imgPreview').attr('src', e.target.result).width(100).height(100);
            }
            reader.readAsDataURL(input.files[0])
        }
    }
    $('#productImage').change(function(){
        readURL(this);
    });
    $(".custom-file-input").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>
</body>
</html>