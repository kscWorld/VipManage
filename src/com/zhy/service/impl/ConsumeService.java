package com.zhy.service.impl;

import java.util.List;

import com.zhy.dao.IConsumeDAO;
import com.zhy.model.Consume;
import com.zhy.service.IConsumeService;

public class ConsumeService implements IConsumeService {

	private IConsumeDAO consumeDao;
	
	
	@Override
	public List<Consume> browseAllConsume() {
		
		return consumeDao.browseAllConsume();
	}


	public IConsumeDAO getConsumeDao() {
		return consumeDao;
	}
	public void setConsumeDao(IConsumeDAO consumeDao) {
		this.consumeDao = consumeDao;
	}

}
