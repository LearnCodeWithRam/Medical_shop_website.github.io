<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/Buy.css">
<link rel="stylesheet" href="css/Homepage.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <div class="logout-btn">
				 <form action="Start">  
				 <button  > Logout</button>
				 </form>
				
			 
			</div>
	
	  <div class="card">
           <img src="images/pills.png" width=180 height=200>
    			 	    <div class="space"><b>Product ID: ${pid} </b></div>
   				 		<div class="space"><b>Product Name: ${pname}  </b></div>
   				     	<div class="space"><b>Product Price: ${price} </b></div>
   					    <div class="space"><b>Manufacturer Name: ${mfact}</b></div>
   					   <div class="space"><b>Expiry Date: ${exp}</b></div>
   					   <div class="space"><b>Manufacturing Date: ${mdate}</b></div>
   					   
   					</div>
   			 
<center>
<div>
          <img src="images/Swiggy-Order.gif" width=1100 height=500>

<H1> Order Placed Successfully</H1>
</center>




</body>
</html>