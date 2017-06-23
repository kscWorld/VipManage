<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>vipRegister</title>
<link href="../../CSS/main.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/head.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/main_left.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/vipRegister.css" rel="stylesheet" type="text/css" />
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
				<div id="vipRegister">
					<table>
						<tr>
							<th>订单ID</th>
							<th>VIPID</th>
							<th>姓名</th>
							<th>商品ID</th>
							<th>名称</th>
							<th>价格</th>
							<th>实际价格</th>
						</tr>
						<s:iterator value="#request.list" var="consume" id="consume">
						<tr>
							<td><s:property value="#consume.consumeId"/></td>
							<td><s:property value="#consume.vip.vipId"/></td>
							<td><s:property value="#consume.name"/></td>
							<td><s:property value="#consume.commodity.commodityId"/></td>
							<td><s:property value="#consume.commodityName"/></td>
							<td><s:property value="#consume.price"/></td>
							<td><s:property value="#consume.practicePrice"/></td>
						</tr>
					</s:iterator>
					</table>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>