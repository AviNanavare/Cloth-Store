<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin product info</title>
<link type="text/css" rel="stylesheet" href="Css/admin-user-info.css">
</head>
<body>
<h3>Goto, <a href="admin-page.jsp" >Admin page</a></h3> 
<br><br>
<%
int id;
String title;
String Category;
String Size;
int price;
byte b[];
String imagepath;
String sql = "select a.uniqueId , a.imagepath , a.title , b.size , a.price "+
				"from clothdata a join clothsize b ON a.size=b.id";

	try{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection
		("jdbc:mysql://localhost:3306/storeclothdb","root","root");
		System.out.print("Connection success . . .");
		
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		%><div class="box">
		<table class="main-table">
			<tr>
				<th><% out.print("ID"); %></th>
				<th><% out.print("IMAGE"); %></th>
				<th><% out.print("TITLE"); %></th>
				<th><% out.print("SIZE"); %></th>
				<th><% out.print("PRICE"); %></th>
			</tr>
		<%
		while(rs.next())
		{
			id=rs.getInt(1);
			imagepath = rs.getString(2);
			title = rs.getString(3);
			Size = rs.getString(4);
			price = rs.getInt(5);
			
			
			%>
			<tr>
				<td><% out.print(id); %></td>
				<td><img alt="extra" src="<%out.print(imagepath);%>"></td>
				<td><% out.print(title); %></td>
				<td><% out.print(Size); %></td>
				<td><% out.print("&#8377 "+price+"/-"); %></td>
			</tr>
			<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%> 
</table>
</div>
<br><br>
<hr width="100%" >
<div>
<h4>Add product</h4>
<form action="admin-product-add.jsp" >
	Title : <input type="text" name="title"><br>
	Category : <select name="Category" >
      <option value="Tshirts">Tshirts</option>
      <option value="Tops">Tops</option>
      <option value="Shirts">Shirts</option>
      <option value="Pants">Pants</option>
      <option value="Jeans">Jeans</option>
      <option value="Sweaters">Sweaters</option>
      <option value="Hats">Hats</option>
  </select><br>
	Size : <input type="number" name="age" ><br>
	Price : <input type="password" name="password"><br>
	Image : <input type="file" name="image">	
	<br>
	<button type="submit" >Submit</button>
</form>
</div>
<br>
<hr width="100%"> 
<br>
<div>
<h4>Delete product</h4>
<form action="admin-product-delete.jsp" >
	enter uniqueId of product : <input type="number" name="uniqueId"><br>
	<button type="submit" >delete</button>
</form>
</div>
</body>
</html>