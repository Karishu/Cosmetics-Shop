<%@ page import = "com.aspire.cosmetics.getdetails.*" import = "java.sql.*"  language="java" contentType="text/html; charset=ISO-8859-1"
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
<body style="background-color:#ffd6d6;">
    
       <div class="container">
         <div class="Login">
            <div class="logo">
                <a href="../index.jsp"><img src="../extra resources/khan.jpg" width="125px">
                </a>
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="../index.jsp">Home</a></li>
                    <li><a href="">Products</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="account.jsp">Account</a></li>
    
                </ul>
            </nav>
            <a href="cart.jsp"><img src="../extra resources/cart.png" width="30px" height="30px">
            </a>
            <img src="../extra resources/menu.jpeg" class="menu-icon" onclick="menutoggle()" width="30px" height="30px">
        </div>
        
    
</div>
<!--------------single product details----------->

<div class="small-conatiner single-product">
    <div class="row">
        <div class="col-2">
        
        <%
        GetProduct product = new GetProduct();
    	ResultSet resultSet = product.getProducts();
    	
    	String id = request.getParameter("id");
    	while(resultSet.next())
    	{
    		
	    	String productID = resultSet.getString(1);
	    	if(id.equals(productID))
	    	{
	    		String name = resultSet.getString(2);
	    		String imageURL = resultSet.getString(3);
	    		String quantity = resultSet.getString(4);
	    		String description = resultSet.getString(5);
	    		String price = resultSet.getString(6);
	    		String shade = resultSet.getString(7);
	    		String category = resultSet.getString(8);
	    		
	    		out.println("<img src='"+imageURL+"' width='100%' id='productImg'>");
	    		out.println("</div>");
	    		out.println("<div class='col-2'>");
	    		out.println("<p>Home / "+category+"</p>");
	    		out.println(" <h1>"+name+"</h1>");
	    		out.println("<h4>$"+price+"</h4>");
	    		out.println("<select>");
	    		out.println("<option>Shade</option>");
	    		out.println(" <option>Nude Set</option>");
	    		out.println("<option>Brown</option>");
	    		out.println(" <option>Brown Set</option>");
	    		out.println(" </select>");
	    		out.println(" <input type='number' value='1'>");
	    		out.println(" <a href='addToCart.jsp?cart="+productID+"' class='btn'>Add To Cart</a>");
	    		out.println(" <h3>Product Details <i class='fa fa-indent'></i></h3>");
	    		out.println(" <br>");
	    		out.println("<p>"+description+"</p> ");
	    		out.println("</div>");
	    	}
    	}
        
        %>

    </div>
</div>
<!---------title------------->
<div class="small-container">
    <div class="row row-2">
        <h2>Related Products</h2>
        <p>View More</p>
    </div>
</div>
<!--------products----------->

<div class="small-container">

    
       
        <div class="row">
            <div class="col-4">
                <img src="../extra resources/brush1.jpg" height="200" width="300">
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
                <img src="../extra resources/brush2.jpg" height="200" width="300">
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
                <img src="../extra resources/brush3.jpeg" height="200" width="300">
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
                <img src="../extra resources/brush4.jpg" height="200" width="300">
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

 <!-------------js for product gallery------------------->

     <script>
         var productImg = document.getElementById("productImg");
         var SmallImg = document.getElementsByClassName("small-img");

         SmallImg[0].onclick = function()
         {
             productImg.src = SmallImg[0].src;
         }
         SmallImg[1].onclick = function()
         {
             productImg.src = SmallImg[1].src;
         }
         SmallImg[2].onclick = function()
         {
             productImg.src = SmallImg[2].src;
         }
         SmallImg[3].onclick = function()
         {
             productImg.src = SmallImg[3].src;
         }
     </script>

</body>
</html>