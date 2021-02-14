<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin product delete</title>
</head>
<body>
<%
	String id = request.getParameter("uniqueId");
	String path = "delete from clothdata where uniqueId ="+id;
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
				out.print("Deleted Data Successfully !!!");
				%>
				<h5>Here's, <a href="admin-product-info.jsp">Admin product data</a></h5>
				<%
			}
			else
			{
				out.print("Data is not deleted . . .");
				%><h5>Here's, <a href="admin-product-info.jsp">Admin product data</a></h5><%
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
%>
</body>
</html>