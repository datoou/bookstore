<%--
  Created by IntelliJ IDEA.
  User: MWJ
  Date: 2019/6/4
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录-苗苗网</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/main1.css" type="text/css"/>

    <script src="js/jquery-3.3.1.js"></script>
    <script>
        //校验用户名
        function checkUsername() {
            //1.获取用户名值
            var username = $("#username").val();
            //2.定义正则
            var reg_username = /^\w{4,20}$/;

            //3，判断给出提示信息
            var flag = reg_username.test(username);
            if (flag) {
                //用户名合法
                $("#username").css("border", "");
            } else {
                //用户名非法
                $("#username").css("border", "1px solid red");
            }
            return flag;
        }

        //校验密码
        function checkPassword() {
            //1.获取用户名值
            var password = $("#password").val();
            //2.定义正则
            var reg_password = /^\w{6,20}$/;

            //3，判断给出提示信息
            var flag = reg_password.test(password);
            if (flag) {
                //用户名合法
                $("#password").css("border", "");
            } else {
                //用户名非法
                $("#password").css("border", "1px solid red");
            }
            return flag;
        }

        //校驗

        $(function () {
            //当表单提交时，调用所有的校验方法
            $("#loginForm").submit(function () {
                return checkUsername() && checkPassword();
                //如果这个方法没有返回值，或者返回为true，则表单提交，如果返回为false，则表单不提交
            })
            //当某一个组件失去焦点时，调用对应的校验方法
            $("#username").blur(checkUsername);
            $("#password").blur(checkPassword);
        });
    </script>
</head>
<body>
<div class="logo"><img src="images/logo_b.png"></div>
<div class="backgroud"><img class="backgroud_1" src="images/login_book.jpg"></div>
<div class="login">
    <div class="login_text">
        <text>密码登录</text>
    </div>
    <form id="loginForm" action="${pageContext.request.contextPath}/login" method="post">
        <input class="login_num" id="username" name="username" type="text" value="邮箱/昵称/手机号码"
               onFocus="if (value =='邮箱/昵称/手机号码'){value =''}"
               onBlur="if (value ==''){value='邮箱/昵称/手机号码'}">

        <input class="login_pw" id="password" name="password" type="password" placeholder="密码">
        <input name="image" type="submit" onclick="return formcheck()" class="login_tj" value="登录">
    </form>
    <div class="register_lj"><a onclick="window.open('register.jsp')">立即注册</a></div>
</div>
</body>
</html>
