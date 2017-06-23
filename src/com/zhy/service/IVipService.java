package com.zhy.service;

import java.util.List;

import com.zhy.model.Vip;

public interface IVipService {

	Vip vipSelect(String name);
	boolean vipManage(Vip vip);
	List<Vip> browseAllVip();
}
