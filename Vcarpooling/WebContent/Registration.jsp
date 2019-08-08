<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
	
    <link rel="stylesheet" href="Registration.css">
    
    <script> 
            function checkPassword(form) 
		{ 
                    password = form.password.value; 
                    repassword = form.repassword.value; 
  
                    if (password == '') 
                    alert ("Please enter Password"); 
                      
                    else if (repassword == '') 
                    alert ("Please enter confirm password"); 
                      
                    else if (password != repassword) 
		    { 
                    alert ("\nPassword did not match: Please try again...") 
                    return false; 
                    } 
  
                    else
		    { 
                    alert("Password Match: Welcome to Vcarpooling!") 
                    return true; 
                    } 
               } 
</script> 
</head>
<body background="D:\maya\all in one\carpool\silver-texture.jpg">
<div class="container" background="">
	    
	    <div class="topnav">
  			<a  href="Home.jsp">Home</a>
  			<a class="active" >Registration</a>
  		 	<a href="login.jsp">Login</a>
  		 	<a  href="search.jsp">Search</a>
		</div>
	    
			<header>
				<h1 style=" align:center;color:Black;font-family:cooper;">User Registration</h1>
            		</header> 
            		      
      <div  class="form">
    		<form id="contactform" action="hello" method="post"> 
    		
    		    <p class="contact"><label for="empid">Employee ID</label></p>
    		    <input id="empid" name="empid" placeholder="Employee ID " required="" type="text">
    		    
    			<p class="contact"><label for="name"><br> Full Name</label></p> 
    			<input id="name" name="name" placeholder="First Middle Last" required="" type="text">
    			 
    			<p class="contact"><label for="email"><br>Email ID</label></p> 
<!--     			<input id="email" name="email" placeholder="example@domain.com" required="" type="email"> -->
    			<input type="email" id="email" name="email"  placeholder="example@domain.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Please enter valid email ID, ex: example@gmail.com,abc@yahoo.com" required><br>
				
				<p class="contact"><label for="mobileno"><br>Mobile No.</label></p>
				<input id="mobileno" name="mobileno" placeholder="mobile number" pattern="[7-9]{1}[0-9]{9}" title="Please enter valid mobile number" required="" type="text">
			
				<p class="contact"><label for="address"><br>Address</label></p>
				<input id="address" name="address" placeholder="Address" type="text">
				
				<p class="contact"><label for="username"><br>Create a username</label></p> 
    			<input id="username" name="username" placeholder="username" required="" type="text">
    		 
    			 
                <p class="contact"><label for="password"><br>Create a password</label></p> 
    		<input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br>
    		<input type="checkbox" onclick="myFunction()">Show Password
 
                <p class="contact"><label for="repassword"><br>Confirm your password</label></p> 
    			<input type="password" id="repassword" name="repassword" required=""> 
    		
        
                <p class="contact"><label for="bday"><br>Birth Date</label></p>
                <input type="date" name="bday">
              
              

  	      		<p class="contact"><label><br>Gender </label></p>
           		<select class="select-style gender" name="gender">
            	<option value="select"></option>
            	<option value="m">Male</option>
            	<option value="f">Female</option>
            	<option value="others">Other</option>
            	</select><br><br>
            
            <input class="button" name="submit" id="submit" value="Register" type="submit"> 	 
   </form> 
   </div>      
</div>
 
<script type="text/javascript">

 function myFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>
 

</body>
</html>