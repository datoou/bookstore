<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>苗苗-图书购物中心</title>
    <%--导入css --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/main1.css" type="text/css"/>
</head>
<body class="main">
<div id="divpagecontent">
    <table width="100%" border="0" cellspacing="0" style="border: 0;">
        <tr>
            <td>
                <div style="text-align:right;position: relative;top: 75px;left: -10px;">
                    <a style="font-size: 16px;" href="${pageContext.request.contextPath }/index.jsp">首页</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="font-size: 16px;">${bean.category}</span>
                </div>
                <table cellspacing="0" class="listcontent"
                       style="margin-top: 100px;border-radius:15px;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border: 0">
                    <tr>
                        <td>
                            <span style="font-size: 20px;font-weight: bolder;">${bean.category}</span>&nbsp;&nbsp;&nbsp;&nbsp;<span
                                style="font-size: 15px;color: grey;">共${bean.totalCount}种商品</span>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <table cellspacing="0" class="booklist" style="border: 0;">
                                <tr>
                                    <c:forEach items="${bean.ps}" var="p" varStatus="vs">
                                        <td>
                                            <div class="divbookpic">
                                                <p>
                                                    <a href="${pageContext.request.contextPath}/findProductById?id=${p.id}">
                                                        <img src="${pageContext.request.contextPath}${p.imgurl}"
                                                             style="width: 150px;height: 200px;"/>
                                                    </a>
                                                </p>
                                            </div>
                                            <div class="divlisttitle">
                                                <a href="${pageContext.request.contextPath}/findProductById?id=${p.id}">
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
                            <div class="pagination">
                                <ul>
                                    <c:if test="${bean.currentPage!=1}">
                                        <li class="disablepage_p">
                                            <a class="disablepage_a"
                                               href="${pageContext.request.contextPath}/showProductByPage?currentPage=${bean.currentPage-1}&category=${bean.category}"></a>
                                        </li>
                                    </c:if>
                                    <c:if test="${bean.currentPage==1}">
                                        <li class="disablepage_p2">上一页</li>
                                    </c:if>
                                    <c:forEach begin="1" end="${bean.totalPage}" var="pageNum">
                                        <c:if test="${pageNum==bean.currentPage}">
                                            <li class="currentpage">${pageNum }</li>
                                        </c:if>
                                        <c:if test="${pageNum!=bean.currentPage}">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/showProductByPage?currentPage=${pageNum}&category=${bean.category}">${pageNum}</a>
                                            </li>
                                        </c:if>
                                    </c:forEach>

                                    <c:if test="${bean.currentPage==bean.totalPage||bean.totalPage==0}">
                                        <li class="disablepage_n2">下一页</li>
                                    </c:if>
                                    <c:if test="${bean.currentPage!=bean.totalPage&&bean.totalPage!=0}">
                                        <li class="disablepage_n">
                                            <a class="disablepage_a"
                                               href="${pageContext.request.contextPath}/showProductByPage?currentPage=${bean.currentPage+1}&category=${bean.category}">下一页</a>
                                        </li>
                                    </c:if>
                                </ul>
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
