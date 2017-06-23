<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>vipSelect</title>
<link href="../../CSS/main.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/head.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/main_left.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/vipSelect.css" rel="stylesheet" type="text/css" />
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
				<div id="vipSelect">
					<table>
						<tr>
							<th>姓名</th>
							<th>操作</th>
						</tr>
						<s:iterator value="#request.list" var="vip" id="vip">
						<tr>
							<td><s:property value="#vip.name"/></td>
							<td><a href="../Other/vipSelect.action?vip_name=<s:property value="#vip.name"/>">查询</a></td>
						</tr>
						</s:iterator>				
					</table>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>