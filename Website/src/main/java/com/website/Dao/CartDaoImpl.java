package com.website.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.website.Model.Cart;



public class CartDaoImpl implements CartDao {

private Connection conn;
	
	
	
	public CartDaoImpl(Connection conn) {
		
		super();
		this.conn=conn;
	}
	
	
	@Override
	public boolean addCart(Cart c) {
		boolean f=false;
		
		 try {
			 String sql="insert into cart_d(pid,uid,p_name,category,price,Total_price) values(?,?,?,?,?,?) ";
			PreparedStatement psmt=conn.prepareStatement(sql);
			psmt.setInt(1, c.getPid());
			psmt.setInt(2, c.getUserid());
			psmt.setString(3, c.getP_name());
			psmt.setString(4, c.getCategory());
			psmt.setDouble(5, c.getPrice());
			psmt.setDouble(6, c.getTotal_price());
			int i=psmt.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return f;
	}


	@Override
	public List<Cart> getCartByUser(int userId) {
		List<Cart> list=new ArrayList<>();
		Cart c =null; 
		double totalPrice=0;
		
		try {
			String sql="select * from cart_d where uid=?";
			PreparedStatement psmt=conn.prepareStatement(sql);
			psmt.setInt(1, userId);
			
			ResultSet rs=psmt.executeQuery();
			while(rs.next())
			{
				c=new Cart();
				c.setCid(rs.getInt(1));
				c.setPid(rs.getInt(2));
				c.setUserid(rs.getInt(3));
				c.setP_name(rs.getString(4));
				c.setCategory(rs.getString(5));
				c.setPrice(rs.getDouble(6));
				
				totalPrice=totalPrice+rs.getDouble(7);
				c.setTotal_price(totalPrice);
				list.add(c);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public int deleteCart(int pid,int uid) {
		int status=0;
		
		 try {
	    	 String  query = "delete from cart_d where pid=? and uid=?";
	      PreparedStatement  pst = conn.prepareStatement(query);
	      pst.setInt(1, pid);
	      pst.setInt(2, uid);
	      
	      status=pst.executeUpdate();
		 }
	      catch(Exception e) {
	 		 e.printStackTrace();
	 	 }
		return status;
		
	}

}
