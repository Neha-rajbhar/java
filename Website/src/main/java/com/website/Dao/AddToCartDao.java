package com.website.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.website.Model.Cart;
import com.website.Model.add;

public class AddToCartDao {
	 public static int selectCart(add a) {
   	  int status=0;
   	  double product_total=0;
   	  double product_price=0;
   	  double cart_total=0;
   	  int quantity=1;
   	 
   	  try {
   	  Connection conn=ConnectionProvider.viewconnection();
   		 String query="select * from products where id=?";
   		 PreparedStatement st=conn.prepareStatement(query);
   		 st.setInt(1, a.getProduct_id());
   		 ResultSet rs=st.executeQuery();
   		 while(rs.next()){
   			 product_price=rs.getDouble(4);
   			 product_total=product_price;
   			
   			 
   			 
   		 }
   		 int z;
   		 ResultSet rs1=st.executeQuery("select * from addcart where product_id='"+a.getProduct_id()+"' ");
   		 while(rs1.next()){
   			 cart_total=rs1.getInt(5);
   			 cart_total= cart_total+product_total;
   			 quantity=rs1.getInt(3);
   			 quantity=quantity+1;
   			 z=1;
   		 }
   	  }
   		 catch(Exception e)
   		 {
   			 e.printStackTrace();
   		 }
   	  return status;
   		 }
	 
	 public static int updateCart(add a){  
	        int status=0;  
	        try{  
	            Connection con=ConnectionProvider.viewconnection();   
	            PreparedStatement ps=con.prepareStatement(  
	                         "update addcart set total=?,quantity=? where product_id=?");  
	           ps.setDouble(1, a.getTotal());
	           ps.setInt(2, a.getQuantity());
	           ps.setInt(3, a.getProduct_id());
	              
	            status=ps.executeUpdate();  
	              
	            con.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return status;  
	    }  

	 
	 public static int  addDetailToCart() {
		 int result=0;
		 try {
			 Connection con=ConnectionProvider.viewconnection();
        	 String sql="insert into addcart(email,product_id,quantity,price,total) values(?,?,?,?,?)";
        	 add a=new add();
        	 PreparedStatement psmt=con.prepareStatement(sql);
        	 psmt.setString(1, a.getEmail());
             psmt.setInt(2, a.getProduct_id());
    	     psmt.setInt(3, a.getQuantity());
    	     psmt.setDouble(4, a.getPrice());
    	     psmt.setDouble(5, a.getTotal());
    	    
            result = psmt.executeUpdate() ;
             
             
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
	 return result;
	 }
		/*
		 * public static List<Cart> getCartProducts(ArrayList<Cart> cartList) {
		 * List<Cart> book = new ArrayList<Cart>(); try { Connection
		 * con=ConnectionProvider.viewconnection(); if (cartList.size() > 0) { for (Cart
		 * item : cartList) { String query = "select * from products where id=?";
		 * PreparedStatement pst = con.prepareStatement(query); pst.setInt(1,
		 * item.getId()); ResultSet rs = pst.executeQuery(); while (rs.next()) { Cart
		 * row = new Cart(); row.setId(rs.getInt("id"));
		 * row.setName(rs.getString("name")); row.setCategory(rs.getString("category"));
		 * row.setPrice(rs.getDouble("price")*item.getQuantity());
		 * row.setQuantity(item.getQuantity()); book.add(row); }
		 * 
		 * } }
		 * 
		 * } catch (SQLException e) { e.printStackTrace();
		 * System.out.println(e.getMessage()); } return book; }
		 */      
	 
		/*
		 * public static double getTotalCartPrice(ArrayList<Cart> cartList) { double sum
		 * = 0; try { Connection con=ConnectionProvider.viewconnection(); if
		 * (cartList.size() > 0) { for (Cart item : cartList) { String query =
		 * "select price from products where id=?"; PreparedStatement pst =
		 * con.prepareStatement(query); pst.setInt(1, item.getId()); ResultSet rs =
		 * pst.executeQuery(); while (rs.next()) {
		 * sum+=rs.getDouble("price")*item.getQuantity(); }
		 * 
		 * } }
		 * 
		 * } catch (SQLException e) { e.printStackTrace();
		 * System.out.println(e.getMessage()); } return sum; }
		 */
}
