<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Orders</title>
<link rel="stylesheet" type="text/css" href="Css/user-myorders.css">
</head>
<body>
<%
	int uniqueUserId = (int)session.getAttribute("uniqueId");

	String id;
	String imagepath;
	String title;
	int price;
	
	String sql = "select "+
	"o.cloth_id , d.imagepath , d.title , d.price from customerinfo s join "+
	"orderinfo o ON s.uniqueId=o.customer_id join "+
	"clothdata d ON o.cloth_id=d.uniqueId "+
	"where s.uniqueId = "+uniqueUserId ; 
%>
<%
try{
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection
	("jdbc:mysql://localhost:3306/storeclothdb","root","root");
	System.out.print("Connection success . . .");
	
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	%><div class="box">
	<table class="main-table">
		<tr>
			<th><% out.print("ID"); %></th>
			<th><% out.print("IMAGE"); %></th>
			<th><% out.print("TITLE"); %></th>
			<th><% out.print("PRICE"); %></th>
		</tr>
	<%
	while(rs.next())
	{
		id = rs.getString(1);
		imagepath = rs.getString(2);
		title = rs.getString(3);
		price = rs.getInt(4);
		
		%>
			<tr>
				<td><% out.print(id); %></td>
				<td><img alt="extra" src="<%out.print(imagepath);%>"></td>
				<td><% out.print(title); %></td>
				<td><% out.print("&#8377 "+price+"/-"); %></td>
			</tr>
			<%
	}
}catch(Exception e){
	e.printStackTrace();
}
%>	
</table>
<h5>Here's <a href="userinfo.jsp">My-account . . .</a></h5>
</div>
</body>
</html>