<%@ page import = "com.aspire.cosmetics.database.*" import = "java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


    <% 
    String id = (String) request.getParameter("cart");
    
    Database database = new Database();
    database.loadDriver(database.databaseDriver);
    String email = (String)session.getAttribute("email");
    System.out.println(email);
    String query1 = "SELECT CART FROM USER WHERE EMAIL='"+email+"';";
	Connection connection = database.getConnection();
	Statement statement;
	ResultSet resultset = null;
	try
	{
		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY );
		resultset = statement.executeQuery(query1);
		resultset.next();
		String cartID = resultset.getString(1);
		String query2 = "UPDATE USER SET CART= '"+cartID+" "+id+"' WHERE EMAIL='"+email+"';";
   	    statement.execute(query2);
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	response.sendRedirect("cart.jsp");
    %>