<%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
<title>commodityInput</title>
<link href="${pageScope.basePath}CSS/main.css" rel="stylesheet" type="text/css" />
<link href="${pageScope.basePath}CSS/head.css" rel="stylesheet" type="text/css" />
<link href="${pageScope.basePath}CSS/main_left.css" rel="stylesheet" type="text/css" />
<link href="${pageScope.basePath}CSS/commodityInput.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
      	function verify() {
            var price = document.getElementById("price").value;
            var agio = document.getElementById("agio").value;
            if (isNaN(price)){
                alert("价格不合法，请输入数字");
            }
            if(isNaN(agio)){
	            alert("折扣不合法，请输入小数");
            }
	        if(agio >= 1 || agio < 0){
				alert("折扣不合法，请输入小数");
	        }
        }
</script>
</head>
<body>
	<div id="main_page">
		<div id="head">
			<%--<jsp:include page="${pageScope.basePath}JSP/Other/head.jsp"></jsp:include>--%>
			<jsp:include page="../Other/head.jsp"></jsp:include>
		</div>
		<div id="content">
			<div id="main_left">
				<%--<jsp:include page="${pageScope.basePath}JSP/Other/main_left.jsp" />--%>
				<jsp:include page="../Other/main_left.jsp" />
			</div>
			<div id="main_right">
				<s:form action="../Other/infoInput" method="post" id="infoInput">
					<table>
						<tr>
							<td><span>商品名:</span></td>
							<td><input type="text" name="commodityName" class="input" required="required"/></td>
						</tr>
						<tr>
							<td><span>价格:</span></td>
							<td><input type="text" name="price" class="input" required="required" id="price"/></td>
						</tr>
						<tr>
							<td><span>折扣:</span></td>
							<td><input type="text" name="agio" class="input" required="required" id="agio"/></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="确定" id="submit" onmousemove="verify()"/></td>
						</tr>
					</table>
				</s:form>
			</div>
		</div>
	</div>

</body>
</html>