<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
<div>
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/page/head.jsp" flush="true"/>

    <div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
        <div class="head">
            <a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/image/index/logo12.png"></a>
            <span>登录</span>
        </div>

        <div class="text">
                <form action="${pageContext.request.contextPath}/customer/login.do">
                        <input  class="textbox" name="username" placeholder="请输入手机号/邮箱/昵称" type="text">
                        <input class="textbox" name="password" placeholder="请输入密码" type="password">
                        <label><input id="auto_login_next" value="auto" class="checkbox" type="checkbox"> 下次自动登录</label>
                        <a href="" class="forgetpassword">忘记密码？</a>
                    <div class="submitbox" style="text-align:center;">
                        <input class="submit" value="登录" type="submit">
                    </div>
                </form>
        </div>


    </div>

    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/page/foot.jsp" flush="true"/>
</div>
</body>
</html>
