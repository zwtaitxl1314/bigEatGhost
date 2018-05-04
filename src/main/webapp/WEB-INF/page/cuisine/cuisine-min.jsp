<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>闽菜</title>
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
                var what="min";
                console.log(what);
                window.location.href="/cuisine/to.do?cuisine="+cuisine+"&what="+what;
            })
        });

    </script>
</head>
<body>
<jsp:include page="/WEB-INF/page/head.jsp" flush="true"/>

<div class="appreciate-text">
    <img src="${pageContext.request.contextPath}/image/闽.jpg">
</div>

<div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/闽菜/佛跳墙.jpg"></a>
            <p>佛跳墙</p>
        </li>
        <li>
            <a href="javascript:void(0);" ><img src="${pageContext.request.contextPath}/image/闽菜/厦门沙茶面.jpg"></a>
            <p>厦门沙茶面</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/闽菜/面线糊.jpg"></a>
            <p>面线糊</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/闽菜/沙县拌面.jpg"></a>
            <p>沙县拌面</p>
        </li>
    </ul>
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/闽菜/海蛎煎.jpg"></a>
            <p>海蛎煎</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/闽菜/漳州卤面.jpg"></a>
            <p>漳州卤面</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/闽菜/白雪鸡.jpg"></a>
            <p>白雪鸡</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/闽菜/福州鱼丸.jpg"></a>
            <p>福州鱼丸</p>
        </li>
    </ul>
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/闽菜/荔枝肉.jpg"></a>
            <p>荔枝肉</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/闽菜/兴化米粉.jpg"></a>
            <p>兴化米粉</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/闽菜/长汀豆腐干.jpg"></a>
            <p>长汀豆腐干</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/闽菜/鼎边糊.jpg"></a>
            <p>鼎边糊</p>
        </li>
    </ul>

</div>

<jsp:include page="/WEB-INF/page/foot.jsp" flush="true"/>


</body>
</html>
