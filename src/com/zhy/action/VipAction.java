package com.zhy.action;

import java.util.List;

import javax.servlet.ServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.zhy.model.Vip;
import com.zhy.service.IVipService;

public class VipAction extends ActionSupport implements ModelDriven<Vip>{

	private Vip vip = new Vip();
	private IVipService vipService;
	private String vip_name;
	
	
	public String vipSelect()throws Exception {
		
		vip = vipService.vipSelect(vip_name);
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("vip", vip);
		return "success";
	}
	
	
	public String vipManage() throws Exception {
		
		vipService.vipManage(vip);
		return "success";
	}
	
	
	public String browseAllVip() {
		
		List<Vip> list = vipService.browseAllVip();
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("list", list);
		return "success";
		
		
	}
	
	
	
	
	
	
	public IVipService getVipService() {
		return vipService;
	}

	public void setVipService(IVipService vipService) {
		this.vipService = vipService;
	}

	@Override
	public Vip getModel() {
		// TODO Auto-generated method stub
		return vip;
	}


	public String getVip_name() {
		return vip_name;
	}


	public void setVip_name(String vip_name) {
		this.vip_name = vip_name;
	}

}
