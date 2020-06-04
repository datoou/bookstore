<%--
  Created by IntelliJ IDEA.
  User: MWJ
  Date: 2019/7/2
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            height:200px;
        }
    </style>
</head>
<body>
    <c:forEach items="${pList }" var="pArray">
        <div style="width: 175px;height:240px;display: inline-block;float: left;margin-left: 30px;margin-top: 20px;">
            <a href="${pageContext.request.contextPath}/findProductById?id=${pArray[0]}" target="view_window">
                <img src="${pageContext.request.contextPath }${pArray[2]}" width="160" height="175" border="0"/>
            </a>
            <br/>
            <a style="color: black;font-size: 15px;margin-bottom: 5px;text-decoration: none;"
               href="${pageContext.request.contextPath}/findProductById?id=${pArray[0]}">${pArray[1]}</a>
            <br/>
            <a style="color: red;font-weight: bolder;font-size: 15px;text-decoration: none;"
               href="${pageContext.request.contextPath}/findProductById?id=${pArray[0]}">￥${pArray[3]}</a>
        </div>
    </c:forEach>
</body>
</html>
