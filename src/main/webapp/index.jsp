<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        Khan cosmetics | Ecommerce website design
    </title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?
    family=Poppins:wght@300;400;500;600;700&display=swap"
    rel="stylesheet">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color:#ffd6d6;">
    <div class="header">
    <div class="container">
        <div class="Login">
            <div class="logo">
                <a href="index.jsp"><img src="extra resources/khan.jpg" width="125px">
                    </a>
            </div>
      <nav>
                <ul id="MenuItems">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="webpage/products.jsp">Products</a></li>
                     <li><a href="orders.jsp">Orders</a></li>
                    
                    <li><a href="webpage/account.jsp">Account</a></li>
    
                </ul>
            </nav>
            <a href="webpage/cart.jsp"><img src="extra resources/cart.png" width="30px" height="30px">
                </a>
            <img src="extra resources/menu.jpeg" class="menu-icon" onclick="menutoggle()">
        </div>
        <div class="row">
            <div class="col-2">
                <h1>Give Your WorkOut<br>A New Style!</h1>
                <p>Success isn't always about greatness. it's about 
                    consistency.consistent<br> hard work gains success.  
                    Greatness will come.</p>
                    <a href="" class="btn">Explore Now &#8594;</a>
            </div>
            <div class="col-2">
                <img src="extra resources/fi.png">
            </div>
        </div>
    </div>
</div>
<!------ featured categories ----------->
<div class="categories">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
                <img src="extra resources/first.jpg">
            </div>
            <div class="col-3">
                <img src="extra resources/Hair.jpg">
            </div>
            <div class="col-3">
                <img src="extra resources/facemakeuo.jpg">
             </div>
        </div>
    </div>
</div>
<!---------featured products------------>
<div class="small-container">
    <h2 class="title">Featured Products</h2>
    <div class="row">
        <div class="col-4">
            <a href="webpage/productdetails.jsp"><img src="extra resources/sugarlipstick.jpg" height="200" width="300">
                </a>
                <a href="webpage/productdetails.jsp"><h4>Sugar LipStick</h4></a>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$180.00</p>
        </div>
        <div class="col-4">
            <img src="extra resources/5-in-1.jpg" height="200" width="300">
            <h4>NY Bae 5 in 1 Lipstick</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$290.00</p>
        </div>
        <div class="col-4">
            <img src="extra resources/product4.jpg" height="200" width="300">
            <h4>Swiss Beauty Lip Pallete-Multi-01(10 g)</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$550.00</p>
        </div>
        <div class="col-4">
            <img src="extra resources/product5.jpg" height="200" width="300">
            <h4>HD MATTE LIPSTICK</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-o"></i>
            </div>
            <p>$.700</p>
        </div>
    </div>
    <h2 class="title">Latest products</h2>
    <div class="row">
            <div class="col-4">
                <img src="extra resources/lakme.jpg" height="200" width="300">
                <h4>Lakme Liquid Foundation</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>$90.00</p>
        </div>
        <div class="col-4">
            <img src="extra resources/colo3.jpg" height="200" width="300">
            <h4>Coloressence and Conceal Blemishes</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$800.00</p>
        </div>
        <div class="col-4">
            <img src="extra resources/colo.jpg" height="200" width="300">
            <h4>Coloressence Liquid Foundation</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$700.00</p>
        </div>
        <div class="col-4">
            <img src="extra resources/colo2.jpg" height="200" width="300">
            <h4>HD Foundation Stick(12.5 g)</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$250.00</p>
        </div>
        <div class="col-4">
            <img src="extra resources/Shade-01.jpg" height="200" width="300">
            <h4>Lakme</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$350.00</p>
        </div>
        <div class="col-4">
            <img src="extra resources/shade-02.jpg" height="200" width="300">
            <h4>HD Liquid Foundation</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$550.00</p>
        </div>
        <div class="col-4">
            <img src="extra resources/sery.jpg" height="200" width="300">
            <h4>Sery Stick(12.5 g)</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$440.00</p>
        </div>
        <div class="col-4">
            <img src="extra resources/traceless.jpg" height="200" width="300">
            <h4>Traceless Foundation Stick</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$1349.00</p>
        </div> 
    </div>
    <h2 class="title">Brushes and Tools</h2>
    <div class="row">
        <div class="col-4">
            <img src="extra resources/brush1.jpg" height="200" width="300">
            <h4>13 Best Makeup Brushes</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$199.00</p>
        </div> 
        <div class="col-4">
            <img src="extra resources/brush2.jpg" height="200" width="300">
            <h4>Fully Multipurpose Makeup Brush</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$999.00</p>
        </div> 
        <div class="col-4">
            <img src="extra resources/brush3.jpeg" height="200" width="300">
            <h4>JIAOER 10pcs Makeup Brushes</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$899.00</p>
        </div> 
        <div class="col-4">
            <img src="extra resources/brush4.jpg" height="200" width="300">
            <h4>Unicorn Makeup Brushes</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$340.00</p>
        </div> 
</div>
</div>
<!-------------offer---------------------->
<div class="offer">
    <div class="small-container">
        <div class="row">
            <div class="col-2">
                <img src="extra resources/redmi.jpg" class="offer-img">
            </div>
            <div class="col-2">
                <p style="color: black">Exclusively Available on KarishmaStore</p>
                <h1>Smart Band 4</h1>
                <small>The Mi Smart Band 4 features a 39.9% larger (than Mi Band 3)
                 Amoled color full-touch display 
                with adjustable brightness, so everything is clear as can be.</small>
                <a href=""  class="btn">Buy Now &#8594;</a>
            </div>
        </div>
    </div>
</div>
   <!-----------------testimonial--------------------> 
   <div class="testimonial">
       <div class="small-container">
           <div class="row">
               <div class="col-3">
                   <i class="fa fa-quote-left"></i>
                   <p>Lorem Ipsum is simply dummy text of the printing
                       and typesetting industry. Lorem Ipsum has been the industry's 
                       standard dummy text ever
                    </p>
                       <div class="rating">
                           <i class="fa fa-star"></i>
                           <i class="fa fa-star"></i>
                           <i class="fa fa-star"></i>
                           <i class="fa fa-star"></i>
                           <i class="fa fa-star-o"></i>
                       </div>
                       <img src="extra resources/artist.jpeg">
                       <h3> Sean Parker</h3>
               </div>
               <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>Lorem Ipsum is simply dummy text of the printing
                    and typesetting industry. Lorem Ipsum has been the industry's 
                    standard dummy text ever
                 </p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="extra resources/artist2.jpeg">
                    <h3>  Mike Smith</h3>
            </div>
            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>Lorem Ipsum is simply dummy text of the printing
                    and typesetting industry. Lorem Ipsum has been the industry's 
                    standard dummy text ever
                 </p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="extra resources/artist3.jpeg">
                    <h3>Mabel joe</h3>
              </div>
           </div>
       </div>
    </div>
 <!-------------------brands----------------------->
 <div class="brands">
     <div class="small-container">
         <div class="row">
             <div class="col-5">
                 <img src="extra resources/lakme1.png" width="100" height="100">
             </div>
             <div class="col-5">
                <img src="extra resources/colorrence.jpg" width="100" height="100">
            </div>
            <div class="col-5">
                <img src="extra resources/dazler.png" width="100" height="100">
            </div>
            <div class="col-5">
                <img src="extra resources/maybelline.jpg" width="100" height="100">
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
                         <img src="extra resources/googleplay.jpeg" width="100" height="100">
                         <img src="extra resources/appstore.jpeg" width="100" height=100>
                     </div>
                 </div>
                 <div class="footer-col-2">
                     <img src="extra resources/khan.jpg" width="100" height="100">
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
</body>
</html>