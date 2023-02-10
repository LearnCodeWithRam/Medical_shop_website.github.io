<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet" href="css/Register.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
 .form{
    width: 100%;
    height: 35px;
    background: linear-gradient(to top, rgba(116, 102, 102, 0.8)50%,rgba(116, 102, 102, 0.8)50%);
    position:relative;
    top: 25px;
    left: 0px;
    transform: translate(0%,-5%);
    border-radius: 10px;
    padding: 25px;
}
.startbutton
{
width:10%;
} 

.form p,.startbutton 
{
float: left;
  color: #ff7200;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.form1{
    width: 100%;
    height: 40px;
    background: linear-gradient(to top, rgba(116, 102, 102, 0.8)50%,rgba(116, 102, 102, 0.8)50%);
    position:bottom;
    bottom : 0px;
    left: 0px;
    transform: translate(0%,-5%);
    border-radius: 10px;
    padding: 25px;
text-align: center;
color: #fff;
font-size: 25px;

}
 
.form1 p
{
position:center;
}
.number
{
float:right;
color: #fff;
}

.activeHome {
  background-color: #04AA6D;
}
.form button:hover {
  background: #fff;
    color: #ff7200;
}
</style>
</head>
<body style="background-color:#808080"  background="images/SellerRegistration.png">
	<div class="form">
 <form class="activeHome" action="Start"><button class="startbutton"><i class="fa fa-home"></i></button></form> 
	<p class="company">Pharmacy.com</p>		
	<p class="number">Mob.+91-8607345672</p>	
</div>                          	
	<form action="Login">
	<div class="container">
		<div class="registerbox">
			<h2>Register New Customer</h2>
			<input type="text" name="fname" placeholder="Enter First Name" required>
			<input type="text" name="lname" placeholder="Enter Last Name" required>
			<input type="text" name="email" placeholder="Enter Email ID" required>
			<input type="text"  name="phno" placeholder="Enter Phone Number">
			<input type="text" name="address" placeholder="Enter Address" required>
			<input type="text" name="uid" placeholder="Enter Customer ID" required>
			<input type="password" name="pass1" placeholder="Enter Password" required>
			<input type="password" name="pass2" placeholder="Retype Password" required>
			<input style="background-color:#ff7200" type="submit" value="Submit" >
		</div>
		</div>
	</form>
	<div class="form1">
 <p> Copyright (C) 2022 - Pharmacy.com | All rights reserved</p>
</div>	
</body>
</html>