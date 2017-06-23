<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>vipselect_success</title>
<link href="../../CSS/main.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/head.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/main_left.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/vipselect_success.css" rel="stylesheet" type="text/css" />
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
				<div id="vipselect_success">
					<s:set name="vip" value="#request.vip" />
					<h2><s:property value="#vip.name" />的详情信息如下：</h2>
					<table>
						<tr>
							<th>VIPID：</th>
							<td><s:property value="#vip.vipId" /></td>
						</tr>
						<tr>
							<th>时间：</th>
							<td><s:property value="#vip.joinTime" /></td>
						</tr>
						<tr>
							<th>年龄：</th>
							<td><s:property value="#vip.age" /></td>
						</tr>
						<tr>
							<th>职业：</th>
							<td><s:property value="#vip.profession" /></td>
						</tr>
					</table>					
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>