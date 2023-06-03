<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.website.Dao.ConnectionProvider" %>
     <%@ page import="java.sql.*" %>
 <%@ page import="com.website.Model.Users" %>
 <%@ page import="com.website.Model.Products" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="" method="post" enctype="multipart/form-data">


<p>Name</p>
<input type="text" name="namep" placeholder="Enter name" required/>
<p>Category</p>
<input type="text" name="category" placeholder="Enter name" required/>
<p>Price</p>
<input type="number" name="price" placeholder="Enter price" required/>
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
</body>
</html>