package com.website.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.website.Model.Produc;



public class ProductDaoImpl implements ProductDao{

private Connection conn;
	
	
	
	public ProductDaoImpl(Connection conn) {
		
		super();
		this.conn=conn;
	}
	
	@Override
	public boolean addProduct(Produc p) {
		boolean f=false;
		
		try {
			String sql="insert into product_de(name,category,image,price,weight,description,active) values(?,?,?,?,?,?,?)";
			 PreparedStatement psmt=conn.prepareStatement(sql);
	        	
 			 psmt.setString(1,p.getName());
 			 psmt.setString(2, p.getCategory());
 			 psmt.setString(3, p.getImage());
 			 psmt.setDouble(4, p.getPrice());
 			 psmt.setDouble(5, p.getWeight());
 			 psmt.setString(6, p.getDescription());
 			 psmt.setString(7, p.getActive());
 			 
 			int i=psmt.executeUpdate();
			 if(i==1) {
				 f=true;
			 }
            
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	 public  Produc getProductById(int id){  
	       Produc p=new Produc();  
	          
	        try{  
	               
	            PreparedStatement ps=conn.prepareStatement("select * from products where id=?");  
	            ps.setInt(1,id);  
	            ResultSet rs=ps.executeQuery();  
	            if(rs.next()){  
	            	

	            	p.setId(rs.getInt(1));
	                p.setName(rs.getString(2));
	                p.setCategory(rs.getString(3));
	                p.setPrice(rs.getDouble(4));
	                p.setActive(rs.getString(5));
	                p.setImage(rs.getString(6));
	                p.setWeight(rs.getDouble(8));
	               
	                  
	                
	            }  
	            conn.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return p;  
	    }

	@Override
	public List<Produc> getAllProducts() {
		
		        List<Produc> book = new ArrayList<Produc>();
		        try {
		        	    

		          String  query = "select * from products";
		          PreparedStatement  pst = conn.prepareStatement(query);
		           ResultSet rs = pst.executeQuery();

		            while (rs.next()) {
		            	Produc p = new Produc();
		            	p.setId(rs.getInt(1));
		                p.setName(rs.getString(2));
		                p.setCategory(rs.getString(3));
		                p.setPrice(rs.getDouble(4));
		                p.setActive(rs.getString(5));
		                p.setImage(rs.getString(6));
		                p.setWeight(rs.getDouble(8));
		                book.add(p);
		            }

		        } catch (SQLException e) {
		            e.printStackTrace();
		            System.out.println(e.getMessage());
		        }
		        return book;
		    }

	@Override
	public List<Produc> getAllToView() {
		  List<Produc> list = new ArrayList<Produc>();
		  Produc p = new Produc();
	        try {
	        	 String  query = "select * from products";
	          PreparedStatement  pst = conn.prepareStatement(query);
	           ResultSet rs = pst.executeQuery();

	            while (rs.next()) {
	            	
	            	p.setId(rs.getInt(1));
	                p.setName(rs.getString(2));
	                p.setCategory(rs.getString(3));
	                p.setPrice(rs.getDouble(4));
	                p.setActive(rs.getString(5));
	                p.setImage(rs.getString(6));
	                p.setWeight(rs.getDouble(8));
	                list.add(p);
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	            System.out.println(e.getMessage());
	        }
	        return list;
	
	}

	@Override
	public Produc getProdtById(int id) {
	Produc p = new Produc();
	
	 try {
    	 String  query = "select * from products where product_id=?";
      PreparedStatement  pst = conn.prepareStatement(query);
      pst.setInt(1, id);
       ResultSet rs = pst.executeQuery();

        while (rs.next()) {
        	 p.setId(rs.getInt(1));
             p.setName(rs.getString(2));
             p.setCategory(rs.getString(3));
             p.setPrice(rs.getDouble(4));
             p.setActive(rs.getString(5));
             p.setImage(rs.getString(6));
             p.setWeight(rs.getDouble(8));
             
            
             
        }
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
		return p;
	}

	@Override
	public boolean updateProduct(Produc p) {
		boolean f=false;
		
		 try {
	    	 String  query = "update products set name=?,category=?,price=?,active=? where product_id=?";
	      PreparedStatement  pst = conn.prepareStatement(query);
	      pst.setString(1, p.getName());
	      pst.setString(2, p.getCategory());
	      pst.setDouble(3, p.getPrice());
	      pst.setString(4, p.getActive());
	      pst.setInt(5, p.getId());
		
	      int i=pst.executeUpdate();
	      if(i==1) {
	    	  f=true;
	      }}
	      catch(Exception e) {
	 		 e.printStackTrace();
	 	 }
		return f;
	}

	@Override
	public int deleteProduct(int id) {
		int status=0;
		
		 try {
	    	 String  query = "delete from products where product_id=?";
	      PreparedStatement  pst = conn.prepareStatement(query);
	      pst.setInt(1, id);
	      
	      status=pst.executeUpdate();
		 }
	      catch(Exception e) {
	 		 e.printStackTrace();
	 	 }
		return status;
		
	}

	@Override
	public List<Produc> getChoclate() {
		 List<Produc> list = new ArrayList<Produc>();
		  Produc p=null;
		  try {
			  String  query = "select * from products where category=? and active=?";
		      PreparedStatement  pst = conn.prepareStatement(query);
			  pst.setString(1, "pineapple");
			  pst.setString(2, "Yes");
			  ResultSet rs=pst.executeQuery();
			  int i=1;
			  while(rs.next() && i<=4) {
				  p=new Produc();
				    p.setId(rs.getInt(1));
	                p.setName(rs.getString(2));
	                p.setCategory(rs.getString(3));
	                p.setPrice(rs.getDouble(4));
	                p.setActive(rs.getString(5));
	                p.setImage(rs.getString(6));
	                p.setWeight(rs.getDouble(8));
	                list.add(p);
	                i++;
				  
			  }
			  
			  
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
		return list;
	}

	@Override
	public List<Produc> getPineapple() {
		 List<Produc> list = new ArrayList<Produc>();
		  Produc p=null;
		  try {
			  String  query = "select * from products where category=? and active=?";
		      PreparedStatement  pst = conn.prepareStatement(query);
			  pst.setString(1, "fuit");
			  pst.setString(2, "Yes");
			  ResultSet rs=pst.executeQuery();
			  int i=1;
			  while(rs.next() && i<=4) {
				  p=new Produc();
				    p.setId(rs.getInt(1));
	                p.setName(rs.getString(2));
	                p.setCategory(rs.getString(3));
	                p.setPrice(rs.getDouble(4));
	                p.setActive(rs.getString(5));
	                p.setImage(rs.getString(6));
	                p.setWeight(rs.getDouble(8));
	                list.add(p);
	                i++;
				  
			  }
			  
			  
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
		return list;
	}

	@Override
	public List<Produc> getVanilla() {
		// TODO Auto-generated method stub
		return null;
	}

	
		
}
