<%@ page  import ="com.aspire.cosmetics.database.*" 
import="java.sql.*" import ="java.util.*" 
import ="com.aspire.cosmetics.getdetails.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    String ids = request.getParameter("id");
    Database database = new Database();
    database.loadDriver(database.databaseDriver);
   	String email =(String) session.getAttribute("email");
	Connection connection = database.getConnection();
	Statement statement = connection.createStatement();
	Statement statement2 = connection.createStatement();
	GetProfile getprof = new GetProfile();
	ResultSet resultSet =  getprof.getProfile(email);
	resultSet.next();
	String name = resultSet.getString(1);
	String orders ="";
	try
	{
		
		
		String[] array = ids.split(" ");
		int count =0;
		for(String temp: array)
		{
			
			if(count!=0)
			{
				Random rnd = new Random();
				int number = rnd.nextInt(999999);
		
				String orderID = String.format("%06d", number);
				orders = orders+" "+orderID;
				String query = "INSERT INTO ORDERS VALUES('"+orderID+"','"+name+"','"+email+"','"+temp+"','0')";
				
				statement.execute(query);
			}
			count++;
			
		}
		statement2.execute("UPDATE USER SET ORDERS ='"+orders+"' WHERE EMAIL='"+email+"'");
		statement2.execute("UPDATE USER SET CART='' WHERE EMAIL='"+email+"'" );
	}
	catch(Exception E)
	{
		E.printStackTrace();
	}
	response.sendRedirect("../webpage/orders.jsp?orders="+orders+"");
    
    %>