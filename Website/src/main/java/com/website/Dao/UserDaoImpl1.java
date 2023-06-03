package com.website.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.website.Model.Produc;
import com.website.Model.Register;



public class UserDaoImpl1 implements UserDao {
private Connection conn;
	
	
	
	public UserDaoImpl1(Connection conn) {
		
		super();
		this.conn=conn;
	}



	@Override
	public boolean userRegister(Register r) {
		boolean f=false;
		
		try {
			
			
			 String sql="insert into user_d(name,email,password,phone) values(?,?,?,?)";
			 PreparedStatement psmt=conn.prepareStatement(sql);
			 psmt.setString(1,r.getName());
			 psmt.setString(2,r.getEmail());
			 psmt.setString(3,r.getPassword());
			 psmt.setString(4,r.getPhone());
			 
			 int i=psmt.executeUpdate();
			 if(i==1) {
				 f=true;
			 }
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return f;
	}



	@Override
	public Register login(String email, String password) {
		Register r=null;
		try {
			
			
			 String sql="select * from user_d where email=? and password=?";
			 PreparedStatement psmt=conn.prepareStatement(sql);
			 psmt.setString(1,email);
			 psmt.setString(2,password);
			 
			 ResultSet rs=psmt.executeQuery();
			 while(rs.next()) {
				 r=new Register();
				 r.setId(rs.getInt(1));
				 r.setName(rs.getString(2));
				 r.setEmail(rs.getString(3));
				 
				 r.setPhone(rs.getString(4));
				 r.setPassword(rs.getString(5));
				 r.setAddress(rs.getString(6));
				 r.setCity(rs.getString(7));
				 r.setState(rs.getString(8));
			 }}
			 catch(Exception e)
			 {
				 e.printStackTrace();
			 }
		return r;
	}



	@Override
	public Register changePass(int id) {
		Register r=new Register();
		try {
			
			
			 String sql="select * from user_d where product_id=?";
			 PreparedStatement psmt=conn.prepareStatement(sql);
			psmt.setInt(1, id);
			 
			 ResultSet rs=psmt.executeQuery();
			 while(rs.next()) {
				 r=new Register();
				 r.setId(rs.getInt(1));
				 r.setName(rs.getString(2));
				 r.setEmail(rs.getString(3));
				 r.setPhone(rs.getString(4));
				 r.setPassword(rs.getString(5));
				 r.setAddress(rs.getString(6));
				 r.setCity(rs.getString(7));
				 r.setState(rs.getString(8));
			 }}
			 catch(Exception e)
			 {
				 e.printStackTrace();
			 }
		return r;
		
	}



	@Override
	public List<Register> getAllUser() {
		
			  List<Register> list = new ArrayList<Register>();
			  Register r=new Register();
		        try {
		        	 String  query = "select * from user_d";
		          PreparedStatement  pst = conn.prepareStatement(query);
		           ResultSet rs = pst.executeQuery();

		            while (rs.next()) {
		            	
		            	r.setId(rs.getInt(1));
		            	r.setName(rs.getString(2));
		            	r.setEmail(rs.getString(3));
		            	r.setPhone(rs.getString(4));
		            	r.setPassword(rs.getString(5));
		            	r.setAddress(rs.getString(6));
		            	r.setCity(rs.getString(7));
		            	r.setState(rs.getString(8));
		            	list.add(r);
		            	
		            }

		        } catch (SQLException e) {
		            e.printStackTrace();
		            System.out.println(e.getMessage());
		        }
		        return list;
		
		

	}



	@Override
	public Register getUser(int id) {
		Register r=new Register();
		
		 try {
	    	 String  query = "select * from user_d where id=?";
	      PreparedStatement  pst = conn.prepareStatement(query);
	      pst.setInt(1, id);
	       ResultSet rs = pst.executeQuery();

	        while (rs.next()) {
	        	r.setId(rs.getInt(1));
            	r.setName(rs.getString(2));
            	r.setEmail(rs.getString(3));
            	r.setPhone(rs.getString(4));
            	r.setPassword(rs.getString(5));
            	r.setAddress(rs.getString(6));
            	r.setCity(rs.getString(7));
            	r.setState(rs.getString(8)); 
	             
	            
	             
	        }
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
			return r;
		
	}
	

}
