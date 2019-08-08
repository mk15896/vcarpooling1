<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="login.css">
</head>

<body background="D:\maya\all in one\carpool\silver-texture.jpg">
<div class="container"  >
 <div class="topnav">
  			<a href="Home.jsp">Home</a>
  			<a class="active" href="login.jsp">Login</a>
 		 	<a href="search.jsp">Search</a>
 		 
		</div>

<br>
<b><h1 style="color:Black;font-family:Garamond">Welcome to login page</h1></b>
<br>


<div  class="form" align="center">
	<form method="Get" action="Login">
	<center>	
		<table align="center" cellspacing="10">
		<tr>
			<td class="name">User name </td>
			<td><input  type="text" name="username" placeholder="username" autofocus required><br></td>
		<tr>
		<tr>
			<td class="name">Password </td>
			<td><input type="password" name="password" placeholder="password" autofocus required><br></td>
		<tr>
		</table>
		<input type="submit" value="Login"><br>
	</center>	
	</form>
</div>


</div>
</body>
</html>