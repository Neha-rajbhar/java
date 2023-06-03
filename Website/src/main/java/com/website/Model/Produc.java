package com.website.Model;

public class Produc {
	private int id;
	private String name;
	private String category;
	private Double price;
	private String active;
	private String image;
	private Double weight;
    private String description;
	public Produc(String name, String category, Double price, String active, String image, Double weight,
			String description) {
		super();
		this.name = name;
		this.category = category;
		this.price = price;
		this.active = active;
		this.image = image;
		this.weight = weight;
		this.description = description;
	}
	public Produc() {
		super();
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Double getWeight() {
		return weight;
	}
	public void setWeight(Double weight) {
		this.weight = weight;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Produc [id=" + id + ", name=" + name + ", category=" + category + ", price=" + price + ", active="
				+ active + ", image=" + image + ", weight=" + weight + ", description=" + description + "]";
	}
    
}
