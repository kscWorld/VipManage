package com.zhy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.zhy.dao.IVipDAO;
import com.zhy.model.Commodity;
import com.zhy.model.Vip;

public class VipDAO implements IVipDAO {
	
	private SessionFactory sessionFactory ;
	
	
	@Override
	public Vip vipSelect(String name) {
		Session session=sessionFactory.openSession();
		
		Query query = session.createQuery("from Vip v where v.name =?");
		query.setString(0, name);
		if (query.list().isEmpty()) {
			session.close();
			return new Vip();
		}else {
			Vip vip = (Vip)query.list().get(0);
			session.close();
			return vip;
		}
	}

	@Override
	public boolean vipManage(Vip vip) {
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		session.save(vip);
		ts.commit();
		session.close();
		return true;
	}
	@Override
	public List<Vip> browseAllVip() {
		Session session=sessionFactory.openSession();
		Query query = session.createQuery("from Vip");
		List<Vip> list = (List<Vip>)query.list();
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
