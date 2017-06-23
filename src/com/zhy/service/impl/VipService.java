package com.zhy.service.impl;

import java.util.Date;
import java.util.List;

import com.zhy.dao.IVipDAO;
import com.zhy.model.Vip;
import com.zhy.service.IVipService;

public class VipService implements IVipService {

	private IVipDAO vipDao;
	
	
	@Override
	public Vip vipSelect(String name) {
		
		return vipDao.vipSelect(name);
	}
	@Override
	public boolean vipManage(Vip vip) {
		
		vip.setJoinTime(new Date());
		return vipDao.vipManage(vip);
	}
	@Override
	public List<Vip> browseAllVip() {
		
		return vipDao.browseAllVip();
	}

	public IVipDAO getVipDao() {
		return vipDao;
	}


	public void setVipDao(IVipDAO vipDao) {
		this.vipDao = vipDao;
	}
}
