package com.zhy.action;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.zhy.model.Consume;
import com.zhy.service.IConsumeService;

public class ConsumeAction extends ActionSupport {

	private IConsumeService consumeService;
	
	
	
	
	public String browseAllConsume() {
		
		List<Consume> list = consumeService.browseAllConsume();
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("list", list);
		return "success";
		
	}

	public IConsumeService getConsumeService() {
		return consumeService;
	}

	public void setConsumeService(IConsumeService consumeService) {
		this.consumeService = consumeService;
	}
	
}
