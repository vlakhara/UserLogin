package com.vipul;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/Login")
public class UserValidate extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean flag = true;
		
		//JDBC
		
		String url = "jdbc:mysql://localhost:3306/vipul";
		String driver = "com.mysql.cj.jdbc.Driver";
		String user = "root";
		String pass = "Vipul@060101";
		
		//PrintWriter object
		
		PrintWriter out = response.getWriter();
	
		//Form inputs
		
		String uName = request.getParameter("uName").toLowerCase().trim();
		String uPwd = request.getParameter("uPwd").toLowerCase().trim();
		
		//Session
		
		HttpSession session = request.getSession();
		session.setAttribute("uName", uName);
		
		//Connection
		
		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url,user,pass);
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("Select * from users");
			while(rs.next()) {
				if(uName.equals(rs.getString(1).toLowerCase().trim()) && uPwd.equals(rs.getString(2).toLowerCase().trim())) {
					response.sendRedirect("Home.jsp");
					flag=false;
				}
			}
			if(flag) {
				response.sendRedirect("LoginForm.jsp");
			}
			
			
			
		}
		catch(SQLException e) {
			out.println("Error 505");
		} catch (ClassNotFoundException e) {
			out.println("Error 505");
		}
		
	}

}








