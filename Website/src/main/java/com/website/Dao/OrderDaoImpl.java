package com.website.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.website.Model.OrderModel;



public class OrderDaoImpl implements OrderDao {
private Connection conn;
	
	
	
	public OrderDaoImpl(Connection conn) {
		
		super();
		this.conn=conn;
	}
	@Override
	public int getOrderNo() {
		int i=1;
		try {
			String sql="select * from order_de ";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				i++;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	@Override
	public boolean saveOrder(List<OrderModel> olist) {
		//OrderModel o= new OrderModel();
boolean f=false;
		
		try {
			String sql="insert into order_de(order_id,user_name,email,phone,address,city,state,p_name,category,price,payment) values(?,?,?,?,?,?,?,?,?,?,?)";
			 
			conn.setAutoCommit(false);
			PreparedStatement ps=conn.prepareStatement(sql);
	        for(OrderModel m: olist)	
	        {
	        ps.setString(1, m.getOrder_id());
	        ps.setString(2,m.getUser_name() );
	        ps.setString(3, m.getEmail());
	        ps.setString(4, m.getPhone());
	        ps.setString(5, m.getAddress());
	        ps.setString(6, m.getCity());
	        ps.setString(7, m.getState());
	        ps.setString(8, m.getP_name());
	        ps.setString(9, m.getCategory());
	        ps.setDouble(10, m.getPrice());
	        ps.setString(11,m.getPayment() );
	        ps.addBatch();
	        }
 			
 			 
 			int[] count=ps.executeBatch();
 			conn.commit();
 			f=true;
 			conn.setAutoCommit(true);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	@Override
	public List<OrderModel> getOrderList(String email) {
		List<OrderModel> list=new ArrayList<OrderModel>();
		
		OrderModel o=new OrderModel();
		try {
			String sql="select * from order_de where email=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, email);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				o.setId(rs.getInt(1));
				o.setOrder_id(rs.getString(2));
				o.setUser_name(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setPhone(rs.getString(5));
				o.setAddress(rs.getString(6));
				o.setCity(rs.getString(7));
				o.setState(rs.getString(8));
				o.setP_name(rs.getString(9));
				o.setCategory(rs.getString(10));
				o.setPrice(rs.getDouble(11));
				o.setPayment(rs.getString(12));
				list.add(o);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<OrderModel> getAllOrder() {
		
List<OrderModel> list=new ArrayList<OrderModel>();
		
		OrderModel o=null;
		try {
			String sql="select * from order_de order by order_id desc;";
			PreparedStatement ps=conn.prepareStatement(sql);
		
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				o=new OrderModel();
				o.setId(rs.getInt(1));
				o.setOrder_id(rs.getString(2));
				o.setUser_name(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setPhone(rs.getString(5));
				o.setAddress(rs.getString(6));
				o.setCity(rs.getString(7));
				o.setState(rs.getString(8));
				o.setP_name(rs.getString(9));
				o.setCategory(rs.getString(10));
				o.setPrice(rs.getDouble(11));
				o.setPayment(rs.getString(12));
				list.add(o);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
