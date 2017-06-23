<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>maintenance</title>
<link href="../../CSS/main.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/head.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/main_left.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/maintenance.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="main_page">
		<div id="head">
			<jsp:include page="../Other/head.jsp" />
		</div>
		<div id="content">
			<div id="main_left">
				<jsp:include page="../Other/main_left.jsp" />
			</div>
			<div id="main_right">
				<div id="maintenance">
					<table>
						<tr>
							<th>用户</th>
							<th>状态</th>
							<th></th>
						</tr>
						<s:set var="suser" value="#session.user" />
						<s:iterator value="#request.list" var="user" id="user">
						<tr>
							<td><s:property value="#user.username"/></td>
						<s:if test="#user.quanxian==0">
							<td>启用</td>
						</s:if>
						<s:elseif test="#user.quanxian==1">
							<td>禁用</td>
						</s:elseif>
						<s:if test="#user.username != #suser.username">
							<td><a href="../Other/changeState.action?user_name=<s:property value="#user.username"/>">修改</a></td>
						</s:if>
						</tr>
						</s:iterator>
					</table>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>