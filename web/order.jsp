<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="http://www.itcast.cn/tag"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>苗苗网-填写订单</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main1.css" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/order.js"></script>
</head>
<body class="main">
	<p:user/>
	<div style="position: relative;top: 50px;left: 500px">
		<a  style="font-size: 16px;" href="${pageContext.request.contextPath}/cart.jsp">
			&nbsp;&nbsp;&nbsp;返回购物车</a>
	</div>
	<div style="width: 1100px;height: 150px; margin-left: 200px;margin-top: 30px;">
		<a href="${pageContext.request.contextPath }/index.jsp">
			<img src="${pageContext.request.contextPath}/images/torder.jpg" style="width:300px;margin-left: -130px" height="128px" />
		</a>
		<img src="${pageContext.request.contextPath}/images/step_2.png" style="float: right;margin-top: 40px" width="650" height="68" />
    </div>
	<div style="width: 1520px;height:5px;margin-left:10px;margin-top:-10px;border-bottom: 3px red solid;"></div>
	<div id="divpagecontent" style="margin-top: 20px;">
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td>
					<form id="orderForm" action="${pageContext.request.contextPath}/createOrder" method="post">
								<table width="100%"  cellspacing="0" style="border:0;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border-radius: 15px;">
									<br/>
									<br/>
										<tr>
											<td>
											    <table cellspacing="1" class="carttable" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border: 0px">
													<br/>
													<br/>
													<tr>
														<td width="10%" style="text-align:center;color:grey;font-size:16px;height: 30px;">序号</td>
														<td width="40%" style="text-align:center;color:grey;font-size:16px;">商品名称</td>
														<td width="10%" style="text-align:center;color:grey;font-size:16px;">价格</td>
														<td width="10%" style="text-align:center;color:grey;font-size:16px;">类别</td>
														<td width="10%" style="text-align:center;color:grey;font-size:16px;">数量</td>
														<td width="10%" style="text-align:center;color:grey;font-size:16px;">小计</td>
													</tr>
												</table> 
												<c:set value="0" var="totalPrice"/>
												<c:forEach items="${cart}" var="entry" varStatus="vs">
													<table width="100%" border="0" cellspacing="0" >
														<tr>
															<td style="text-align:center;height: 30px;font-size: 15px;"width="10%" style="text-align:center;">${vs.count}</td>
															<td style="text-align:center;height: 30px;font-size: 15px;"width="40%">${entry.key.name }</td>
															<td style="text-align:center;height: 30px;font-size: 15px;"width="10%">${entry.key.price }</td>
															<td style="text-align:center;height: 30px;font-size: 15px;"width="10%">${entry.key.category}</td>
															<td style="text-align:center;height: 30px;font-size: 15px;"width="10%">${entry.value}</td>
															<td style="text-align:center;height: 30px;font-size: 15px;"width="10%">${entry.key.price*entry.value}</td>
														</tr>
													</table>
													<c:set var="totalPrice" value="${totalPrice+entry.key.price*entry.value}"/>
												</c:forEach>

												<table cellspacing="1" class="carttable" style="border: 0">
													<tr>
														<br/>
														<br/>
														<td style="text-align:right; padding-right:40px;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border: 0px"><font
																style="color:#FF6600;font-size: 16px; font-weight:bold">合计：&nbsp;&nbsp;${totalPrice}元</font>
															<input type="hidden" name="money" value="${totalPrice}">
														</td>
													</tr>
												</table>
												<br/>
												<br/>
												<p style="padding-left: 30px;line-height: 40px;">
													<span style="font-size: 16px;color: grey;">收货地址：</span><input id="receiverAddress" name="receiverAddress" type="text" value=" "style="width:300px" onkeyup="checkReceiverAddress();" />
													&nbsp;&nbsp;&nbsp;&nbsp;
													<span id="receiverAddressMsg"></span>
													<br/>
													<span style="font-size: 16px;color: grey;">收货人：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input id="receiverName" name="receiverName" type="text" value="${user.username}" style="width:150px" onkeyup="checkReceiverName();" />
												    <span id="receiverNameMsg"></span>
												    &nbsp;&nbsp;&nbsp;&nbsp;
													<br/>
													<span style="font-size: 16px;color: grey;">联系方式：</span><input type="text" id="receiverPhone" name="receiverPhone" value="${user.telephone}" style="width:150px" onkeyup="checkReceiverPhone();" />
													<span id="receiverPhoneMsg"></span>
													&nbsp;&nbsp;&nbsp;&nbsp;
												</p>

													<div class="order_tj" onclick="checkOnSubmit();">提交订单</div>

												<br/>
												<br/>
											</td>
										</tr>
									</table>
					</form>
				</td>
			</tr>
		</table>
	</div>
	<br/>
	<br/>
	<br/>
	<br/>
</body>
</html>
