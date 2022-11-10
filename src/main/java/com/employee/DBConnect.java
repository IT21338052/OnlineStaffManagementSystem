package com.employee;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String URL = "jdbc:mysql://@localhost:3306/employeemanagementsystem";
	private static String user = "root";
	private static String password1 = "1234";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(URL, user, password1);			
			
		}
		catch(Exception e) {
			System.out.println("Database Connection failed!");
		}
		
		return con;
	}

}
