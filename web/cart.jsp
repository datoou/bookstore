<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.model.Product" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="http://www.itcast.cn/tag"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>电子书城</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main1.css" type="text/css" />
<script>
    //当商品数量发生变化时触发该方法
	function changeProductNum(count, totalCount, id) {
		count = parseInt(count);
		totalCount = parseInt(totalCount);
		//如果数量为0，判断是否要删除商品
		if (count == 0) {
			var flag = window.confirm("确认删除商品吗?");

			if (!flag) {
				count = 1;
			}
		}
		if (count > totalCount) {
			alert("已达到商品最大购买量");
			count = totalCount;
		}
		location.href = "${pageContext.request.contextPath}/changeCart?id="
				+ id + "&count=" + count;
	}
	//删除购物车中的商品
	function cart_del() {   
	    var msg = "您确定要删除该商品吗？";   
	    if (confirm(msg)==true){   
	    return true;   
	    }else{   
	    return false;   
	    }   
	}   
</script>
</head>
<body class="main">
	<p:user/>
	<div class="divpagecontent">
		<div style="width: 1100px;height: 150px; margin-left: -100px">
            <a href="${pageContext.request.contextPath }/index.jsp">
		<img src="${pageContext.request.contextPath}/images/tcart.jpg" style="margin-left: -130px" width="300px" height="128px" />
            </a>
		<img src="${pageContext.request.contextPath}/images/step_1.png" style="float: right;margin-top: 40px" width="650" height="68" />

		</div>
		<div style="width: 1530px;height:5px;margin-left:-302px;margin-bottom:30px;border-bottom: 3px red solid;">

		</div>
		<%
			Map<Product, Integer> cart = (Map<Product, Integer>)session.getAttribute("cart");
			if(null == cart){
		%>
		<div style="width: 300px;height: 300px;margin-top: 50px;">
			<img src="images/cart_kong.png" style="width: 300px;height: 200px;" >
		</div>
		<div style="position: relative;top: -200px;font-size: 16px;color: grey;">您的购物车还是空的，您可以：<a style="color: red;font-size: 15px;" href="${pageContext.request.contextPath}/index.jsp">去逛逛</a></div>
		<%
		}else{
		%>
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td>

					<table cellspacing="0" style="width: 1100px;margin-left:-100px;">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0"style="border:0;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border-radius: 15px;">
									<br/>
									<tr>
										<td>
											<table cellspacing="1" class="carttable"style="border:0;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);" >
												<br/>
												<br/>
												<tr>
													<td width="10%" style="text-align:center;color:grey;font-size:16px;height: 30px;">序号</td>
													<td width="30%" style="text-align:center;color:grey;font-size:16px;">商品名称</td>
													<td width="10%" style="text-align:center;color:grey;font-size:16px;">价格</td>
													<td width="20%" style="text-align:center;color:grey;font-size:16px;">数量</td>
													<td width="10%" style="text-align:center;color:grey;font-size:16px;">库存</td>
													<td width="10%" style="text-align:center;color:grey;font-size:16px;">小计</td>
													<td width="10%" style="text-align:center;color:grey;font-size:16px;">删除</td>
												</tr>
											</table>
											<!-- 循环输出商品信息 -->
											<c:set var="total" value="0" />
											<c:forEach items="${cart}" var="entry" varStatus="vs">
												<table width="100%" border="0" cellspacing="0" >
													<tr>
														<td style="text-align:center;height: 30px;font-size: 15px;padding-left: 10px;" width="10%">${vs.count}</td>
														<td style="text-align:center;height: 30px;font-size: 15px;letter-spacing: 1px;"width="30%">${entry.key.name }</td>
														<td style="text-align:center;height: 30px;font-size: 13px;letter-spacing: 1px;"width="10%">${entry.key.price }</td>
														<td width="20%" style="text-align:center;">
														    <!-- 减少商品数量 -->
															<input type="button" value='-' style="width:20px;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border:1px solid rgba(0,0,249,0.25);"
															       onclick="changeProductNum('${entry.value-1}','${entry.key.pnum}','${entry.key.id}')">
															 <!-- 商品数量显示 -->
															<input name="text" type="text" value="${entry.value}" style="width:40px;text-align:center;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border: 1px solid rgba(0,0,249,0.25);" />
															<!-- 增加商品数量 -->
															<input type="button" value='+' style="width:20px;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border:1px solid rgba(0,0,249,0.25);"
															       onclick="changeProductNum('${entry.value+1}','${entry.key.pnum}','${entry.key.id}')">
														</td>
														<td style="text-align:center;height: 30px;font-size: 13px;letter-spacing: 1px;" width="10%">${entry.key.pnum}</td>
														<td style="text-align:center;height: 30px;font-size: 13px;letter-spacing: 1px;" width="10%">${entry.key.price*entry.value}</td>
														<td width="10%">
														    <!-- 删除商品 -->
															<a href="${pageContext.request.contextPath}/changeCart?id=${entry.key.id}&count=0"
															style="color:#FF0000; font-weight:bold" onclick="javascript:return cart_del()">
															<img src="images/delete_1.png" style="width: 15px;height: 15px;margin-left: 45px;margin-top: 3px;"></a>
														</td>
													</tr>
												</table>
												<c:set value="${total+entry.key.price*entry.value}" var="total" />
											</c:forEach>
												<br/>
												<br/>
											<table cellspacing="1" class="carttable" style="border: 0;height: 30px;">
												<tr>
													<td style="height:50px;text-align:right; padding-right:40px;border:0;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);>
														<font style="color:#FF6600;font-size:16px;font-weight:bolder;>合计：&nbsp;&nbsp;${total}元</font>
													</td>
												</tr>
											</table>
											<div style="text-align:right; margin-top:10px">
											    <!--继续购物 -->
												<a href="${pageContext.request.contextPath}/showProductByPage">
													<div  class="cart_continue" >继续购物</div>
												</a>
                                                 <!--结账 -->
												<a href="${pageContext.request.contextPath}/order.jsp">
													<div  class="cart_settle" >结算</div>
												</a>
											</div>
										</td>
									</tr>
								</table>
								<br/>
								<br/>
								<br/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>

	<%
		}
	%>

</body>
</html>
