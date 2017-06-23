package com.zhy.dao;

import java.util.List;

import com.zhy.model.User;

public interface IUserDAO {

	List<User> validate(User user);
	List<User> browseAllUser();
	boolean changeState(String username);
}
