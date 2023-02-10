<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@  page import = "java.util.*"  %>
    
    
    <%@  page import = "com.ram.*"  %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Received</title>
<style>
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
				<form action="ValidateSeller"> <button class="btnn">HOME</button></form>		
				<form action="AddProductSeller"> <button class="btnn">ADD</button></form>				
			 <form action="Stock"> <button class="btnn">STOCK</button ></form>			 	 
			 <form action="receivedorder"> <button class="btnn">ORDER RECEIVED</button></form>			
			  <form action="Start"><button id="logout"  class="btnn"> LOGOUT</button></form>
		
</div>

 <%
    List<String> list= (List<String>) request.getAttribute("l");
    int i=1;
    %>

  
         <%
   for(String ps: list)
	   
   {     out.print(i);
   out.println(ps);
   i++;
   }
   %>









</body>
</html>