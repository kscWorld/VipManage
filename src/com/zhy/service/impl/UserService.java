package com.zhy.service.impl;


import java.util.List;

import com.zhy.dao.IUserDAO;
import com.zhy.model.User;
import com.zhy.service.IUserService;

public class UserService implements IUserService {

	private IUserDAO userDao;

	@Override
	public User validate(User user) {
		
		List list = userDao.validate(user);
		if (list.isEmpty()) {
			return user;
		}else {
			User user1 = (User)list.get(0);
			return user1;
		}
	}

	@Override
	public List<User> browseAllUser() {
		// TODO Auto-generated method stub
		return userDao.browseAllUser();
	}	
	
	@Override
	public boolean changeState(String username) {
		
		return userDao.changeState(username);
	}
	
	public IUserDAO getUserDao() {
		return userDao;
	}

	public void setUserDao(IUserDAO userDao) {
		this.userDao = userDao;
	}





}
