<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>苗苗网-订单创建成功</title>
	<link rel="stylesheet" href="css/main1.css" type="text/css" />
	<script type="text/javascript" src="js/my1.js">
	</script>
</head>
<body class="main">
	<div id="divcontent" style="margin-top:170px;border-radius:15px;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%)">
		<table width="850px" border="0" cellspacing="0" >
			<tr>
				<td style="padding:30px; text-align:center">
				    <table width="80%" border="0" cellspacing="0" style="margin-top:70px;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border: 0px">
						<tr>
							<td style="width:98px">
								<img src="images/createsuccess.png" width="128" height="128" style="margin-top: -20px;margin-right: 30px;"/>
							</td>
							<td style="padding-top:30px;">
								<font style="font-weight:bold; color:#FF0000">亲，订单生成成功，请到“我的订单”-“订单查询”中支付！</font><br /> <br />
								<a href="${pageContext.request.contextPath }/index.jsp">
									<span id="second">5</span>秒后自动为您转跳首页</a>
							</td>
						</tr>
					</table>
				  <h1>&nbsp;</h1>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
