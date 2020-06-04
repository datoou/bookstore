<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.model.User" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>苗苗-图书信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main1.css" type="text/css"/>
    <%
        User user = (User) request.getSession().getAttribute("user");
        if(null == user){
    %>
    <%
    }else{
    %>
    <script type="text/javascript">
        function addCart() {
            //弹出一个对话框
            alert("商品已成功添加至购物车！");
        }
    </script>
    <%
        }
    %>

</head>
<body class="main">
<div style="text-align:right;position: relative;top: 70px;left: -230px;">
    <a style="font-size: 15px;" href="${pageContext.request.contextPath }/index.jsp">首页</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;
    <a style="font-size: 15px;" href="${pageContext.request.contextPath}/showProductByPage?category=${p.category}">&nbsp;${p.category}</a>
    <span style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;${p.name}</span>
</div>
<div id="divpagecontent"
     style="margin-top: 100px;height:500px;background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);border-radius: 15px;">


    <img src="${pageContext.request.contextPath }/images/miaomiao.png" width="1100" height="84"/>
    <div class="divbookcover">
        <img src="${pageContext.request.contextPath}${p.imgurl}" width="213" height="269" border="0"style="padding-bottom: 30px;"/>
    </div>

    <div class="booklist_1">
        <div class="booklist_1_text">苗苗自营
            <div class="booklist_1_bookname">
                ${p.name}
            </div>
        </div>
        <div class="booklist_1_content">
            <p class="booklist_1_contentp">${p.description}</p>
        </div>
        <div class="booklist_1_price">
            <div style="font-size: 14px;color:grey;text-align: left;padding: 5px 0px 0px 5px;">苗苗价：</div>
            <div style="font-size: 22px;margin:15px 0px 0px 5px;float: left;color: red;text-align: left;display: inline-block;">
                <div style="display: inline-block;font-size: 14px;">￥</div>
                ${p.price}
            </div>
        </div>
    </div>
</div>
<div class="cart_button">
    <a href="${pageContext.request.contextPath}/addCart?id=${p.id}" onclick="addCart()">
        <button class="booklist_1_button">
            <img src="images/cart_button.png" style="width: 30px;height: 30px;float: left;padding-top:9px; ">
            <p style="height: 30px;color: white;font-size:16px;margin-top:10px;font-weight: bolder;">加入购物车</p>
        </button>
    </a>
    <a href="${pageContext.request.contextPath}/settleAccountServlet?id=${p.id}">
        <button class="booklist_1_button2">
            <p style="height: 30px;color: red;font-size: 16px;padding:-3px 0px 6px 0px;margin-top: 10px; ">立即购买</p>
        </button>
    </a>
</div>
<%--<jsp:include page="foot.jsp" />--%>
</body>
</html>
