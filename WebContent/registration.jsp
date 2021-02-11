<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>  
<br><br>
<form action="reg-validation.jsp" method="post" style="margin: 0 auto; width:250px;">	
			<h1>Register User</h1>
			<table style="border: 1px solid black;">
				<tr>
					<td>name</td>
					<td>:<input type="text" name="name"></td>
				</tr>
				<tr>
					<td>email</td>
					<td>:<input type="email" name="email"></td>
				</tr>
				<tr>
					<td>age</td>
					<td>:<input type="number" name="age" ></td>
				</tr>
				<tr>
					<td>password</td>
					<td>:<input type="password" name="password" ></td>
				<tr>
					<td><button type="submit" >Submit</button></td>
				</tr>
			</table>
		</form>
<h3 style="text-align: center;">Already User . . . . .</h3>
<h3 style="text-align: center;">For Login <a href="login.jsp">click here</a></h3>

</body>
</html>