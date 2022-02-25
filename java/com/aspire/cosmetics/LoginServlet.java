package com.aspire.cosmetics;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

import com.aspire.cosmetics.Database;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("emaillogin");
		String password = request.getParameter("passwordlogin");
		System.out.println(email+password);
		Database database = new Database();
		
		String type = database.login(email,password);
		if(type.equals("admin"))
		{
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			response.sendRedirect("webpage/admin/admin.jsp");
		}
		else if(type.equals("user"))
		{
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			response.sendRedirect("webpage/products.jsp");
		}
		else {
			response.sendRedirect("webpage/account.jsp");
		}
		
	}

}

