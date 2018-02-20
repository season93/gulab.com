package com.gulab.backend.DAO;

import java.util.List;

import com.gulab.backend.models.UserModel;

public interface UserDao {
	
	void addDriver(UserModel user);

	List<UserModel> searchId(int id);

	List<UserModel> searchName(String name);

}
