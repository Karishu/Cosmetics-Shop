<%@ page  import ="com.aspire.cosmetics.database.Database" 
import ="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../../css/style.css">
<title>View All Orders</title>
</head>
<body style="background-image:url('../../extra%20resources/back.jpg');">
<p style="font-size:100px">&#128147;&#128149;&#128154; &#128158;<br><h1><mark style="background-color: blue;color:white;">Welcome to ViewAllOrder Page</mark></h1>
</p>


<%
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
	
out.println("<table>");

out.println("<tr><td style='text-align:center;'><b>Orders ID</b></td><td style='text-align:center;'><b>Name</b></td><td style='text-align:center;'><b>Email<b></td><td style='text-align:center;'><b>Product ID</b></td><td style='text-align:center;'><b>Delivery Status</b></td></tr>");

while(resultSet.next())
{
	   String orderID = resultSet.getString(1);
	   String name = resultSet.getString(2);
	   String email = resultSet.getString(3);
	   String ProductID = resultSet.getString(4);
	   boolean DeliveryStat = resultSet.getBoolean(5);
	   String c = DeliveryStat?"Delivered":"Pending";
	   
	   out.println("<tr><td>"+orderID+"</td>");
	   out.println("<td>"+name+"</td>");
	   out.println("<td>"+email+"</td>");
	   out.println("<td>"+ProductID+"</td>");
	   out.println("<td>"+c+"</td></tr>");

}

out.println("</table>");

%>

</body>
</html>