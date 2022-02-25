<%@ page  import = "com.aspire.cosmetics.getdetails.*" import = "java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All</title>
<link rel="stylesheet" href="../../css/style.css">
    <link href="https://fonts.googleapis.com/css2?
    family=Poppins:wght@300;400;500;600;700&display=swap"
    rel="stylesheet">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body  style="background-color:#ffd6d6;">

    <div class="small-container">
        <h2 class="title">All Products</h2>
        <div class="row">
       <ul id = "ulist">
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
		
			out.println("<li>");
			out.println(" <div id='Viewproducts' >");
			//out.println("<a href='productdetails.jsp?id="+productID+"'>");
			out.println(" <img src ='../"+imageURL+"' height='200' width='300'>");
			out.println(" <h4>"+name+"</h4>");
			out.println("<div class='rating'>");
			out.println("<i class='fa fa-star'></i>");
			out.println("<i class='fa fa-star'></i>");
			out.println("<i class='fa fa-star'></i>");
			out.println("<i class='fa fa-star'></i>");
			out.println("<i class='fa fa-star'></i>");
			out.println("</div>");
			out.println(" <p>Price - $"+price+"</p>");
			out.println(" <p>Product Id - "+productID+"</p>");
			out.println(" <p>Quantity - "+quantity+"</p>");
			out.println(" <p>Shade - "+shade+"</p>");
			out.println(" <p>Category - "+category+"</p>");
			//out.println("</a>");
			out.println(" </div>");
			out.println("</li>");
	}

%>
   </ul>    
</div>

    <div class="page-btn">
        <span>1</span>
        <span>2</span>
        <span>3</span>
        <span>&#8594;</span>

    </div>
</div>


</body>
</html>