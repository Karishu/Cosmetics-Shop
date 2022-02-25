<%@ page  import = "com.aspire.cosmetics.getdetails.*" import = "java.sql.*"  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% float total = 0; %>
    
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
                 <a href="../index.jsp"><img src="../extra resources/khan.jpg" width="125px"></a>
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="../index.jsp">Home</a></li>
                    <li><a href="../webpage/products.jsp">Products</a></li>
                    
                  <li><a href="orders.jsp">Orders</a></li>
                    <li><a href="../webpage/account.jsp">Account</a></li>
    
                </ul>
            </nav>
            <a href="../webpage/cart.jsp"><img src="../extra resources/cart.png" width="30px" height="30px">
            </a>
            <img src="../extra resources/menu.jpeg" class="menu-icon" onclick="menutoggle()" width="30px" height="30px">
        </div>
        
    
</div>
<!----------cart items details----------->
<div class="small-container cart-page">
<div class="small-container">
    <table>
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Subtotal</th>
        </tr>
        <%
        GetProfile getpro = new GetProfile();
    	ResultSet resultSet = getpro.getProfile((String)session.getAttribute("email"));
    	resultSet.next();
        String list = resultSet.getString(5);
    	String email = (String)session.getAttribute("email");
    	GetProduct getproduct = new GetProduct();
    	ResultSet resultSet2 = getproduct.getProducts();
    	
    	
    	
    	while(resultSet2.next()){
    		String productID = resultSet2.getString(1);
    		
    		if(list.contains(productID))
    		{
    			String name = resultSet2.getString(2);
	    		String imageURL = resultSet2.getString(3);
	    		String quantity = resultSet2.getString(4);
	    		String description = resultSet2.getString(5);
	    		String price = resultSet2.getString(6);
	    		String shade = resultSet2.getString(7);
	    		String category = resultSet2.getString(8);
	    		
		    		out.println("<tr>");
		    		out.println("<td>");
		    		out.println("<div class='cart-info'>");
		    		out.println("<img src='"+imageURL+"'>");
		    		out.println("<div>");
		    		out.println("<p>"+name+"</p>");
		    		out.println("<small>$"+price+"</small>");
		    		total += Float.parseFloat(price);
		    		out.println("<form action='/remove'><input type='hidden' name='Productname' value="+name+"><input type='hidden' name='email' value="+email+"><button>Remove</button></form>");
		    		out.println("</div>");
		    		out.println("</div>");
		    		out.println("</td>");
		    		out.println("<td><input type='number' value='1'></td>");
		    		out.println("<td>$"+price+"</td>");
		    		out.println(" </tr>");
		    		out.println("");
    		}
    	}
    	//below prices not changed
        %>
    </table>
     
      <div class="total-price">
          <table>
              <tr>
                  <td>Subtotal</td>
                  <td>$<%=total %></td>
              </tr>
              <tr>
                  <td>Tax</td>
                  <td>$<%=total/10 %></td>
              </tr>
              <tr>
                <td>Total</td>
                <td>$<%=total+(total/10) %></td>
            </tr>
            <tr>
            <td> <a href='../webpage/checkout.jsp?cart=<%=list %>' class='btn'>Buy Now</a></td>
            </tr>
          </table>
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