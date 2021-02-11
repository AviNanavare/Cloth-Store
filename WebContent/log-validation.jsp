<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login-info</title>
</head>
<body>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String sql = "select * from customerinfo where email ='"+email+"' AND password ='"+password+"'";
%><%
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/storeclothdb","root","root");
			System.out.print("Connection success . . .");
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				//Taking data from database
				String name = rs.getString(1);
				int age = rs.getInt(3);
				int uniqueId = rs.getInt(5);
				
				out.print("Login Successfully !!!");
				%><h5>Here's <a href="dashboard.jsp">dashboard . . .</a></h5><%
				request.getSession(true);
				
				//Adding data to session
				session.setAttribute("name", name);
				session.setAttribute("email", email);
				session.setAttribute("age", age);
				session.setAttribute("password", password);
				session.setAttribute("uniqueId", uniqueId);
				
				out.print(name+" "+email+" "+age+" "+password+" "+uniqueId);
				
			}
			else
			{
				out.print("userid or password is WRONG . . . ");
				%><h5>Here's <a href="login.jsp">Login</a> Again . . .</h5><%
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
%>
</body>
</html>