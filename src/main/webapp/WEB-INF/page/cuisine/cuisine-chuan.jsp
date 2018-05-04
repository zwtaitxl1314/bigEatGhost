<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>川菜</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cuisine.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/head.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/css/jquery-3.3.1/jquery-3.3.1.js"></script>
    <script type="text/javascript">


        $(function(){
            $("a").click(function () {
                var cuisine = $(this).next().html();
                var what="chuan";
                console.log(what);
                window.location.href="/cuisine/to.do?cuisine="+cuisine+"&what="+what;
            })
        });

    </script>
</head>
<body>
<jsp:include page="/WEB-INF/page/head.jsp" flush="true"/>


    <div class="appreciate-text">
        <img src="${pageContext.request.contextPath}/image/川.jpg">
    </div>

    <div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/川菜/东坡肘子.jpg"></a>
                <p>东坡肘子</p>
            </li>
            <li>
                <a href="javascript:void(0);" ><img src="${pageContext.request.contextPath}/image/川菜/回锅肉.jpg"></a>
                <p>回锅肉</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/川菜/夫妻肺片.jpg"></a>
                <p>夫妻肺片</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/川菜/板栗烧鸡.jpg"></a>
                <p>板栗烧鸡</p>
            </li>
        </ul>
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/川菜/水煮肉片.jpg"></a>
                <p>水煮肉片</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/川菜/水煮鱼.jpg"></a>
                <p>水煮鱼</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/川菜/酸辣土豆丝.jpg"></a>
                <p>酸辣土豆丝</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/川菜/辣子鸡丁.jpg"></a>
                <p>辣子鸡丁</p>
            </li>
        </ul>
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/川菜/鱼香肉丝.jpg"></a>
                <p>鱼香肉丝</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/川菜/麻婆豆腐.jpg"></a>
                <p>麻婆豆腐</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/川菜/泡椒凤爪.jpg"></a>
                <p>泡椒凤爪</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/川菜/棒棒鸡.jpg"></a>
                <p>棒棒鸡</p>
            </li>
        </ul>

    </div>
    <jsp:include page="/WEB-INF/page/foot.jsp" flush="true"/>
</body>
</html>
