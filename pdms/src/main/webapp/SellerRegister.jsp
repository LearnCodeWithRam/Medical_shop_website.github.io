<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="css/Register.css">
</head>
<body  style="background-color:#808080"  background="images/SellerRegistration.png">
	<form action="Login1">
		<div class="container">
			<div class="registerbox">
				<h2>Register New Vendor</h2>
				<input type="text" name="fname" placeholder="Enter Name" required>
				<input type="text" name="lname" placeholder="Enter Last Name" required>
				<input type="text" name="email" placeholder="Enter Email ID" required>
				<input type="text"  name="phno" placeholder="Enter Phone Number" onkeypress="return event.charCode>= 48 && event.charCode<= 57" required>
				<input type="text" name="address" placeholder="Enter Address" required>
				<input type="text" name="uid" placeholder="Enter Vendor ID" required>
				<input type="password" name="pass1" placeholder="Enter Password" required>
				<input type="password" name="pass2" placeholder="Retype Password" required>
				<input type="submit"  style="background-color:#ff7200" value="Submit" >
			</div>
		</div>
	</form>
</body>
</html>