<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>  
<br><br>
<form action="admin-login-validation.jsp" method="post" style="margin: 0 auto; width:300px;">
		<h1>Admin Login</h1>
			<table style="border: 1px solid black;">
				<tr>
					<td>Userid</td>
					<td>: <input type="text" name="userid"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td>: <input type="password" name="password" ></td>
				<tr>
					<td><button type="submit" >Login</button></td>
				</tr>
			</table>
	</form>
</body>
<br>
<br>
<h3 style="text-align: center;">For User-Login <a href="login.jsp">click here</a></h3>
</html>