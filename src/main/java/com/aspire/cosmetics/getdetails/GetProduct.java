package com.aspire.cosmetics.getdetails;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

import com.aspire.cosmetics.database.*;

public class GetProduct {

	public ResultSet getProducts()
	{
		Database database = new Database();
		database.loadDriver(database.databaseDriver);
		String query = "SELECT * FROM PRODUCT;";
		Connection connection = database.getConnection();
		Statement statement;
		ResultSet resultset = null;
		try
		{
			statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY );
			resultset = statement.executeQuery(query);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return resultset;
	}
}