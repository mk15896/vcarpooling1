<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Style1.css">
<title>Insert title here</title>

<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

header {
  background-color: #666;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

nav {
  float: left;
  width: 30%;
  height: 300px;
  background: #ccc;
  padding: 20px;
}

nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 300px;
}

section:after {
  content: "";
  display: table;
  clear: both;
}

footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
</style>
</head>
<body background="C:\Users\HP\Desktop\silver.jpg">
<form method="post" action="welcome">
<center>
<h1>SEARCH DETAILS</h1>
</center>

<ul>
<b>
  <li><a href = "Login.jsp">Login</a></li>
  <li><a href = "Register.jsp">Register</a></li>
  <li><a href = "Details.jsp">Details</a></li>
</b>
</ul>
</form>
<nav>
   <a href = "Search_details.jsp">Search Details</a><br>
   <a href = "login.jsp">Login</a>
  </nav>
  <article>
  <table>
  <tr>
  <th>Origin</th>
  <th>Destination</th>
  <th>More Details</th>
  <th>Type</th>
  <th>Start Time</th>
  <th>Return Time</th>
  <th>Contact</th>
  </tr>
  
  <tr>
  <td>Navalur    </td>
  <td>Chennai</td>
  <td><a href="abc">abc</a></td>
  <td>Rider</td>
  <td>8 AM</td>
  <td>6 PM</td>
  <td>9876543321</td>
  </tr>
  </table>
  </article>
  
  <footer>
 
<div id="googleMap" style="width:100%;height:300px;"></div>

<script>
function myMap() {
var mapProp= {
		center:{lat:20.593683,lng:78.962883},
  zoom:10,
};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
}

</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtJ-s_TkmIZS7jb8XJq8sWGxyKIgSvezg&callback=myMap"></script>
  
  </footer>
  
</body>
</html>