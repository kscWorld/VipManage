package com.zhy.action;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.zhy.model.User;
import com.zhy.service.IUserService;

public class UserAction extends ActionSupport implements ModelDriven<User> {

	private User user = new User();
	private IUserService userService;
	private String user_name;
	
	
	public String login() throws Exception {

		User user1 = userService.validate(user);

		if (user.equals(user1)) {
			return "fail";
		}else {
			user = user1;
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("user", user);
			// 清空user中的属性值
			user = new User();
			return "success";
		}
	}
	
	public String browseAllUser() throws Exception {
		
		List<User> list = userService.browseAllUser();
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("list", list);
		
		return "success";
	}
	
	public String changeState() throws Exception{
		
		userService.changeState(user_name);
		return "success";
	}
	
	
	
	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@Override
	public User getModel() {
		return user;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

}
