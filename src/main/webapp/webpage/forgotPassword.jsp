<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
       All products- Khan cosmetics
    </title>
    <link rel="stylesheet" href="../css/style.css">
    <link href="https://fonts.googleapis.com/css2?
    family=Poppins:wght@300;400;500;600;700&display=swap"
    rel="stylesheet">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    
       <div class="container">
         <div class="Login">
            <div class="logo">
                <a href="../index.jsp"><img src="../extra resources/khan.jpg" width="125px">
                </a>
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="../index.jsp">Home</a></li>
                    <li><a href="products.jsp">Products</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
    
                </ul>
            </nav>
            <a href="../webpage/cart.jsp"><img src="../extra resources/cart.png" width="30px" height="30px">
            </a>
            <img src="../extra resources/menu.jpeg" class="menu-icon" onclick="menutoggle()" width="30px" height="30px">
        </div>
        
    
</div>
<!------------account-page-------------->
<div class="account-page">
    <div class="container">
        <div class="row">s
            <div class="col-2">
                <img src="../extra resources/background1.png" width="100%">
            </div>
            
            <div class="col-2">
                <div class="form-container">
                   <h2>Change Password</h2>
                   <form action="../forget" method="post">
                   	<input type="email" name="email" placeholder="Enter Email" required>
                   	<input type="password" name="newPassword" placeholder="New password" required>
                   	<button type="submit" class="btn" >Save</button>
                    <a href="account.jsp" class="btn">Login</a>
                   
                   </form>
                   
                    <!-- <div id="message">
                        <h3>Password must contain the following:</h3>
                        <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                        <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                        <p id="number" class="invalid">A <b>number</b></p>
                        <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                      </div> -->
                </div>
            </div>
        </div>
    </div>
</div>

     <!------------footer---------------->
     <div class="footer">
         <div class="container">
             <div class="row">
                 <div class="footer-col-1">
                     <h3>Download Our App</h3>
                     <p>Download App for Android and ios mobile phone.</p>
                     <div class="app-logo">
                         <img src="../extra resources/googleplay.jpeg" width="100" height="100">
                         <img src="../extra resources/appstore.jpeg" width="100" height=100>
                     </div>
                 </div>
                 <div class="footer-col-2">
                     <img src="../extra resources/khan.jpg" width="100" height="100">
                    <p>Our Purpose Is To Sustainbly Make the pleasure and Benefits of Sports Accessible to the Many.</p>
                </div>
                <div class="footer-col-3">
                    <h3>useful Links</h3>
                    <ul>
                        <li>Coupons</li>
                        <li>Blog Post</li>
                        <li>Return Policy</li>
                        <li>Join Affiliate</li>
                    </ul>
                </div>
                <div class="footer-col-3">
                    <h3>Follow us</h3>
                    <ul>
                        <li>Facebook</li>
                        <li>Twitter</li>
                        <li>Instagram</li>
                        <li>YouTube</li>
                    </ul>
                </div>
             </div>
             <hr>
             <p class="copyright">Copyright 2022 - karish cosmetics</p>
         </div>
     </div>
 <!-----------------js for toggle menu---------------------------->
 <script>
     var MenuItems = document.getElementById("MenuItems");

     MenuItems.style.maxHeight = "0px";

     function menutoggle()
     {
         if(MenuItems.style.maxHeight == "0px")
         {
             MenuItems.style.maxHeight = "200px";
         }
         else{
             MenuItems.style.maxHeight = "0px";  
         }
     }
 </script>
<script src="../javascript/signupvalitation.js"></script>
</body>
</html>