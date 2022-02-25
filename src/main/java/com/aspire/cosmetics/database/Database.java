package com.aspire.cosmetics.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class Database {
	 public String databaseDriver = "com.mysql.cj.jdbc.Driver";
	 public String databaseUserName = "root";//username
	 public String databasePassword = "Karishma@1234";//password
	 public String databaseURL = "jdbc:mysql://localhost:3306/web";//changeport
	 
	 public void loadDriver(String databaseDriver)
		{
			try {
				Class.forName(databaseDriver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		
	public Connection getConnection()
		{
			Connection connection = null;
			try {
				connection = DriverManager.getConnection(databaseURL, databaseUserName, databasePassword);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return connection;
		}
	
	public void  signup(String name, String email, String phoneNumber, String password)
	{
		loadDriver(databaseDriver);
		String query = "INSERT INTO USER VALUES(?, ?, ?, ?, ?, ?, ?)";
		Connection connection = getConnection();
		PreparedStatement preparedStatement;
		
		try {
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, email);
			preparedStatement.setString(3, phoneNumber);
			preparedStatement.setString(4, password);
			preparedStatement.setString(5, "");
			preparedStatement.setString(6, "");
			preparedStatement.setString(7, "user");

			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public String login(String email , String password)
	{
		loadDriver(databaseDriver);
		Connection connection = getConnection();
		String query = "SELECT * FROM USER WHERE EMAIL = ? 	AND PASSWORD = ?";
		PreparedStatement preparedStatement;
		ResultSet resultSet = null;
		
		try {
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			
			
			resultSet = preparedStatement.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if(resultSet.next())
			{
				return resultSet.getString(7);
			} 
			else
			{
				return "err";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return "err";
	}
	public String ChangePassword(String newPassword, String email) {
		loadDriver("databaseDriver");
		Connection connection = getConnection();
		String query = "UPDATE USER SET PASSWORD = ? WHERE EMAIL = ?";
		PreparedStatement preparedStatement;
		ResultSet resultSet = null;
		
		try {
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, newPassword);
			preparedStatement.setString(2, email);
			
			
			resultSet = preparedStatement.executeQuery();
		}
		 catch (SQLException e) {
				e.printStackTrace();
			}
		try {
			if(resultSet.next())
			{
				return resultSet.getString(7);
			} 
			else
			{
				return "err";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return "err";
	}
}