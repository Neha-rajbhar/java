package com.website.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.website.Model.AddCart;
import com.website.Model.Cart;
import com.website.Model.Produc;
import com.website.Model.Products;
import com.website.Model.Register;
import com.website.Model.Users;
import com.website.Model.add;

public class ConnectionProvider {
	public static Connection viewconnection() {
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","neharaj1231@");
			//System.out.println(conn);
			//System.out.println("Connection");
			return (con);
			 //conn.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		//return null;
		return null;
	}
	
		 public static List<Products> getAllEmployees(){  
		        List<Products> list=new ArrayList<Products>();  
		          
		        try{  
		            Connection con=ConnectionProvider.viewconnection();
		          //  System.out.println("connection");
		            PreparedStatement ps=con.prepareStatement("select * from products");  
		            ResultSet rs=ps.executeQuery();  
		            while(rs.next()){  
		            	Products p=new Products();
		               // Employee e=new Employee();  
		                p.setId(rs.getInt(1));  
		            	p.setName(rs.getString(2));
		                p.setCategory(rs.getString(3));
		                p.setPrice(rs.getDouble(4));
		                p.setActive(rs.getString(5));
		                list.add(p);  
		            }  
		           // System.out.println("sucess");
		            con.close();  
		        }catch(Exception e){e.printStackTrace();}  
		          
		        return list;  

		        
}
	
		 public static int  deleteproduct(String name) {
			  int result=0;
			 try{  
		            Connection con=ConnectionProvider.viewconnection();
		         PreparedStatement ps=con.prepareStatement("delete * from products where name=?"); 
		         Products p=new Products();
                 ps.setString(1,p.getName());
		         result=ps.executeUpdate();
		           
		         con.close();  
		        }catch(Exception e)
			 {
		        	e.printStackTrace();
		        	}  
		          return result;
			 
		 }

		 
		 public static int addProduct(String imageFileName) {
			 int result=0;
			 try {
				 Connection con=ConnectionProvider.viewconnection();
	        	 String sql="insert into products(name,category,price,active,image) values(?,?,?,?,?)";
	        	 Products p=new Products();
	        	 PreparedStatement psmt=con.prepareStatement(sql);
	             psmt.setString(1,p.getName());
	 			 psmt.setString(2, p.getCategory());
	 			 psmt.setDouble(3, p.getPrice());
	 			 psmt.setString(4, p.getActive());
	             psmt.setString(5, imageFileName);
                 result= psmt.executeUpdate();
			 }
			 catch(Exception e)
			 {
				 e.printStackTrace();
			 }
		 return result;
		 }
		 
		 public static int delete(int id){  
		        int status=0;  
		        try{  
		            Connection con=ConnectionProvider.viewconnection();  
		            PreparedStatement ps=con.prepareStatement("delete from products where id=?");  
		            ps.setInt(1,id);  
		            status=ps.executeUpdate();  
		              
		            con.close();  
		        }catch(Exception e){e.printStackTrace();}  
		          
		        return status;  
		    }  

		
		 public static int update(Products p){  
		        int status=0;  
		        try{  
		            Connection con=ConnectionProvider.viewconnection();   
		            PreparedStatement ps=con.prepareStatement(  
		                         "update products set name=?,category=?,price=?,active=? where id=?");  
		            ps.setString(1,p.getName());  
		            ps.setString(2,p.getCategory());  
		            ps.setDouble(3,p.getPrice());  
		            ps.setString(4,p.getActive());  
		            ps.setInt(5,p.getId());  
		              
		            status=ps.executeUpdate();  
		              
		            con.close();  
		        }catch(Exception ex){ex.printStackTrace();}  
		          
		        return status;  
		    }  
		
		  public static Products getEmployeeById(int id){  
		       Products p=new Products();  
		          
		        try{  
		            Connection con=ConnectionProvider.viewconnection();     
		            PreparedStatement ps=con.prepareStatement("select * from products where id=?");  
		            ps.setInt(1,id);  
		            ResultSet rs=ps.executeQuery();  
		            if(rs.next()){  
		                p.setId(rs.getInt(1));  
		                p.setName(rs.getString(2));  
		                p.setCategory(rs.getString(3));  
		                p.setPrice(rs.getDouble(4));  
		                p.setActive(rs.getString(5));  
		            }  
		            con.close();  
		        }catch(Exception ex){ex.printStackTrace();}  
		          
		        return p;  
		    }  
		  
		  public static List<Users> getUsers(){  
		        List<Users> list=new ArrayList<Users>();  
		          
		        try{  
		            Connection con=ConnectionProvider.viewconnection();
		         
		            PreparedStatement ps=con.prepareStatement("select * from custom");  
		            ResultSet rs=ps.executeQuery();  
		            while(rs.next()){  
		            	Users u=new Users();
		                
		               u.setId(rs.getInt(1));
		               u.setFirstname(rs.getString(2));
		               u.setLastname(rs.getString(3));
		               u.setEmail(rs.getString(4));
		               u.setPassword(rs.getString(5));
		               list.add(u); 
		            }  
		           con.close();  
		        }
		        catch(Exception e)
		        {
		        	e.printStackTrace();
		        	}  
		          
		        return list;  

		     }

		  public static int deleteUser(int id){  
		        int status=0;  
		        try{  
		            Connection con=ConnectionProvider.viewconnection();  
		            PreparedStatement ps=con.prepareStatement("delete from custom where id=?");  
		            ps.setInt(1,id);  
		            status=ps.executeUpdate();  
		              
		            con.close();  
		        }catch(Exception e){e.printStackTrace();}  
		          
		        return status;  
		    }  


		  public static Register getUserById(int id){  
		      Register r = new Register(); 
		          
		        try{  
		            Connection con=ConnectionProvider.viewconnection();     
		            PreparedStatement ps=con.prepareStatement("select * from user_d where id=?");  
		            ps.setInt(1,id);  
		            ResultSet rs=ps.executeQuery();  
		            if(rs.next()){  
		               r.setId(rs.getInt(1));
		               r.setName(rs.getString(2));
		               r.setEmail(rs.getString(3));
		               r.setPhone(rs.getString(4));
		            }  
		            con.close();  
		        }catch(Exception ex){ex.printStackTrace();}  
		          
		        return r;  
		    }  
		  
		  
		  public static Products getProductById(int id){  
		       Products p=new Products();  
		          
		        try{  
		            Connection con=ConnectionProvider.viewconnection();     
		            PreparedStatement ps=con.prepareStatement("select * from products where id=?");  
		            ps.setInt(1,id);  
		            ResultSet rs=ps.executeQuery();  
		            if(rs.next()){  
		            	

		                p.setId(rs.getInt(1));
		                p.setName(rs.getString(2));
		                p.setCategory(rs.getString(3));
		                p.setPrice(rs.getDouble(4));
		                p.setImage(rs.getString(5));
		                  
		                
		            }  
		            con.close();  
		        }catch(Exception ex){ex.printStackTrace();}  
		          
		        return p;  
		    }  

		  
		  

		  public static int updateUser(Register r){  
		        int status=0;  
		        try{  
		            Connection con=ConnectionProvider.viewconnection();   
		            PreparedStatement ps=con.prepareStatement(  
		                         "update user_d set name=?,email=?,phone=? where id=?");  
		            ps.setString(1,r.getName());  
		            ps.setString(2,r.getEmail());  
		            ps.setString(3,r.getPhone());  
		            ps.setInt(4,r.getId());  
		              
		            status=ps.executeUpdate();  
		              
		            con.close();  
		        }catch(Exception ex){ex.printStackTrace();}  
		          
		        return status;  
		    }  

		  public static List<Produc> getAllProducts() {
		        List<Produc> book = new ArrayList<Produc>();
		        try {
		        	 Connection con=ConnectionProvider.viewconnection();   

		          String  query = "select * from products";
		          PreparedStatement  pst = con.prepareStatement(query);
		           ResultSet rs = pst.executeQuery();

		            while (rs.next()) {
		            	Produc p = new Produc();
		                p.setId(rs.getInt("product_id"));
		                p.setName(rs.getString("name"));
		                p.setCategory(rs.getString("category"));
		                p.setPrice(rs.getDouble("price"));
		                p.setImage(rs.getString("image"));

		                book.add(p);
		            }

		        } catch (SQLException e) {
		            e.printStackTrace();
		            System.out.println(e.getMessage());
		        }
		        return book;
		    }
		  
		  public static List<Products> getCategoryOfProducts(String name) {
		        List<Products> book = new ArrayList<Products>();
		        try {
		        	 Connection con=ConnectionProvider.viewconnection();   

		          String  query = "select * from products where name=?";
		          PreparedStatement  pst = con.prepareStatement(query);
		          pst.setString(1, name);
		           ResultSet rs = pst.executeQuery();

		            while (rs.next()) {
		            	Products p = new Products();
		                p.setId(rs.getInt("id"));
		                p.setName(rs.getString("name"));
		                p.setCategory(rs.getString("category"));
		                p.setPrice(rs.getDouble("price"));
		                p.setImage(rs.getString("image"));

		                book.add(p);
		            }

		        } catch (SQLException e) {
		            e.printStackTrace();
		            System.out.println(e.getMessage());
		        }
		        return book;
		    }
			
		 
		    
		   
		 	
		   
			 
		 
		    
         
          }
         





