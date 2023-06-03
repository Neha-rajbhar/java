package com.website.Model;

public class EmailUser {
private String name;
private String email;
private String code;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}

public EmailUser() {
	super();
}
public EmailUser(String name, String email, String code) {
	super();
	this.name = name;
	this.email = email;
	this.code = code;
}
public EmailUser(String email, String code) {
	super();
	this.email = email;
	this.code = code;
}

}
