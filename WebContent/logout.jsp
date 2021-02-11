<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log-out</title>
</head>
<body>
<%
	session.invalidate();
	out.print("Logout successfully");
	%><h5>Here's <a href="dashboard.jsp">Dashboard</a> . . .</h5><%
%>
</body>
</html>