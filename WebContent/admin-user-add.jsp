<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin user add</title>
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
				out.print("User added , Successfully !!!");
				%><h5>Here's <a href="admin-user-info.jsp">admin-page</a></h5><%
			}
			else
			{
				out.print("User not-added ");
				%><h5>Here's <a href="admin-user-info.jsp">admin-page</a></h5><%
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
%>
</body>
</html>