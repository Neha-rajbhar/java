package com.website.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.website.Model.Users;

public class UserDaoImpl {
	private String dburl="jdbc:mysql://localhost:3306/cake";
	 private String dbuname="root";
	 private String dbpassword="neharaj1231@";
	 private String dbDriver="com.mysql.cj.jdbc.Driver";
	 
	 
	 public void loadDriver(String dbDriver) {
		 try {
			Class.forName(dbDriver);
		     }
		 catch (ClassNotFoundException e) 
		 {
			
			e.printStackTrace();
		}
	 }
	 
	 public Connection getConnection() throws SQLException {
		 
		 Connection con=DriverManager.getConnection(dburl,dbuname,dbpassword);
		
		 return con;
	 }
	public void insertuser(Users user) throws SQLException {
		loadDriver(dbDriver);
		Connection con=getConnection();
		 String sql="insert into custom(firstname,lastname,email,password) values(?,?,?,?)";
		 
			try {
				PreparedStatement psmt=con.prepareStatement(sql);
				//psmt.setInt(1, 2);
				psmt.setString(1,user.getFirstname());
				psmt.setString(2,user.getLastname());
				psmt.setString(3,user.getEmail());
				psmt.setString(4,user.getPassword());
			    
			    psmt.executeUpdate();
			    
			    
			    psmt.close();
			    con.close();
			} catch (SQLException e1) {
				
				e1.printStackTrace();
							
			}
			
	}
	
	
}
