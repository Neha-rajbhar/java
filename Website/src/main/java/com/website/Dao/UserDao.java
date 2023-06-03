package com.website.Dao;

import java.util.List;

import com.website.Model.Register;

public interface UserDao {
	
    public boolean userRegister(Register r);
	
	public Register login(String email,String password);
	
	public Register changePass(int id);
	
	public Register getUser(int id);
	
	public List<Register> getAllUser();
}
