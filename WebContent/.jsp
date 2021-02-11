<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Dashboard</title>
</head>
<body>
<jsp:include page="header.html"></jsp:include>  
<br>
<h1>Here's Dashboard</h1>
<%
	if(session==null)
	{
		
	}
	else
	{
		String Uname = (String)session.getAttribute("name");
	}
%>

</body>
</html>