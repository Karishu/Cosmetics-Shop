<%@ page  import = "com.aspire.cosmetics.getdetails.*" import = "java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
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
<body
 style="background-color:#ffd6d6;">
    
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
                    
                    <li><a href="account.jsp">Account</a></li>
                    <li><a href="orders.jsp">Orders</a></li>
    
                </ul>
            </nav>
            <a href="cart.jsp"><img src="../extra resources/cart.png" width="30px" height="30px">
            </a>
            <img src="../extra resources/menu.jpeg" class="menu-icon" onclick="menutoggle()" width="30px" height="30px">
        </div>
        
    
</div>


<div class="small-container">

    <div class="row row-2">
        <h2>All products</h2>
        <select>
            <option>Default Shorting</option>
            <option>Short by price</option>
            <option>Short by popularity</option>
            <option>Short by rating</option>
            <option>Short by sale</option>

        </select>
    </div>

    
</div>

    <div class="small-container">
        <h2 class="title">Featured Products</h2>
        <div class="row">
<%
	GetProduct getproduct = new GetProduct();
	ResultSet resultSet = getproduct.getProducts();
	
	while(resultSet.next())
	{
		String productID = resultSet.getString(1);
		String name = resultSet.getString(2);
		String imageURL = resultSet.getString(3);
		String quantity = resultSet.getString(4);
		String description = resultSet.getString(5);
		String price = resultSet.getString(6);
		String shade = resultSet.getString(7);
		String category = resultSet.getString(8);
		
		
			out.println(" <div class='col-4' onclick='productdetails.jsp'>");
			out.println("<a href='productdetails.jsp?id="+productID+"'>");
			out.println(" <img src='"+imageURL+"' height='200' width='300'>");
			out.println(" <h4>"+name+"</h4>");
			out.println("<div class='rating'>");
			out.println("<i class='fa fa-star'></i>");
			out.println("<i class='fa fa-star'></i>");
			out.println("<i class='fa fa-star'></i>");
			out.println("<i class='fa fa-star'></i>");
			out.println("<i class='fa fa-star'></i>");
			out.println("</div>");
			out.println(" <p>$180.00</p>");
			out.println("</a>");
			out.println(" </div>");
	}

%>
       
</div>

    <div class="page-btn">
        <span>1</span>
        <span>2</span>
        <span>3</span>
        <span>&#8594;</span>

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
</body>
</html>