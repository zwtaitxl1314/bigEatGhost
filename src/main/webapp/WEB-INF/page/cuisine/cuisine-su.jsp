<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>苏菜</title>
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
                var what="su";
                console.log(what);
                window.location.href="/cuisine/to.do?cuisine="+cuisine+"&what="+what;
            })
        });

    </script>
</head>
<body>
<jsp:include page="/WEB-INF/page/head.jsp" flush="true"/>

<div class="appreciate-text">
    <img src="${pageContext.request.contextPath}/image/苏.jpg">
</div>
<div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/苏菜/咕咾肉.jpg"></a>
            <p>咕咾肉</p>
        </li>
        <li>
            <a href="javascript:void(0);" ><img src="${pageContext.request.contextPath}/image/苏菜/太湖大闸蟹.jpg"></a>
            <p>太湖大闸蟹</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/苏菜/太湖银鱼.jpg"></a>
            <p>太湖银鱼</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/苏菜/松鼠鳜鱼.jpg"></a>
            <p>松鼠鳜鱼</p>
        </li>
    </ul>
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/苏菜/糖醋排骨.jpg"></a>
            <p>糖醋排骨</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/苏菜/阳澄湖大闸蟹.jpg"></a>
            <p>阳澄湖大闸蟹</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/苏菜/香菇炖鸡.jpg"></a>
            <p>香菇炖鸡</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/苏菜/鲃肺汤.jpg"></a>
            <p>鲃肺汤</p>
        </li>
    </ul>
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/苏菜/叫化童鸡.jpg"></a>
            <p>叫化童鸡</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/苏菜/白汁圆菜.jpg"></a>
            <p>白汁圆菜</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/苏菜/碧螺虾仁.jpg"></a>
            <p>碧螺虾仁</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/苏菜/桃源红烧羊肉.jpg"></a>
            <p>桃源红烧羊肉</p>
        </li>
    </ul>

</div>

<jsp:include page="/WEB-INF/page/foot.jsp" flush="true"/>

</body>
</html>
