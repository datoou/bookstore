<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="http://www.itcast.cn/tag"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>苗苗网-订单信息</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/main1.css" type="text/css" />
</head>
<body class="main">
	<p:user/>
	<div id="divpagecontent" style="margin-top: 50px;">
		<table width="100%" border="0" cellspacing="0" >
			<tr>
				<td>
					<div style="text-align:right; margin:5px 10px 5px 0;font-size: 15px;">
						<a style="font-size: 15px;" href="${pageContext.request.contextPath }/index.jsp">首页</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;
						<a style="font-size: 15px;"href="${pageContext.request.contextPath }/findOrderByUser">订单查询</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;订单详细信息
					</div>
					<table cellspacing="0" class="infocontent" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border: 0;border-radius: 15px;padding: 15px 15px 15px 15px;
margin-bottom: 50px;margin-top: 20px;">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0">
									<tr>
										<td>
											<p style="font-size: 15px;"><span style="font-size: 17px;color: grey;">订单编号:&nbsp;&nbsp;</span>${order.id}</p>
										</td>
									</tr>
									<tr>
										<td>
											<table cellspacing="1" class="carttable" >
												<tr>
													<td width="10%" style="text-align: center;font-size: 15px;color: grey;">商品</td>
													<td width="40%" style="text-align: center;font-size: 15px;color: grey;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品名称</td>
													<td width="10%" style="text-align: center;font-size: 15px;color: grey;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价格</td>
													<td width="10%" style="text-align: center;font-size: 15px;color: grey;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数量</td>
													<td width="10%" style="text-align: center;font-size: 15px;color: grey;">小计</td>
												</tr>
												<br/>
											</table> 
											<c:forEach items="${order.orderItems}" var="item" varStatus="vs">
												<table width="100%" border="0" cellspacing="0" >
													<tr>
														<td width="10%"><img src="${pageContext.request.contextPath}/${item.p.imgurl}" width="130" height="160" border="0"/></td>
														<br/>
														<td width="40%" style="text-align: center;font-size: 15px;">${item.p.name}</td>
														<td width="10%" style="text-align: center;font-size: 15px;">${item.p.price }</td>
														<td width="10%" style="text-align: center;font-size: 15px;">${item.buynum }</td>
														<td width="10%" style="text-align: center;font-size: 15px;">${item.buynum*item.p.price }</td>
													</tr>
												</table>
												<br/>
											</c:forEach>
											<table cellspacing="1" class="carttable">
												<tr>
													<td style="text-align:right; padding-right:40px;"><font
														style="color:red;font-size: 17px;font-weight: bold;">合计：&nbsp;&nbsp;${order.money}</font>
													</td>
												</tr>
											</table>
											<br/>
											<p style="font-size: 15px;line-height: 30px;color: #707070">
												收货地址：<span style="color:black;">${order.receiverAddress }</span>&nbsp;&nbsp;&nbsp;&nbsp;<br />
												收货人：&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:black;">${order.receiverName }</span>&nbsp;&nbsp;&nbsp;&nbsp;<br />
												联系方式：<span style="color:black;">${order.receiverPhone }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>
												下单时间:&nbsp;&nbsp;&nbsp;<span style="color:black;">${order.ordertime}</span><br/>
												订单状态:&nbsp;&nbsp;&nbsp;<span style="color:black;">${order.paystate==0?"未支付":"已支付"}</span>
											</p>
											<c:if test="${order.paystate != 1 }">
											<div style="text-align:center">
												<a href="${pageContext.request.contextPath}/pay.jsp?id=${order.id}&money=${order.money}">
													<div class="zhifuorder">支付订单</div>
												</a>
											</div>
											</c:if>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
