<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>bookStore列表</title>
	<%--导入css --%>
	<link rel="stylesheet" href="css/main1.css" type="text/css" />
</head>
<body class="main">
	<div id="divpagecontent">
		<table width="100%" border="0" cellspacing="0" >
			<tr>
				<td><div style="text-align:right; font-size:15px;margin:50px 10px -20px 0px">
						<a href="index.jsp" style="font-size: 15px;">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;全部商品&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;图书列表
					</div>
					<table cellspacing="0" class="listcontent" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border: 0;margin-top: 50px;
border-radius: 15px;">
						<tr>
							<td>
								<br/>
								<br/>
								<h1>全部商品</h1>&nbsp;&nbsp;&nbsp;&nbsp;<span
									style="font-size: 15px;color: grey;">共${bean.totalCount}种商品</span>
								<br/>
								<br/>

								<table cellspacing="0" class="booklist">
									<tr>
										<c:forEach items="${bean.ps}" var="p" varStatus="vs">
											<td>
												<div class="divbookpic">
													<p>
														<a href="${pageContext.request.contextPath}/findProductById?id=${p.id}"><img
															src="${pageContext.request.contextPath}${p.imgurl}"
															width="115" height="129" border="0" /> </a>
													</p>
												</div>
												<div class="divlisttitle">
													<a  href="${pageContext.request.contextPath}/findProductById?id=${p.id}">
														<span style="color: black;font-size: 17px;"> ${p.name}</span>
														<br/>
														<br/>
														<span style="font-size: 14px;color: grey;">售价：</span>
														<span style="color: red;font-size: 16px;">￥${p.price}</span>
													</a>
												</div>
											</td>
										</c:forEach>
									</tr>
								</table>
								<div class="pagination" style="margin-top: 20px;">
									<ul>
										<c:if test="${bean.currentPage!=1}">
											<li class="nextPage">
												<a href="${pageContext.request.contextPath}/MenuSearchServlet?currentPage=${bean.currentPage-1}&textfield=${bean.searchfield}">&lt;&lt;上一页</a>
											</li>
										</c:if>
										<c:if test="${bean.currentPage==1}">
											<li class="disablepage">&lt;&lt;上一页</li>
										</c:if>
										<c:forEach begin="1" end="${bean.totalPage}" var="pageNum">

											<c:if test="${pageNum==bean.currentPage}">
												<li class="currentpage">${pageNum }</li>
											</c:if>
											<c:if test="${pageNum!=bean.currentPage}">
												<li><a href="${pageContext.request.contextPath}/MenuSearchServlet?currentPage=${pageNum}&textfield=${bean.searchfield}">${pageNum}</a>
												</li>
											</c:if>

										</c:forEach>

										<c:if test="${bean.currentPage==bean.totalPage||bean.totalPage==0}">
											<li class="disablepage">下一页 &gt;&gt;</li>
										</c:if>

										<c:if test="${bean.currentPage!=bean.totalPage&&bean.totalPage!=0}">
											<li class="nextpage">
												<a href="${pageContext.request.contextPath}/MenuSearchServlet?currentPage=${bean.currentPage+1}&textfield=${bean.searchfield}">下一页&gt;&gt;</a>
											</li>
										</c:if>
									</ul>
								</div></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>



	<%--<jsp:include page="foot.jsp" />--%>


</body>
</html>
