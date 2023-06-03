package com.website.Model;

import java.io.File;
import java.io.InputStream;

public class Products {
	private int id;
	private String name;
	private String category;
	private Double price;
	private String active;
	private String image;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}

	public Products() {
		
	}
	public Products(int id, String name, String category, Double price, String active, String image) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.active = active;
		this.image = image;
	}
	public String getImage(File fileSave) {
		// TODO Auto-generated method stub
		return null;
	}
	public String getImage(String savePath) {
		// TODO Auto-generated method stub
		return null;
	}
	public String getImage(InputStream is) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String toString() {
		return "Products [id=" + id + ", name=" + name + ", category=" + category + ", price=" + price + ", active="
				+ active + ", image=" + image + "]";
	}



}
