package com.zhy.service;


import java.util.List;

import com.zhy.model.Commodity;

public interface ICommodityService {

	boolean infoInput(Commodity commodity);
	Commodity infoSelect(String commodityName);
	List<Commodity> browseAllCommodity();
}
