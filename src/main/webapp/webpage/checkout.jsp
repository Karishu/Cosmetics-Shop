<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
       Checkout
    </title>
    <link rel="stylesheet" href="../css/style.css">
    
    <link href="https://fonts.googleapis.com/css2?
    family=Poppins:wght@300;400;500;600;700&display=swap"
    rel="stylesheet">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>    
<body style="background-color:#ffd6d6;">
       <div class="container">
         <div class="Login">
            <div class="logo">
                 <a href="../index.jsp"><img src="../extra resources/khan.jpg" width="125px"></a>
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="../index.jsp">Home</a></li>
                    <li><a href="../webpage/products.jsp">Products</a></li>
                   
                    <li><a href="../webpage/account.jsp">Account</a></li>
    
                </ul>
               
            </nav>
            <a href="../webpage/cart.jsp"><img src="../extra resources/cart.png" width="30px" height="30px">
            </a>
            <img src="../extra resources/menu.jpeg" class="menu-icon" onclick="menutoggle()" width="30px" height="30px">
        </div>
       </div>
       <div class="checkoutPage">
       <form style="margin:50px;" action="../webpage/buyNowCode.jsp?id=<%= request.getParameter("cart")%>" method ='post'>
       <input type='text' id='cardNumber' name ='cardNumaber' placeholder="Card Number" required>
       <br>
       <input type='text' id='name' name ='name' placeholder="Card Holder Name" required>
       <br>
       <input type='text' id='exp' name ='exp' placeholder="Expire Date">
       <br>
       <input type='text' id='cvv' name ='cvv' placeholder="CVV">
       <br>
       <input type='submit' id='check' name ='check' value='CheckOut'>
       </form>

       </div>
 
<script src="../javascript/paymentvalitation.js"></script>       
 </body>
 </html>