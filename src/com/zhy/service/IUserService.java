package com.zhy.service;


import java.util.List;

import com.zhy.model.User;

public interface IUserService {

	User validate(User user);
	List<User> browseAllUser();
	boolean changeState(String username);
}
