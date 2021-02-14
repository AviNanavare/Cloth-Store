<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration-info</title>
</head>
<body>

<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	int age = Integer.parseInt(request.getParameter("age"));
	String password = request.getParameter("password");
%>
<%
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/storeclothdb","root","root");
			System.out.print("Connection success . . .");
			
			PreparedStatement pt = con.prepareStatement
					("insert into customerinfo (name,email,age,password) values (?,?,?,?) ");
			
			pt.setString(1, name);
			pt.setString(2, email);
			pt.setInt(3, age);
			pt.setString(4, password);
			
			int a = pt.executeUpdate();
			
			if(a>0)
			{
				out.print("You Registered Successfully !!!");
				%><h5>To <a href="login.jsp">Login . . .</a></h5>
				<h5>Here's <a href="dashboard.jsp">dashboard . . .</a></h5><%
			}
			else
			{
				out.print("You are not registered . . . ");
				%><h5>Here's <a href="registration.jsp">registration</a> Again. . .</h5><%
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
%>
 
</body>
</html>