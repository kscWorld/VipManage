<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
	String basePath = request.getScheme()+"://"+request.getServerName()
			+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
	pageContext.setAttribute("basePath",basePath);
%>
<div id="head_page">
	<div id="left">
		<h1>商场VIP消费情况查询系统</h1>
	</div>
	<div id="right">
		<ul>
			<li><h2><a href="${pageScope.basePath}JSP/Other/main.jsp">帮助</a></h2></li>
			<li><h2><a href="${pageScope.basePath}JSP/Other/index.jsp">退出</a></h2></li>
		</ul>
	</div>
</div>
	

