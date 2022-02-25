package com.aspire.cosmetics;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

import com.aspire.online_cosmetic_shop.database.*;

public class GetProfile {
	public ResultSet getProfile(String email)
	{
		Database database = new Database();
		database.loadDriver(database.databaseDriver);
		String query = "SELECT * FROM USER WHERE EMAIL='"+email+"';";
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