<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: MWJ
  Date: 2019/6/4
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.model.User" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>苗苗网图书</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <script type="text/javascript" src="js/slideshow.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
    <script>
        $(function () {

            //先将#back-top隐藏
            $('#back-top').hide();

            //当滚动条的垂直位置距顶部100像素一下时，跳转链接出现，否则消失
            $(window).scroll(function () {
                if ($(window).scrollTop() > 100) {
                    $('#back-top').fadeIn(1000);
                } else {
                    $("#back-top").fadeOut(1000);
                }
            });

            //点击跳转链接，滚动条跳到0的位置，页面移动速度是1000
            $("#back-top").click(function () {
                $('body').animate({
                    scrollTop: '0'
                }, 1000);
                return false; //防止默认事件行为
            })
        })
    </script>
    <script type="text/javascript">
        //退出确认框
        function confirm_logout() {
            var msg = "您确定要退出登录吗？";
            if (confirm(msg) == true) {
                return true;
            } else {
                return false;
            }
        }
    </script>
</head>
<%--导航栏--%>
<body>
<div class="navigator_bj">
    <div class="navigator">
        <%--<%@include file="head.jsp"%>--%>

        <ul>
            <li>
                    <%
             User user = (User) request.getSession().getAttribute("user");
             if(null == user){
           %>
                请<a id="login_red" href="${pageContext.request.contextPath}/login.jsp">登录</a>
                    <%
           }else{
           %>
                欢迎您：<a id="login_red"> ${user.username}</a>
                    <%
             }
           %>
            <li><a href="${pageContext.request.contextPath}/cartServlet">购物车</a></li>
            <li><a href="${pageContext.request.contextPath}/findOrderByUser">我的订单</a></li>
            <li><a onclick="window.open('login.jsp')">客户服务</a></li>
            <li>
                <%
                    if (null != user) {
                %>
                <a class="logout" href="${pageContext.request.contextPath}/logout"
                   onclick="javascript:return confirm_logout()">用户退出</a>
                <%
                    }
                %>
            </li>
        </ul>
    </div>
</div>
<div class="top">
    <a href="${pageContext.request.contextPath }/index.jsp">


        <img class="top_logo" src="images/logo_b.png">
    </a>
    <div class="top_search">

    </div>

    <img class="top_logo1" src="images/logo_a.gif">
    <img class="top_logo2" src="images/logo_c.png">
</div>
<%--分类--%>
<div class="category_a">
    <div class="category">
        <%@include file="menu_search.jsp" %>
    </div>
    <%--广告--%>
    <div class="advertisement">
        <img class="advertisement_a" src="images/advert.png">
    </div>
    <%--轮播图--%>
    <div id="parent">
        <div id="uls">
            <ul id="img_ul">
                <li><img src="images/roll1.jpg"/></li>
                <li><img src="images/roll2.jpg"/></li>
                <li><img src="images/roll3.jpg"/></li>
                <li><img src="images/roll4.jpg"/></li>
                <li><img src="images/roll5.jpg"/></li>
                <li><img src="images/roll6.jpg"/></li>
            </ul>
            <ul id='litCir_ul'></ul>
        </div>
        <div id="buttons">
            <span id="left">&lt;</span>
            <span id="right">&gt;</span>
        </div>
    </div>
    <%--新书、排行榜--%>
    <div class="middle">
        <div class="newbook">
            <div class="newbook_top">
                <img class="newbook_tp" src="images/xinshu.png">
                <div class="newbook_text">书上架</div>
            </div>
            <div class="newbook_ul">
                <iframe class="notice" frameborder="0" src="<c:url value='/index2.jsp'/>" name="left"></iframe>
            </div>
        </div>

        <div class="ranking">
            <div class="ranking_top">
                <img class="ranking_tp" src="images/medals.png">
                <span class="ranking_text">新书热卖榜</span>
            </div>
            <div class="ranking_a" onload="this">
                <div id="ranking_book1">
                    <span class="ranking_m">1</span>
                    <span class="ranking_2">小孩</span>
                </div>
                <div id="ranking_book11" style="display:none;">
                    <img class="rankingbook11tp" src="images/rbook1.jpg">
                    <div class="rankingkk">
                        <span class="rankingtext">小孩</span><br/>
                        <span class="rankingprice1">￥29.80</span><br/>
                        <span class="rankingprice2">￥39.60</span><br/>
                        <span class="rankingprice3">568条评论</span>
                    </div>
                </div>
                <div id="ranking_book2">
                    <span class="ranking_m">2</span>
                    <span class="ranking_2">半小时漫画唐诗</span>
                </div>
                <div id="ranking_book21" style="display:none;">
                    <img class="rankingbook11tp" src="images/rbook2.jpg">
                    <div class="rankingkk">
                        <span class="rankingtext">半小时漫画唐诗</span><br/>
                        <span class="rankingprice1">￥25.80</span><br/>
                        <span class="rankingprice2">￥49.60</span><br/>
                        <span class="rankingprice3">1299条评论</span>
                    </div>
                </div>
                <div id="ranking_book3">
                    <span class="ranking_m">3</span>
                    <span class="ranking_2">人生海海</span>
                </div>
                <div id="ranking_book31" style="display:none;">
                    <img class="rankingbook11tp" src="images/rbook3.jpg">
                    <div class="rankingkk">
                        <span class="rankingtext">人生海海</span><br/>
                        <span class="rankingprice1">￥55.80</span><br/>
                        <span class="rankingprice2">￥69.60</span><br/>
                        <span class="rankingprice3">57207 条评论</span>
                    </div>
                </div>
                <div id="ranking_book4">
                    <span class="ranking_1">4</span>
                    <span class="ranking_2">数学幼升小</span>
                </div>
                <div id="ranking_book41" style="display:none;">
                    <img class="rankingbook11tp" src="images/rbook4.jpg">
                    <div class="rankingkk">
                        <span class="rankingtext">数学幼升小</span><br/>
                        <span class="rankingprice1">￥59.80</span><br/>
                        <span class="rankingprice2">￥118.00</span><br/>
                        <span class="rankingprice3">60条评论</span>
                    </div>
                </div>
                <div id="ranking_book5">
                    <span class="ranking_1">5</span>
                    <span class="ranking_2">愿为你赴一场前路不明的旅</span>
                </div>
                <div id="ranking_book51" style="display:none;">
                    <img class="rankingbook11tp" src="images/rbook5.jpg">
                    <div class="rankingkk">
                        <span class="rankingtext">愿为你赴一场前路不明的旅途</span><br/>
                        <span class="rankingprice1">￥22.50</span><br/>
                        <span class="rankingprice2">￥45.00</span><br/>
                        <span class="rankingprice3">749条评论</span>
                    </div>
                </div>
                <div id="ranking_book6">
                    <span class="ranking_1">6</span>
                    <span class="ranking_2">美国陷阱</span>
                </div>
                <div id="ranking_book61" style="display:none;">
                    <img class="rankingbook11tp" src="images/rbook6.jpg">
                    <div class="rankingkk">
                        <span class="rankingtext">美国陷阱</span><br/>
                        <span class="rankingprice1">￥41.90</span><br/>
                        <span class="rankingprice2">￥68.00</span><br/>
                        <span class="rankingprice3">426条评论</span>
                    </div>
                </div>
                <div id="ranking_book7">
                    <span class="ranking_1">7</span>
                    <span class="ranking_2">最初之前</span>
                </div>
                <div id="ranking_book71" style="display:none;">
                    <img class="rankingbook11tp" src="images/rbook7.jpg">
                    <div class="rankingkk">
                        <span class="rankingtext">最初之前</span><br/>
                        <span class="rankingprice1">￥36.70</span><br/>
                        <span class="rankingprice2">￥49.60</span><br/>
                        <span class="rankingprice3">3326条评论</span>
                    </div>
                </div>
                <div id="ranking_book8">
                    <span class="ranking_1">8</span>
                    <span class="ranking_2">摆渡人3无境之爱</span>
                </div>
                <div id="ranking_book81" style="display:none;">
                    <img class="rankingbook11tp" src="images/rbook8.jpg">
                    <div class="rankingkk">
                        <span class="rankingtext">摆渡人3无境之爱</span><br/>
                        <span class="rankingprice1">￥31.70</span><br/>
                        <span class="rankingprice2">￥46.00</span><br/>
                        <span class="rankingprice3">18351条评论</span>
                    </div>
                </div>
                <div id="ranking_book9">
                    <span class="ranking_1">9</span>
                    <span class="ranking_2">好关系是麻烦出来的</span>
                </div>
                <div id="ranking_book91" style="display:none;">
                    <img class="rankingbook11tp" src="images/rbook9.jpg">
                    <div class="rankingkk">
                        <span class="rankingtext">好关系是麻烦出来的</span><br/>
                        <span class="rankingprice1">￥23.40</span><br/>
                        <span class="rankingprice2">￥46.80</span><br/>
                        <span class="rankingprice3">6905条评论</span>
                    </div>
                </div>
                <div id="ranking_book0">
                    <span class="ranking_1">10</span>
                    <span class="ranking_2">我不喜欢这世界，我只喜欢</span>
                </div>
                <div id="ranking_book01" style="display:none;">
                    <img class="rankingbook11tp" src="images/rbook10.jpg">
                    <div class="rankingkk">
                        <span class="rankingtext">我不喜欢这世界，我只喜欢</span><br/>
                        <span class="rankingprice1">￥19.80</span><br/>
                        <span class="rankingprice2">￥39.60</span><br/>
                        <span class="rankingprice3">292809条评论</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="ranking_buttom"></div>
    <%--底部--%>
    <div class="buttom">
        <img class="button_tp" src="images/buttom_tp.png">
    </div>
    <div class="buttom_db">
        <div class="buttom_da_a">
            <div class="buttom_db_text">购物指南</div>
            <div class="buttom_db_zt">
                <a onclick="window.open('a.jsp')">购物流程</a><br/>
                <a onclick="window.open('a.jsp')">发票制度</a><br/>
                <a onclick="window.open('a.jsp')">服务协议</a><br/>
                <a onclick="window.open('a.jsp')">会员优惠</a>
            </div>
        </div>
        <div class="buttom_da_a">
            <div class="buttom_db_text">支付方式</div>
            <div class="buttom_db_zt">
                <a onclick="window.open('a.jsp')">货到付款</a><br/>
                <a onclick="window.open('a.jsp')">网上支付</a><br/>
                <a onclick="window.open('a.jsp')">礼品卡支付</a><br/>
                <a onclick="window.open('a.jsp')">银行转帐</a>
            </div>
        </div>
        <div class="buttom_da_a">
            <div class="buttom_db_text">订单服务</div>
            <div class="buttom_db_zt">
                <a onclick="window.open('a.jsp')">配送服务查询</a><br/>
                <a onclick="window.open('a.jsp')">订单状态说明</a><br/>
                <a onclick="window.open('a.jsp')">自助取消订单</a><br/>
                <a onclick="window.open('a.jsp')">自助修改订单</a>
            </div>
        </div>
        <div class="buttom_da_a">
            <div class="buttom_db_text">配送方式</div>
            <div class="buttom_db_zt">
                <a onclick="window.open('a.jsp')">当日递</a><br/>
                <a onclick="window.open('a.jsp')">次日达</a><br/>
                <a onclick="window.open('a.jsp')">订单自提</a><br/>
                <a onclick="window.open('a.jsp')">验货与签收</a>
            </div>
        </div>
        <div class="buttom_da_a">
            <div class="buttom_db_text">退换货</div>
            <div class="buttom_db_zt">
                <a onclick="window.open('a.jsp')">退换货服务查询</a><br/>
                <a onclick="window.open('a.jsp')">自助申请退换货</a><br/>
                <a onclick="window.open('a.jsp')">退换货进度查询</a><br/>
                <a onclick="window.open('a.jsp')">退款方式和时间</a>
            </div>
        </div>
        <div class="buttom_da_a">
            <div class="buttom_db_text">商家服务</div>
            <div class="buttom_db_zt">
                <a onclick="window.open('a.jsp')">商家中心</a><br/>
                <a onclick="window.open('a.jsp')">运营服务</a><br/>
                <a onclick="window.open('a.jsp')">加入尾品汇</a><br/>
            </div>
        </div>
    </div>
    <div class="buttom_underline"></div>
    <div class="buttom_db_nav">
        <ul>
            <li><a onclick="window.open('a.jsp')">公司简介</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
            <li><a onclick="window.open('a.jsp')">诚聘英才</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
            <li><a onclick="window.open('a.jsp')">网站联盟</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
            <li><a onclick="window.open('a.jsp')">苗苗招商</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
            <li><a onclick="window.open('a.jsp')">机构销售</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
            <li><a onclick="window.open('a.jsp')">官方Blog</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
            <li><a onclick="window.open('a.jsp')">手机苗苗</a>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
            <li><a onclick="window.open('a.jsp')">热词搜索</a></li>
        </ul>
    </div>
    <div class="buttom_db_bb">Copyright (C) 苗苗网 2004-2017, All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;京ICP证041189号出版物经营许可证
        新出发京批字第直0673号
    </div>
    <a href="#" id="back-top"><img src="images/return_top1.png" style="width: 40px;height: 40px;margin-top: 10px"></a>
    <a id="notice" class="tooltips" href="#"><img src="images/notice_a.png"
                                                  style="width: 40px;height: 40px;margin-top: 10px">
        <table align="center" width="500px" border="0">
            <tr>
                <td align="center">
                    <iframe class="notice" frameborder="0" src="<c:url value='/index1.jsp'/>" name="left"></iframe>
                </td>
            </tr>
        </table>
    </a>
</body>
</html>
