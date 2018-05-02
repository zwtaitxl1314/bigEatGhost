<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>粤菜</title>
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
                var yue="yue";
                console.log(yue);
                window.location.href="/yue/to.do?cuisine="+cuisine+"&yue="+yue;
            })
        });

    </script>
</head>



<body>
    <jsp:include page="/WEB-INF/page/head.jsp" flush="true"/>

<div class="appreciate-text">
    <img src="${pageContext.request.contextPath}/image/粤.jpg">
</div>

    <div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/粤菜/阿一鲍鱼.jpg"></a>
                <p>阿一鲍鱼</p>
            </li>
            <li>
                <a href="javascript:void(0);" ><img src="${pageContext.request.contextPath}/image/粤菜/上汤焗龙虾.jpg"></a>
                <p>上汤焗龙虾</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/粤菜/半岛御品官燕.jpg"></a>
                <p>半岛御品官燕</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/粤菜/广州文昌鸡.jpg"></a>
                <p>广州文昌鸡</p>
            </li>
        </ul>
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/粤菜/挂炉烧鹅.jpg"></a>
                <p>挂炉烧鹅</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/粤菜/新龙皇夜宴.jpg"></a>
                <p>新龙皇夜宴</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/粤菜/明炉烤乳猪.jpg"></a>
                <p>明炉烤乳猪</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/粤菜/椒盐濑尿虾.jpg"></a>
                <p>椒盐濑尿虾</p>
            </li>
        </ul>
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/粤菜/椰汁冰糖燕窝.jpg"></a>
                <p>椰汁冰糖燕窝</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/粤菜/清蒸东星斑.jpg"></a>
                <p>清蒸东星斑</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/粤菜/生拆蟹肉烩海虎翅.jpg"></a>
                <p>生拆蟹肉烩海虎翅</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/粤菜/白切鸡.jpg"></a>
                <p>白切鸡</p>
            </li>
        </ul>

    </div>

    <jsp:include page="/WEB-INF/page/foot.jsp" flush="true"/>


</body>
</html>
