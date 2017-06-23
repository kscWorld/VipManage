<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>vipManage</title>
<link href="../../CSS/main.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/head.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/main_left.css" rel="stylesheet" type="text/css" />
<link href="../../CSS/vipManage.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
      	function verifyAge() {
            var age = document.getElementById("age").value;
            if (isNaN(age) || age < 0){
                alert("年龄不合法，请输入整数");
            }
        }
</script>
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
				<s:form action="../Other/vipManage" method="post" id="vipManage">
					<table>
						<tr>
							<td><span>vip姓名:</span></td>
							<td><input type="text" name="name" class="input" required="required"/></td>
						</tr>
						<tr>
							<td><span>年龄:</span></td>
							<td><input type="text" name="age" class="input" required="required" id="age"/></td>
						</tr>
						<tr>
							<td><span>职业:</span></td>
							<td><input type="text" name="profession" class="input" required="required"/></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="确定" id="submit" onmousemove="verifyAge()"/></td>
						</tr>
					</table>
				</s:form>
			</div>
		</div>
	</div>
	
</body>
</html>