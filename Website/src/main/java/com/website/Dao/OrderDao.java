package com.website.Dao;

import java.util.List;

import com.website.Model.OrderModel;



public interface OrderDao {

	public int getOrderNo();

	public boolean saveOrder(List<OrderModel> olist);
	
	public List<OrderModel> getOrderList(String email);
	
	public List<OrderModel> getAllOrder();
	
}
