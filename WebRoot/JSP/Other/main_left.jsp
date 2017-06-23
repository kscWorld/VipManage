<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
	String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
	String basePath = request.getScheme()+"://"+request.getServerName()
			+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
	pageContext.setAttribute("basePath",basePath);
%>
<script type="text/javascript">
	function notify() {
    	alert("对不起，你没有访问权限！")
	}
</script>
<div id="main_left_page">
	<ul>
		<li><a href="${pageScope.basePath}JSP/Commodity/commodityInput.jsp">商品信息录入</a></li>
		<li><a href="${pageScope.basePath}JSP/Other/browseAllCommodity.action">商品信息查询</a></li>
	</ul>
	<ul>
		<li><a href="${pageScope.basePath}JSP/Vip/vipManage.jsp">VIP信息管理</a></li>
		<li><a href="${pageScope.basePath}JSP/Other/browseAllConsume.action">VIP购物登记</a></li>
		<li><a href="${pageScope.basePath}JSP/Other/browseAllVip.action">VIP信息查询</a></li>
	</ul>
	<ul>
		<s:set var="user" value="#session.user"/>
		<s:if test="#user.quanxian==1">
			<li><a href="#" onclick="notify()">系统维护</a></li>
		</s:if>
		<s:elseif test="#user.quanxian==0">
			<li><a href="${pageScope.basePath}JSP/Other/browseAllUser.action">系统维护</a></li>
		</s:elseif>
	</ul>
</div>
