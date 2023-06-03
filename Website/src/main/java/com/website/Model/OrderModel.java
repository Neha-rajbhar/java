package com.website.Model;

public class OrderModel {
	private int id;
	private String order_id;
	private String user_name;
	private String email;
	private String phone;
	private String address;
	private String city;
	private String state;
	private String p_name;
	private String category;
	private Double price;
	private String payment;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public OrderModel(int id, String order_id, String user_name, String email, String phone, String address, String city,
			String state, String p_name, String category, Double price, String payment) {
		super();
		this.id = id;
		this.order_id = order_id;
		this.user_name = user_name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.city = city;
		this.state = state;
		this.p_name = p_name;
		this.category = category;
		this.price = price;
		this.payment = payment;
	}
	public OrderModel() {
		super();
	}
	@Override
	public String toString() {
		return "OrderModel [id=" + id + ", order_id=" + order_id + ", user_name=" + user_name + ", email=" + email
				+ ", phone=" + phone + ", address=" + address + ", city=" + city + ", state=" + state + ", p_name=" + p_name
				+ ", category=" + category + ", price=" + price + ", payment=" + payment + "]";
	}



}
