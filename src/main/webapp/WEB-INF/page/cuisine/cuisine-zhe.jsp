<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>浙菜</title>
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
                var what="zhe";
                console.log(what);
                window.location.href="/cuisine/to.do?cuisine="+cuisine+"&what="+what;
            })
        });
    </script>
</head>
<body>
<jsp:include page="/WEB-INF/page/head.jsp" flush="true"/>

<div class="appreciate-text">
    <img src="${pageContext.request.contextPath}/image/浙.jpg">
</div>

<div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/浙菜/冰糖甲鱼.jpg"></a>
            <p>冰糖甲鱼</p>
        </li>
        <li>
            <a href="javascript:void(0);" ><img src="${pageContext.request.contextPath}/image/浙菜/干炸响铃.jpg"></a>
            <p>干炸响铃</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/浙菜/干菜焖肉.jpg"></a>
            <p>干菜焖肉</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/浙菜/杭州煨鸡.jpg"></a>
            <p>杭州煨鸡</p>
        </li>
    </ul>
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/浙菜/油焖春笋.jpg"></a>
            <p>油焖春笋</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/浙菜/虾爆鳝背.jpg"></a>
            <p>虾爆鳝背</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/浙菜/西湖醋鱼.jpg"></a>
            <p>西湖醋鱼</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/浙菜/赛蟹羹.jpg"></a>
            <p>赛蟹羹</p>
        </li>
    </ul>
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/浙菜/龙井虾仁.jpg"></a>
            <p>龙井虾仁</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/浙菜/嘉兴五芳斋粽子.jpg"></a>
            <p>嘉兴五芳斋粽子</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/浙菜/蛤蜊黄鱼羹.jpg"></a>
            <p>蛤蜊黄鱼羹</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/浙菜/虎跑素火煺.jpg"></a>
            <p>虎跑素火煺</p>
        </li>
    </ul>

</div>
<jsp:include page="/WEB-INF/page/foot.jsp" flush="true"/>

</body>
</html>
