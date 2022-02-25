package com.aspire.cosmetics;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import com.aspire.cosmetics.database.Database;

@WebServlet("/update")
public class updateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public updateProduct() {
        super();
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//
		Database database = new Database();
		database.loadDriver(database.databaseDriver);
		String column = "";
		String value = "";
		
		
		
		String name ="~";
		String price ="~";
		String quantity ="~";
		String img ="~";
		String shade ="~";
		String category ="~";
		String desc ="~";
		
		 name += request.getParameter("name");
		 String id = request.getParameter("ID");
		 price += request.getParameter("price");
		 quantity += request.getParameter("quantity");
		 img += request.getParameter("image");
		 shade += request.getParameter("shade");
		 category += request.getParameter("category");
		 desc += request.getParameter("desc");
		
		
		Connection connection = database.getConnection();
		Statement statement;
		
		String[] columnArray = {"name","image","quantity","price","shade","category"};
		String[] valueArray = {name, img, quantity, price, shade, category};
		
		//
		try {
			statement = connection.createStatement();
		for(int i=0; i<6;i++)
		{
			try {
				if(valueArray[i].length() >1)
				{
					String query = "UPDATE PRODUCT SET "+columnArray[i]+"="+valueArray[i].substring(1)+" WHERE productid="+id+"";
					statement.execute(query);
				}
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
