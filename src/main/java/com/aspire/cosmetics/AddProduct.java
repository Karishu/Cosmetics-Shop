package com.aspire.cosmetics;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.aspire.cosmetics.database.Database;

@WebServlet("/addProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddProduct() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Database database = new Database();
		database.loadDriver(database.databaseDriver);
		String query = "INSERT INTO PRODUCT VALUES(?, ?, ?, ?, ?, ?, ?, ?);";
		
		
		String name = request.getParameter("name");
		String id = request.getParameter("ID");
		String price = request.getParameter("price");
		String quantity = request.getParameter("quantity");
		String img = request.getParameter("image");
		String shade = request.getParameter("shade");
		String category = request.getParameter("category");
		String desc = request.getParameter("desc");
		
		
		Connection connection = database.getConnection();
		PreparedStatement statement;
		ResultSet resultset = null;
		try
		{
			statement = connection.prepareStatement(query);
			statement.setString(1, id);
			statement.setString(2, name);
			statement.setString(3, img);
			statement.setString(4, quantity);
			statement.setString(5, desc);
			statement.setString(6, price);
			statement.setString(7, shade);
			statement.setString(8, category);
			statement.execute();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		}

}