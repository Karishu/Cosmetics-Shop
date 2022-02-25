<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
<h1>Welcome to AddProduct Page</h1>
<body style="background-image:url('../../extra%20resources/back.jpg');">
<body style="background-color:#ffd6d6;">
<p style="font-size:100px">&#129419;&#128132;&#128133; &#128139;</p>
</p>

<form action="http://localhost:8080/cosmetics/addProduct" method='post'>
<input type='text' id='ID' name='ID' placeholder="Product ID">
<input type='text' id='name' name='name' placeholder="Product Name">
<input type='text' id='price' name='price' placeholder="Product Price">
<input type='text' id='quantity' name='quantity' placeholder="Product Quantity">
<input type='text' id='image' name='image' placeholder="Product Image Source">
<input type='text' id='shade' name='shade' placeholder="Product Shade">
<input type='text' id='category' name='category' placeholder="Product Category">
<input type='text' id='desc' name='desc' placeholder="Product Description">
<input type ="submit" value="Add Product">
</form>


</body>
</html>