package com.website.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConfig {
private static Connection conn;
	
	public static Connection getconn() {
          try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
		   conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","neharaj1231@");
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
