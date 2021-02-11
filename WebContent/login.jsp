<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>  
<br><br>
<form action="log-validation.jsp" method="post" style="margin: 0 auto; width:250px;">
		<h1>Login User</h1>
			<table style="border: 1px solid black;">
				<tr>
					<td>email</td>
					<td>:<input type="email" name="email"></td>
				</tr>
				<tr>
					<td>password</td>
					<td>:<input type="password" name="password" ></td>
				<tr>
					<td><button type="submit" >Login</button></td>
				</tr>
			</table>
	</form>
<h3 style="text-align: center;">Oops , Not Registered . . . . .</h3>
<h3 style="text-align: center;">For Registration <a href="registration.jsp">click here</a></h3>
</body>
</html>