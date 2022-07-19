package com.student;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {

	public static String url = "jdbc:mysql://localhost:3306/nawara";
	public static String username = "root";
	public static String password = "123456";
	public static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
		}catch(Exception e){
			System.out.println("Connetion is not successful...!");
		}
		return con;
	}
}
