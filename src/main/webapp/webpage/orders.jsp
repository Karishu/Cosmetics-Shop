	<%@ page  import ="com.aspire.cosmetics.database.Database" 
import="java.sql.*" import ="java.util.*" 
import ="com.aspire.cosmetics.getdetails.*"  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
       Orders
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
                   <li><a href="orders.jsp">Orders</a></li>
                    <li><a href="../webpage/account.jsp">Account</a></li>
    
                </ul>
            </nav>
            <a href="../webpage/cart.jsp"><img src="../extra resources/cart.png" width="30px" height="30px">
            </a>
            <img src="../extra resources/menu.jpeg" class="menu-icon" onclick="menutoggle()" width="30px" height="30px">
        </div>
       </div>
       
       <div class = 'orders'>
       <table>
       <tr>
       <td>OrderID</td>
       <td>ProductID</td>
       <td>Name</td>
       <td>Email</td>
       <td>Delivery status</td>
     
       </tr>
       <%
       GetProfile profile = new GetProfile();
       String email =(String) session.getAttribute("email");
       ResultSet set = profile.getProfile(email);
       set.next();
       String orders = set.getString(6);
       Database database = new Database();
       database.loadDriver(database.databaseDriver);
      
   		Connection connection = database.getConnection();
   		Statement statement = connection.createStatement();
   		ResultSet resultSet = null;
   		try{
   			resultSet = statement.executeQuery("SELECT * FROM ORDERS");
   		
   		}
   		catch(Exception e)
   		{
   			e.printStackTrace();
   		}
       while(resultSet.next())
       {
    	   String orderID = resultSet.getString(1);
    	   String ProductID = resultSet.getString(4);
    	   String Name = resultSet.getString(2);
    	   String Email = resultSet.getString(3);
    	   boolean DeliveryStat = resultSet.getBoolean(5);
    	   String c = DeliveryStat?"Delivered":"Pending";
    	   if(orders.contains(orderID))
    	   {
    		   
    		   out.println("<tr><td>"+orderID+"</td>");
    		   out.println("<td>"+ProductID+"</td>");
    		   out.println("<td>"+Name+"</td>");
    		   out.println("<td>"+Email+"</td>");
    		   out.println("<td>"+c+"</td></tr>");

    		   
    	   }
       }
       
       %>
       </table>
       </div>
       
       
       
 </body>
 </html>