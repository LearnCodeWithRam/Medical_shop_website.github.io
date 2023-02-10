<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="css/Homepage.css">


<style>


marquee{
      font-size: 35px;
      font-weight: 800;
      color: blue;
      font-family: sans-serif;
     
      
      
      }
      
.form{
    width: 100%;
    height: 40px;
    background: linear-gradient(to top, rgba(116, 102, 102, 0.8)50%,rgba(116, 102, 102, 0.8)50%);
    position:relative;
    top: -20px;
    left: 0px;
    transform: translate(0%,-5%);
    border-radius: 10px;
    padding: 25px;
}

.btnn{
    width: 100px;
    height: 40px;
    background: #ff7200;
    border: none;
    margin-top: 20px;
    font-size: 18px;
    border-radius: 10px;
    cursor: pointer;
    color: #fff;
    transition: 0.4s ease;
    float:left;
    margin: 12px;
}
.btnn:hover{
    background: #fff;
    color: #ff7200;
}
#logout
{
    margin-left: 600px;  
}

</style>


</head>
<body>
<div class="form">
			
				<form action="Validate.jsp"> <button class="btnn">HOME</button></form>
				 <form action="Buy"> <button class="btnn">BUY</button></form>
				<form action="Start"> <button  id="logout"  class="btnn"> LOGOUT</button></form>
</div>

<div class="active">
    
    <div class="filler"></div>
 
	 <marquee>   <h2><b><i>Welcome ${Name}</i></b> </h2>  </marquee>
			<div class="card">
  				<img src="images/User.jpg"  class="Avatar" width=234 height=234>
  				<div class="container">
    			 <div class="space1"><b></b></div>
    			 <div class="filler3"></div>
    			<div class="back" style="background-color:#fff"  >
     
    			 	    <div class="space"><b>ID: ${Id} </b></div>
   				 		<div class="space"><b>Name: ${Name}  </b></div>
   				     	<div class="space"><b>Address: ${Address} </b></div>
   					    <div class="space"><b>Phone: ${Mob}</b></div>
   					   <div class="space"><b>Email: ${Email}</b></div>
   					</div>
   					
   					
   					
  				</div>
			</div>

	
</div>
</body>
</html>