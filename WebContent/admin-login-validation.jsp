<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login validation</title>
</head>
<body>
<%
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	String sql = "select * from admininfo where userid ='"+userid+"' AND password ='"+password+"'";
%><%
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/storeclothdb","root","root");
			System.out.print("Connection success . . .");
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			out.print("upto");
			if(rs.next())
			{
				//Taking data from database
				int uniquevalaId = rs.getInt(3);
				
				out.print("Login Successfully !!!");
				%><h5>Here's <a href="dashboard.jsp">dashboard . . .</a></h5><%
				request.getSession(true);
				
				//Adding data to session
				session.setAttribute("uniquevalaId", uniquevalaId);					
			}
			else
			{
				out.print("userid or password is WRONG . . . ");
				%><h5>Here's <a href="admin-login.jsp">Admin Login</a> Again . . .</h5><%
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
%>
</body>
</html>