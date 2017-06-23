package com.zhy.action;

import java.util.List;

import javax.servlet.ServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.zhy.model.Commodity;
import com.zhy.service.ICommodityService;

public class CommodityAction extends ActionSupport implements ModelDriven<Commodity>{
	private static final long serialVersionUID = 1L;
	
	private Commodity commodity = new Commodity();
	private ICommodityService commodityService;
	private String commodity_name;
	
	public String infoInput() {
		
		if (commodityService.infoInput(commodity)) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	public String infoSelect() {
		
		commodity = commodityService.infoSelect(commodity_name);
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("commodity", commodity);
		return "success";
	}
	
	public String browseAllCommodity() {
		
		List<Commodity> list = commodityService.browseAllCommodity();
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("list", list);
		return "success";
		
	}
	
	
	
	
	@Override
	public Commodity getModel() {
		return commodity;
	}


	public ICommodityService getCommodityService() {
		return commodityService;
	}


	public void setCommodityService(ICommodityService commodityService) {
		this.commodityService = commodityService;
	}

	public String getCommodity_name() {
		return commodity_name;
	}

	public void setCommodity_name(String commodity_name) {
		this.commodity_name = commodity_name;
	}

	
	
	
}
