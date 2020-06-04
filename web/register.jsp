<%--
  Created by IntelliJ IDEA.
  User: MWJ
  Date: 2019/6/7
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新用户注册—苗苗网</title>
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/form.js"></script>
    <script src="js/jquery-3.3.1.js"></script>

</head>
<body>
<%--导航栏--%>
<div class="navigator">
    <img class="navigator_bj" src="images/logo_b.png">
</div>
<%--注册--%>
<div class="register">
    <div class="register_new">
        <div class="register_text">新用户注册</div>
    </div>
    <div class="input">
        <form id="registerForm" action="${pageContext.request.contextPath}/register" method="post"
              onsubmit="return checkForm();">

            <div class="input_text">用户名</div>
            <input class="input_a" id="username" name="username" onkeyup="checkUsername();" placeholder="请输入您的用户名"><br/>
            <span id="usernameMsg"></span><font color="#999999">字母数字下划线1到10位, 不能是数字开头</font><br/>

            <div class="input_text">登录密码</div>
            <input class="input_a" type="password" id="password" name="password" onkeyup="checkPassword();"><br/>
            <span id="passwordMsg"></span><font color="#999999">密码请设置6-16位字符</font><br/>

            <div class="input_text">确认密码</div>
            <input class="input_a" type="password" id="repassword" name="repassword" onkeyup="checkConfirm();"><br/>
            <span id="confirmMsg"></span>&nbsp;<br/>

            <input type="radio" name="gender" value="男" checked="checked"/> 男
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="gender" value="女"/> 女<br/>
            <div class="input_text">联系电话</div>
            <input type="text" class="input_a" name="telephone"><br/>
            <div class="input_texta">验证码</div>
            <input class="input_b" type="text" name="yzm">
            <img class="login_checkyzm" src="checkCode" height="32px" alt="" onclick="changeCheckCode(this)"><br/>
            <script type="text/javascript">
                //图片点击事件
                function changeCheckCode(img) {
                    img.src = "checkCode?" + new Date().getTime();
                }
            </script>
            <input type="submit" class="login_tj" value="立即注册">
        </form>
    </div>
</div>
</body>
</html>
