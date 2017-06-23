package com.zhy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.zhy.dao.ICommodityDAO;
import com.zhy.model.Commodity;

public class CommodityDAO implements ICommodityDAO {

	private SessionFactory sessionFactory;
	
	@Override
	public boolean infoInput(Commodity commodity) {
		
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		session.save(commodity);
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public Commodity infoSelect(String commodityName) {
		Session session=sessionFactory.openSession();
		
		Query query = session.createQuery("from Commodity cd where cd.commodityName =?");
		query.setString(0, commodityName);
		if (query.list().isEmpty()) {
			session.close();
			return new Commodity();
		}else {
			Commodity commodity = (Commodity)query.list().get(0);
			session.close();
			return commodity;
		}
		
	}

	@Override
	public List<Commodity> browseAllCommodity() {
		Session session=sessionFactory.openSession();
		Query query = session.createQuery("from Commodity");
		List<Commodity> list = (List<Commodity>)query.list();
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
