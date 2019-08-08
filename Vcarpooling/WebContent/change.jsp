<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<link rel = "stylesheet" type = "text/css" href = "style.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="D:\all in one\Vcarpooling\silver.jpg">

<form method = "post" action="hello"
onsubmit = "return checkForm(this);">

<script>


function checkFrom(form)
{
	if(form.newpassword.value != " " && form.newpassword.value == form.conpassword.value)
		{
		if(form.newpassword.value.length < 6)
			{
			alert("Error :Password must contain atleast 6 characters!");
			form.newpassword.focus();
			return false;
			}
		}
	}
	
	

var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");


myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

myInput.onkeyup = function() {

  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) { 
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
}

  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) { 
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) { 
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }

  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}

 function myFunction() {
	  var x = document.getElementById("myInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	} 
 
 function checkPassword(form) { 
     newpassword = form.newpassword.value; 
     conpassword = form.conpassword.value; 

 
     if (newpassword == '') 
         alert("Please enter Password"); 
            
     else if (conpassword == '') 
         alert ("Please enter confirm password"); 
                
     else if(newpassword != conpassword) {
         alert ("\nPassword did not match: Please try again..."); 
         return false;  
}
          } 

</script>

<div class = "change-box">
<h2>Change Password</h2>
<br><br><br><br>
<div class ="textbox">

<i class = "fa fa-lock"></i>
 <input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
 title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" 
 required placeholder="Enter Old Password" name = "oldpassword" value = "" >
 
</div>
<div class ="textbox">
<i class = "fa fa-lock"></i>
 <input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
 title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required 
 placeholder="Enter New Password" name = "newpassword" value = "" id = "myInput"><br>
 <input type="checkbox" onclick="myFunction()">Show Password
</div>
<div class ="textbox">
<i class = "fa fa-lock"></i>
 <input type="password" placeholder="Confirm Password" name = "conpassword" value = "">
</div>
<br><br>
<button onClick="return checkPassword(form)"><input class = "button" type = "submit" value = "SUBMIT"></button>
</body>
</html>