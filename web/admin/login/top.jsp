<%@ page import="com.model.User" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
BODY {
	MARGIN: 0px;
	BACKGROUND-COLOR: #ffffff
}

BODY {
	FONT-SIZE: 12px;
	COLOR: #000000
}

TD {
	FONT-SIZE: 12px;
	COLOR: #000000
}

TH {
	FONT-SIZE: 12px;
	COLOR: #000000
}
.manager_text{
	font-size: 29px;
	text-align: center;
	margin-top: -45px;
	letter-spacing: 25px;
}
.height1{width:100%; height:74px;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); }
/*.img_logo{*/
	/*min-width:100%;*/
	/*max-width:100%;*/
	/*height:74px;*/
/*}*/

</style>
<link href="${pageContext.request.contextPath}/admin/css/Style.css"
	rel="stylesheet" type="text/css">

	<script type="text/javascript">
		//退出确认框
		function confirm_logout() {
			var msg = "您确定要退出登录吗？";
			if (confirm(msg)==true){
				return true;
			}else{
				return false;
			}
		}
	</script>
</HEAD>
<body>
	<div class="height1">
		<img class="img_logo"  style="width: 50px;height: 50px;margin-left: 430px;margin-top: 15px;display: inline-block;" src="${pageContext.request.contextPath}/admin/images/manager_1.png">
		<div class="manager_text">苗苗网后台管理系统</div>
	</div>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height="26" valign="bottom"
				style="border-top: 1px solid black;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="85%" align="left" style="border: 0;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							<font color="#000000" style="font-size: 16px;">
								<script language="JavaScript">								
									tmpDate = new Date();
									date = tmpDate.getDate();
									month = tmpDate.getMonth() + 1;
									year = tmpDate.getFullYear();
									document.write(year);
									document.write("年");
									document.write(month);
									document.write("月");
									document.write(date);
									document.write("日 ");

									myArray = new Array(6);
									myArray[0] = "星期日"
									myArray[1] = "星期一"
									myArray[2] = "星期二"
									myArray[3] = "星期三"
									myArray[4] = "星期四"
									myArray[5] = "星期五"
									myArray[6] = "星期六"
									weekday = tmpDate.getDay();
									if (weekday == 0 | weekday == 6) {
										document.write(myArray[weekday])
									} else {
										document.write(myArray[weekday])
									};								
								</script> 
							</font>
						</td>
						<td width="15%">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td style="width: 100px;font-size: 16px;">
										<%
											User user = (User) request.getSession().getAttribute("user");

											if(null != user){
										%>
										欢迎您：<a  style="display: inline-block;"> ${user.username}</a>
										<%
										}
										%>
									</td>
									<%--<td width="155" valign="bottom" background="${pageContext.request.contextPath}/admin/images/mis_05b.jpg">--%>
										<%--<font color="blue"><a class="logout" href="${pageContext.request.contextPath}/managerLogout" onclick="javascript:return confirm_logout()">用户退出</a> </font></td>--%>
								</tr>
							</table>
						</td>
						<td align="right" width="5%"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</HTML>
