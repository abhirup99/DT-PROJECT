package com.ecommerce2.ecommercebackend.Dao;

import java.util.List;

import com.ecommerce2.ecommercebackend.model.User;

public interface UserDao {
	boolean insertUser(User user);
	List<User> getAll();
	User getById(int id);
	User getByUserName(String username);
}
