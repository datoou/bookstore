<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>电子书城</title>
	<link rel="stylesheet" href="css/main1.css" type="text/css" />
	<script type="text/javascript" src="js/my.js"></script>
</head>

<body class="main">
	<div class="divcontent">
		<table width="850px" border="0" cellspacing="0">
			<tr>
				<td style="padding:30px; text-align:center"><table width="100%"
						border="0" cellspacing="0" style="margin-top:70px">
						<tr>
							<td style="width:98px">
								<img src="images/nologin.png" style="width: 180px;height: 200px;margin-top: -20px;margin-left: 50px;" />
							</td>
							<td style="padding-top:30px"><font
								style="font-weight:bold; color:#ff0000;font-size:18px;margin-left: 200px;">您还没有登录,请登录后操作</font><br />
								<br />
								<div style="width: 200px;margin-left: 200px;margin-top: 30px;">
								<a href="${pageContext.request.contextPath }/login.jsp">
									<span id="second">5</span>秒后自动为您转跳登录
								</a>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
