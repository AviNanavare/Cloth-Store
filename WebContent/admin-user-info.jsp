<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin user info</title>
<link type="text/css" rel="stylesheet" href="Css/admin-user-info.css">
</head>
<body>
<a href="admin-page.jsp" >Admin-info</a>
<br><br>
<%

String name;
int age;
String email;
String password;
String sql = "select * from customerinfo";

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
				<th><% out.print("Name"); %></th>
				<th><% out.print("Email"); %></th>
				<th><% out.print("Age"); %></th>
				<th><% out.print("Password"); %></th>
			</tr>
		<%
		while(rs.next())
		{
			name=rs.getString(1);
			email = rs.getString(2);
			age = rs.getInt(3);
			password = rs.getString(4);
			
			%>
			<tr>
				<td><% out.print(name); %></td>
				<td><% out.print(email); %></td>
				<td><% out.print(age); %></td>
				<td><% out.print(password); %></td>
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
<h4>Add user</h4>
<form action="admin-user-add.jsp" >
	name : <input type="text" name="name"><br>
	email id : <input type="email" name="email"><br>
	age : <input type="number" name="age" ><br>
	password : <input type="password" name="password"><br>
	<button type="submit" >Submit</button>
</form>
</div>
<br>
<hr width="100%"> 
<br>
<div>
<h4>Delete user</h4>
<form action="admin-user-delete.jsp" >
	enter email id of user : <input type="text" name="user-email"><br>
	<button type="submit" >delete</button>
</form>
</div>
</body>
</html>