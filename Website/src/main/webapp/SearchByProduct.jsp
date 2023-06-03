<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.website.Dao.ConnectionProvider" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.website.Model.Products" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<thead>
<tr>
<th>Id</th>
<th>Name</th>
<th>Category</th>
<th>Price</th>
<th>Image</th>
<th>Add To Cart</th>

 
</tr>
</thead>
<tbody>
<%
int z=0;

String search=request.getParameter("search");
try{
	 
		 Connection conn=ConnectionProvider.viewconnection();
		 String query="select * from products where name like '%"+search+"%' or category like '%"+search+"%' and active='Yes'";
		 Statement st=conn.createStatement();
		 ResultSet rs=st.executeQuery(query);
		 while(rs.next())
		 {
			 z=1;

%>
<tr>
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getDouble(4) %></td>
<td><%=rs.getBlob(6) %></td>
<td><a href="ProductCartDisplay.jsp?id=<%=rs.getInt(1) %>">Add To Cart</a></td>
</tr>
<%
}
}
catch(Exception e){
	e.printStackTrace();
}

%>


</tbody>




</table>
<%if(z==0){ %>
<h1>Nothing to Show</h1>
<%
}
%>
</body>
</html>
    