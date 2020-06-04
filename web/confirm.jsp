<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>苗苗-确认支付</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main1.css" type="text/css" />
	<script type="text/javascript">
		function paySuccess() {
			//弹出一个对话框
			alert("支付成功！");
		}
	</script>
</head>
	<!-- 确认支付form -->
	<body>
	<div class="confirm">
	<form action="${pageContext.request.contextPath }/orderstate" method="post">
		<h3>订单号：${orderid}<br/>
			付款金额 ：${money}</h3>
			<input type="hidden" name="orderid" value="${orderid}"/>
		<br/>
		<br/>
		<br/>
		<br/>
			<input type="submit" value="支付"  onclick="paySuccess()" class="zhifubutton" style="border: 0;font-size:19px;height:50px;width: 100px;background-color: red;color: white;
font-weight: bolder;border-radius: 7px;" />
	</form>
	</div>
</body>
</html>