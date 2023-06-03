package com.website.Model;

public class add {
private String email;
private int quantity,product_id;
private double price,total;
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public int getProduct_id() {
	return product_id;
}
public void setProduct_id(int product_id) {
	this.product_id = product_id;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public double getTotal() {
	return total;
}
public void setTotal(double total) {
	this.total = total;
}
public add(String email, int quantity, int product_id, double price, double total) {
	super();
	this.email = email;
	this.quantity = quantity;
	this.product_id = product_id;
	this.price = price;
	this.total = total;
}
public add() {
	
}
@Override
public String toString() {
	return "add [email=" + email + ", quantity=" + quantity + ", product_id=" + product_id + ", price=" + price
			+ ", total=" + total + "]";
}



}
