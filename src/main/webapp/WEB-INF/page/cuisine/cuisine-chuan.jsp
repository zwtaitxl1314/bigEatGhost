<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>川菜</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cuisine.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css">
</head>
<body>
    <div class="header">
        <div class="navigation">
            <a href="${pageContext.request.contextPath}/index.jsp" class="hd-logo" title="美食餐厅" ><img src="${pageContext.request.contextPath}/image/index/logo1.png"></a>
            <ul class="hd-nav">
                <li><a href="" name="index">网站首页</a></li>
                <li><a href="" name="about">我们提供 </a></li>
                <li><a href="" name="productlist">菜式欣赏 </a></li>
                <li><a href="" name="article">查看更多 </a></li>
                <li><a href="" name="contact">关于我们 </a></li>
                <li>
                    <a href="${pageContext.request.contextPath}/customer/login.do">登录</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/customer/registJsp.do">注册</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="appreciate-text">
        <img src="${pageContext.request.contextPath}/image/川.jpg">
    </div>

</body>
</html>
