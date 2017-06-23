<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
	String basePath = request.getScheme()+"://"+request.getServerName()
			+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
	pageContext.setAttribute("basePath",basePath);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>index</title>
<link href="${pageScope.basePath}/CSS/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<s:form action="loginAction" method="post">
		<table>
			<tr>
				<td><span>用户名:</span></td>
				<td><input type="text" name="username" class="input" required="required"/></td>
			</tr>
			<tr>
				<td><span>密码:</span></td>
				<td><input type="password" name="password" class="input" required="required"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="确定" id="submit"/></td>
			</tr>
		</table>
	</s:form>
</body>
</html>