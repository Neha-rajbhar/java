package com.website.Model;

public class AddCart {
private int cid;
private int pid;
private int uid;
private String namec;
private String categoryc;
private double pricec;
private double total;
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
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}
public String getNamec() {
	return namec;
}
public void setNamec(String namec) {
	this.namec = namec;
}
public String getCategoryc() {
	return categoryc;
}
public void setCategoryc(String categoryc) {
	this.categoryc = categoryc;
}
public double getPricec() {
	return pricec;
}
public void setPricec(double pricec) {
	this.pricec = pricec;
}
public double getTotal() {
	return total;
}
public void setTotal(double total) {
	this.total = total;
}

public AddCart(int cid, int pid, String namec, String categoryc, double pricec, double total) {
	super();
	this.cid = cid;
	this.pid = pid;
	this.namec = namec;
	this.categoryc = categoryc;
	this.pricec = pricec;
	this.total = total;
}
public AddCart() {
	
}


}
