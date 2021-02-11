<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%! String name; %>
<% name=(String)session.getAttribute("name"); %>
    <head>
        <link rel="stylesheet" href="Css/header.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
    <div class="header">
      <a href="#default" class="logo"><img alt="Logo" src="Images/Main-logo.png"></a>
      <a href="userinfo.jsp" id="userinfo"><%out.print(name);%></a>
      <div class="header-right">
        <a href="dashboard.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
        <a id="login-register" href="registration.jsp">Login/Register</a>
       	 <a id="my-account" href="logout.jsp" >Logout</a>
        <a class="active" id="dropdown">Categories</a>
      </div>
    </div>
    <%
  		if(session.getAttribute("email")==null)
  		{
  			%> 
  			<script>
  			document.getElementById("login-register").style.visibility = "visible";
  	        document.getElementById("my-account").style.visibility = "hidden";
  	      	document.getElementById("userinfo").style.visibility = "hidden";
  			</script>
  			<%
  		}
  		else
  		{
  			%> 
			<script>
			document.getElementById("login-register").style.visibility = "hidden";
	        document.getElementById("my-account").style.visibility = "visible";
	        document.getElementById("userinfo").style.visibility = "visible";
  			</script>		
			<%
  		}
    %>
    </body>
    
</html>