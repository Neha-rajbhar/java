package com.website.Model;

public class Cart{

	private int cid;
	private int pid;
	private int userid;
	private String p_name;
	private String category;
	private Double price;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
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
	public Double getTotal_price() {
		return Total_price;
	}
	public void setTotal_price(Double total_price) {
		Total_price = total_price;
	}
	private Double Total_price;
	public Cart(int cid, int pid, int userid, String p_name, String category, Double price, Double total_price) {
		super();
		this.cid = cid;
		this.pid = pid;
		this.userid = userid;
		this.p_name = p_name;
		this.category = category;
		this.price = price;
		Total_price = total_price;
	}
	public Cart() {
		super();
	}
	@Override
	public String toString() {
		return "Cart [cid=" + cid + ", pid=" + pid + ", userid=" + userid + ", p_name=" + p_name + ", category="
				+ category + ", price=" + price + ", Total_price=" + Total_price + "]";
	}
	
	

	
	
}
