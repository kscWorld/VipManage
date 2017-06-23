<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>select_success</title>
<link href="../../CSS/main.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/head.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/main_left.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/select_success.css" rel="stylesheet" type="text/css" />
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
				<div id="select_success">
					<s:set name="commodity" value="#request.commodity" />
					<h2><s:property value="#commodity.commodityName" />的详情信息如下：</h2>
					<table>
						<tr>
							<th>商品ID：</th>
							<td><s:property value="#commodity.commodityId" /></td>
						</tr>
						<tr>
							<th>价格：</th>
							<td><s:property value="#commodity.price" /></td>
						</tr>
						<tr>
							<th>折扣：</th>
							<td><s:property value="#commodity.agio" /></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>