package com.website.Dao;

import java.util.List;

import com.website.Model.Cart;



public interface CartDao {
public boolean addCart(Cart c);
	
public List<Cart> getCartByUser(int userId);

public int deleteCart(int pid,int uid);
}
