<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin product add</title>
</head>
<body>
	<%
	String name = request.getParameter("title");
	String category = request.getParameter("category");
	String size = request.getParameter("size");
	int price = Integer.parseInt(request.getParameter("price"));
	Part part = request.getPart("image");
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
			
			InputStream is = part.getInputStream();
			
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
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
%>
</body>
</html>