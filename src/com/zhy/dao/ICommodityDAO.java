package com.zhy.dao;

import java.util.List;

import com.zhy.model.Commodity;

public interface ICommodityDAO {

	boolean infoInput(Commodity commodity);
	Commodity infoSelect(String commodityName);
	List<Commodity> browseAllCommodity();
}
