<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Account</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>  
<br><br>
<h1><% out.print((String)session.getAttribute("name")); %>'s Account</h1>
<a href="user-editinfo.jsp" >Edit my profile</a>
<br><br>
<a href="user-myorders.jsp">My orders</a>
<br><br>
<a href="dashboard.jsp">Dashboard</a>
</body>
</html>