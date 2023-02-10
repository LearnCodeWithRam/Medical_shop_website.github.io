<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@  page import = "java.util.*"  %>
    
    
    <%@  page import = "com.ram.*"  %>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="ISO-8859-1">
<title>ReStock</title>
<link rel="stylesheet" href="css/Buy.css">
</head>
<body>

    		<div class="form">
 				<form action="ValidateSeller"> <button class="btnn">HOME</button></form>
				<form action="AddProductSeller"> <button class="btnn">ADD</button></form>
			 	<form action="Stock"> <button class="btnn">STOCK</button></form>
    			<form action="Start">  <button id="logout"  class="btnn"> LOGOUT</button> </form>

</div>

<div class="active">
 
    <%
    List<ProductSeller> list= (List<ProductSeller>) request.getAttribute("l");
    int flag=0;
    %>

   
 <div class="filler2"></div>
  <div class="block">
         <%
   for(ProductSeller ps: list)
	   
   {  
              if(flag==4)
				{
					flag=1;
					 %>
			</div>
			<div class="filler2"></div>
			 <%
				}
				else
				   flag++;
                  %>
   
   <div class="row">
     <div class="column">
        <div class="card">
          <img src="images/pills.png" width=180 height=200>
  
      <%
	   out.println("   <p><b>Product Name:</b> </p>"+ps.getPrname());
	   out.println("   <p><b>Expiry Date: </b> </p>"+ps.getEdate());
	   out.println("   <p><b> Price:     </b> </p>"+ps.getPrice());
	   out.println("   <p><b>  Manufactrue Name:</b> </p>"+ps.getMfname());
	   out.println("   <p><b> Product ID:</b> </p>"+ps.getPrid());
	   out.println("   <p><b>Quantity:   </b> </p>"+ps.getQuantity());
	   out.println("<br>");
	   %>
	   </div>
	   </div>
	  <%  
	   
   }
   
   
   %>
   

</body>
</html>