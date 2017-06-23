package com.zhy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.zhy.dao.IConsumeDAO;
import com.zhy.model.Consume;

public class ConsumeDAO implements IConsumeDAO {

	private SessionFactory sessionFactory;
	
	@Override
	public List<Consume> browseAllConsume() {
		
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Consume");
		List<Consume> list = (List<Consume>)query.list();
		session.close();
		return list;
		
	}

	
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
