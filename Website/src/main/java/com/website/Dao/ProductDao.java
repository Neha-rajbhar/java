package com.website.Dao;

import java.util.List;

import com.website.Model.Produc;



public interface ProductDao {
	public boolean addProduct(Produc p);
	
	 public List<Produc> getAllProducts();
	 
	 public List<Produc> getAllToView();
	 
	 public Produc getProdtById(int id);
	 
	 public boolean updateProduct(Produc p);

    public int deleteProduct(int id);
    
    public List<Produc> getChoclate();
    
    public List<Produc> getPineapple();
    
    public List<Produc> getVanilla();
    
    
}
