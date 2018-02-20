<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>

<style>

body {
	font-family:"Trebuchet MS", Helvetica, sans-serif;
}

/* Style all input fields */
input {
    width: 25%;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
}

input[type=color] {
	width: 5%;
	padding: 1px;
	border-radius: 1px;
}

input[type=radio] {
	width: 5%;
	padding: 1px;
	border-radius: 1px;
}

input[type=checkbox] {
	width: 5%;
	padding: 1px;
	border-radius: 1px;
}

fieldset {
  padding: 1em;
  color: blue;
  background-color: #eef29d;
  }

/* Style the submit button */
input[type=submit] {
    background-color: #4CAF50;
    color: white;
}

/* Style the container for inputs */
.container {
    background-color: #f1f1f1;
    padding: 20px;
}

/* The message box is shown when the user clicks on the password field */
#message {
    display:none;
    background: #f1f1f1;
    color: #000;
    position: relative;
    padding: 2px;
    margin-top: 10px;
}

#message p {
    padding: 10px 35px;
    font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
    color: green;
}

.valid:before {
    position: relative;
    left: -35px;
    content: "✔";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
    color: red;
}

.invalid:before {
    position: relative;
    left: -35px;
    content: "✖";
}
</style>

</head>
<body>

<h1>Please complete the registration form:</h1>

<form action="success" method="get"> <!-- upon submit, go to success page -->

<fieldset>
<legend>Personal Information (All fields required)</legend>
First Name: <input type="text" name="fName" placeholder="Jane" required> <br> <!-- required -->
Last Name: <input type="text" name="lName" placeholder="Doe" required> <br>
Username: <input type="text" name="username" placeholder="username" required> <br>
Password: <input type="password" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="password" required>
<div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>

</fieldset>



<fieldset>
<legend>Additional Information</legend>
Email: <input type="text" id="email" name="email" onfocus="myFunction()" onblur="blurFunction()" placeholder="janedoe@abc.com"> <br>
Phone Number: <input type="tel" name="phone" placeholder="(313)555-1212"> <br>
Date of Birth: <input type="date" name ="date" placeholder="mm/dd/yyyy"> <br>

<fieldset>
<legend>Gender</legend>
<input type="radio" name="gender" value="Male" checked>Male <br>
<input type="radio" name="gender" value="Female">Female <br>
<input type="radio" name="gender" value="non-binary">Non-binary <br>
</fieldset>
</fieldset>

<br>

<fieldset>
<legend>Toast Order</legend>
<input type="checkbox" name="toast" value="butter">Butter <br>
<input type="checkbox" name="toast" value="jam">Jam <br>
<input type="checkbox" name="toast" value="molasses">Molasses <br>
</fieldset>

<!--  dropdown example -->
<fieldset>
<legend>Coffee Order</legend>
<select name="dropDown">
	<option value="Espresso">Espresso</option>
	<option value="latte">Latte</option>
	<option value="Cappuccino">Cappuccino</option>
	<option value="regular">Regular</option>
</select>
</fieldset>

<fieldset>
<legend>T-Shirt</legend>
<input type="color" name="color" value="#ff0000">Pick your color<br>
</fieldset>
<br>
<input type="submit" value="Submit">

</form>

<script>
var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
    document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
    document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}

// email functions
function myFunction() {
    document.getElementById("email").style.backgroundColor = "red";
}
function blurFunction() {
    // No focus = Changes the background color back
    document.getElementById("email").style.background = "none";
}

	
</script>

</body>
</html>