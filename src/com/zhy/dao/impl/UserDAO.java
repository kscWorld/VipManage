package com.zhy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.zhy.dao.IUserDAO;
import com.zhy.model.User;

public class UserDAO implements IUserDAO {

	private SessionFactory sessionFactory;
	
	@Override
	public List<User> validate(User user) {
		
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from User u where u.username =? and u.password =?");
		query.setString(0, user.getUsername());
		query.setString(1, user.getPassword());
		List<User> list = (List<User>)query.list();
		ts.commit();
		session.close();
		return list;
		
	}

	@Override
	public List<User> browseAllUser() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from User");
		List<User> list = (List<User>)query.list();
		session.close();
		return list;
	}
	
	@Override
	public boolean changeState(String username) {

		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from User u where u.username =?");
		query.setString(0, username);
		List list = query.list();
		if (!list.isEmpty()) {
			User user = (User)list.get(0);
			if (user.getQuanxian() == 0) {
				user.setQuanxian(1);
			}else if (user.getQuanxian() == 1) {
				user.setQuanxian(0);
			}
			session.update(user);
			ts.commit();
			session.close();
			return true;
		}else {
			return false;
		}
	}
	
	
	
	
	
	
	
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
















}
