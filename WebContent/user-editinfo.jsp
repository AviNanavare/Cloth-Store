<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Info</title>
</head>
<body>
	<form action="user-editinfo-validation.jsp" method="post" style="margin: 0 auto; width:300px; ">	
			<h1>Update Data</h1>
			<table style="border: 1px solid black;">
				<tr>
					<td>name</td>
					<td colspan="2" >: <input type="text" name="name" value="<%out.print((String)session.getAttribute("name"));%>" ></td>
				</tr>
				<tr>
					<td>email</td>
					<td colspan="2" >: <input type="email" name="email" value="<%out.print((String)session.getAttribute("email"));%>" ></td>
				</tr>
				<tr>
					<td>age</td>
					<td colspan="2" >: <input type="number" name="age" value="<%out.print((int)session.getAttribute("age"));%>" ></td>
				</tr>
				<tr>
					<td>password</td>
					<td colspan="2">: <input type="text" name="password" value="<%out.print((String)session.getAttribute("password"));%>" ></td>
				<tr>
					<td><button onclick="userinfo.jsp" >Cancel</button></td>
					<td><button type="reset" >Reset</button></td>
					<td><button type="submit" >Submit</button></td>
				</tr>
			</table>
		</form>
</body>
</html>