package com.zhy.service.impl;

import java.util.List;

import com.zhy.dao.ICommodityDAO;
import com.zhy.model.Commodity;
import com.zhy.service.ICommodityService;

public class CommodityService implements ICommodityService {

	private ICommodityDAO commodityDao;
	
	@Override
	public boolean infoInput(Commodity commodity) {
		// TODO Auto-generated method stub
		return commodityDao.infoInput(commodity);
	}

	@Override
	public Commodity infoSelect(String commodityName) {
		// TODO Auto-generated method stub
		return commodityDao.infoSelect(commodityName);
	}

	@Override
	public List<Commodity> browseAllCommodity() {
		// TODO Auto-generated method stub
		return commodityDao.browseAllCommodity();
	}
	
	
	
	public ICommodityDAO getCommodityDao() {
		return commodityDao;
	}

	public void setCommodityDao(ICommodityDAO commodityDao) {
		this.commodityDao = commodityDao;
	}
}
