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
<title>Add Product</title>
<link rel="stylesheet" href="css/AddProduct.css">
</head>
<body>
<div class="form">
					<form action="ValidateSeller"> <button class="btnn">HOME</button></form>
					<form action="AddProductSeller"> <button class="btnn">ADD</button></form>
				 	<form action="Stock"> <button class="btnn">STOCK</button></form>
					<form action="Start"> <button  id="logout"  class="btnn"> LOGOUT</button></form>

</div>
	
	
<div class="active">
	<div class="filler"></div>
		<h2>Add product</h2>
		<form action="AddProduct" method="post">
			<div class="bigcard">
				<div class="bigcard1">
				<h3>Enter Seller Id</h3><input type='text' name='sid' required>
					<h3>Enter Product Name</h3><input type='text' name='prname' required>
					<h3>Enter Product ID</h3><input type='text' name='prid' required>
					<h3>Enter Manufacturer Name</h3><input type='text' name='mfname' required>
					<h3>Enter Manufacture Date</h3><input type="text" name="mdate" placeholder="YYYY-MM-DD" onkeypress="return event.charCode>= 48 && event.charCode<= 57 || event.charCode==45" required>
					<h3>Enter Expiry Date</h3><input type="text" name="edate" placeholder="YYYY-MM-DD" onkeypress="return ((event.charCode>= 48 && event.charCode<= 57) || event.charCode==45)" required>
    		  	</div>
  		    	<div class="bigcard2">
   					 <h3>Quantity</h3><input type="text" name="quantity" onkeypress="return event.charCode>= 48 && event.charCode<= 57" required>
   					 <h3>Price</h3><input type="text" name="price" onkeypress="return event.charCode>= 48 && event.charCode<= 57" required>
   					 <p></p>
 					 <input type="submit" value="Add">
				</div>
			</div>
		</form>
	</div>
</body>
</html>