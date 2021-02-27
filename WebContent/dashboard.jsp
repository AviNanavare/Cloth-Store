<%@page import="java.net.http.HttpRequest"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Dashboard</title>
	<link rel="stylesheet" type="text/css" href="Css/dashboard.css"></link>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>  
<br>
<%
	
	if(session.getAttribute("email")!=null)
	{
		String email = (String)session.getAttribute("email");
		String password = (String)session.getAttribute("password");
	}
	else
	{
		
	}
%>
<%
int id;
String title;
String Category;
String Size;
int price;
String imagepath;
String sql = "select * from clothdata";

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
				<th><% out.print("PRICE"); %></th>
			</tr>
		<%
		while(rs.next())
		{
			id=rs.getInt(1);
			title = rs.getString(2);
			Category = " ";		
			Size = " ";
			price = rs.getInt(5);
			imagepath = rs.getString(7);
			
			%>
			<tr>
				<td><% out.print(id); %></td>
				<td><img alt="extra" src="<%out.print(imagepath);%>"></td>
				<td><% out.print(title); %></td>
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
<Script type="text/javascript" src="Js/dashboard.js">	
</Script>
</body>
</html>