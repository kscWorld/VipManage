package com.zhy.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhy.model.User;

public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("user");
		
		String path = req.getServletPath();
//		System.out.println(path);
		
		if (path.equals("/JSP/Other/index.jsp")) {    //退出操作
			session.invalidate();
			System.out.println("session已清理");
			chain.doFilter(request, response);
		}else if (path.equals("/JSP/Other/loginAction.action")){   //登录操作
			chain.doFilter(request,response);
		}else {
			if (user == null) {
				System.out.println("找不到session，返回首页");
				resp.sendRedirect(req.getContextPath() + "/JSP/Other/index.jsp");
			}else {
				chain.doFilter(request,response);
			}
		}
	}


	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}
}
