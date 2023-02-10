<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/Logincss.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
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

.form button
{
float:left;
 font-size: 60px;
  text-align: center;
 width:20%;
    background: #ff7200;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    color: #fff;
    transition: 0.4s ease;
    position:center;
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

<body  style="background-color: #808080;" height:100%; background="images/loginn.png">

<p class="number">Mob. +91-8607345672</p>	   					 
<div class="form">
 <form class="activeHome" action="Start"><button><i class="fa fa-home"></i></button></form> 
			
		
</div>

<div class="testbox">
  <h1>LOGIN</h1>

  <form action="Validate"  method="POST">
      <hr>
   
   
   <div class="accounttype">
					<div class="select">
  					<select  name="u" required>
    					<option value="" selected disabled>Select Account Type</option>
    					<option value="customer">Customer</option>
    					<option value="seller">Seller</option>
  					</select>
					</div>
				</div>
   
  <hr>

 
<label id="icon" for="name"><i class="icon-envelope "></i></label>

  <input type="text" name="fname" id="name" placeholder="Name" required/>

  <label id="icon" for="name"><i class="icon-user"></i></label>

  <input type="text" name="uid" id="name" placeholder="Identification" required/>

  <label id="icon" for="name"><i class="icon-shield"></i></label>

  <input type="password" name="pass1" id="name" placeholder="Password" required/>

 <center>
   <p>By clicking , you agree on our <a href="#">terms and condition</a>.
   <br>
   <br></p>
   </center>
 <input type="submit"   value="Login"/>  
 
 

</div>

<div class="form1">
 <p> Copyright (C) 2022 - Pharmacy.com | All rights reserved</p>
</div>	
 

</body>
</html>