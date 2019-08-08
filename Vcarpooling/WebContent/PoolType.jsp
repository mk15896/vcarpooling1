<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pool type</title>
<link rel="stylesheet" href="Pooltype.css">
</head>
<body background="D:\maya\all in one\carpool\silver-texture.jpg">

<div class="box" background="">
	    
	    <div class="topnav">
  			<a href="Home.jsp">Home</a>
  			<a  href="login.jsp">Login</a>
 		 	<a   href="Registration.jsp">Registration</a>
 		 	<a href="search.jsp">Search</a>
 		 	<a  href="UserProfile.jsp">My Profile</a>
 		 	<a class="active" href="PoolType.jsp">My Pool</a>
		</div>
		<br>
		<h1 style="text-align:center;color:Black; font-family:cooper">Create Your Pool...</h1>
		<br>	    
	     <div  class="form">
    		<form id="poolform" action="hello1" method="post"> 
    		
    	<p class="pool"><label for="usertype"> User Pool Type- </label>
    	   <select name="usertype" >
           <option value="provider">Provider</option>
              <option value="user">User</option>
       </select>
       
       <p class="contact"><label for="origin">Origin</label></p>
    		    <input id="origin" name="origin" placeholder="Origin" required="" type="text">
    		    
    		    <p class="contact"><label for="destination"><br>Destination</label></p>
    		    <input id="destination" name="destination" placeholder="Destination " required="" type="text">
    		    
    		    <p class="contact"><label for="start_time"><br>Start Time</label></p>
    		    <input id="start_time" name="start_time" placeholder="start_time " required="" type="time">
    		    
    		     <p class="contact"><label for="end_time"><br>Start Time</label></p>
    		    <input id="end_time" name="end_time" placeholder="end_time " required="" type="time">
    		    
    		     <p class="contact"><label for="contact"><br>Contact</label></p>
    		    <input id="contact" name="contact" placeholder="contact " required="" type="number">
    		    <br>
    		    <br>
    		      <input class="button" name="submit" id="submit" value="Create" type="submit"> 	 
   </form> 
   </div>      
</div>
</body>
</html>