<%@ page import="java.sql.* "%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Data</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	int age = Integer.parseInt(request.getParameter("age"));
	String password = request.getParameter("password");
	
	int uniqueId = (int)session.getAttribute("uniqueId");
	String path = "update customerinfo set"
			+" name = '"+name+"',"+
			" email = '"+email+"',"+
			" age = "+age+","+
			" password = '"+password+"'"+
			" where uniqueId ="+uniqueId;
%>
<%
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/storeclothdb","root","root");
			System.out.print("Connection success . . .");
			
			Statement pt = con.createStatement();
			
			int a = pt.executeUpdate(path);
			
			if(a>0)
			{
				out.print("Updated Data Successfully !!!");
				%>
				<h5>Here's, <a href="userinfo.jsp">My Account</a></h5>
				<%
			}
			else
			{
				out.print("Data is not Updated . . .");
				%><h5>Here's, <a href="userinfo.jsp">My Account</a> Again. . .</h5><%
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
%>
</body>
</html>