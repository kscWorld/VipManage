package com.zhy.dao;

import java.util.List;

import com.zhy.model.Vip;

public interface IVipDAO {

	Vip vipSelect(String name);
	boolean vipManage(Vip vip);
	List<Vip> browseAllVip();
}
