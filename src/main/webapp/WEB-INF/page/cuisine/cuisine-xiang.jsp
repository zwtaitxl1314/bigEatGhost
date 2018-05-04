<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>湘菜</title>
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
                var what="xiang";
                console.log(xiang);
                window.location.href="/cuisine/to.do?cuisine="+cuisine+"&what="+what;
            })
        });
    </script>
</head>
<body>
<jsp:include page="/WEB-INF/page/head.jsp" flush="true"/>
    <div class="appreciate-text">
        <img src="${pageContext.request.contextPath}/image/湘.jpg">
    </div>

    <div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/湘菜/剁椒鱼头.jpg"></a>
                <p>剁椒鱼头</p>
            </li>
            <li>
                <a href="javascript:void(0);" ><img src="${pageContext.request.contextPath}/image/湘菜/东安鸡.jpg"></a>
                <p>东安鸡</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/湘菜/姊妹团子.jpg"></a>
                <p>姊妹团子</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/湘菜/牛肉粉.jpg"></a>
                <p>牛肉粉</p>
            </li>
        </ul>
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/湘菜/组庵豆腐.jpg"></a>
                <p>组庵豆腐</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/湘菜/郴州鱼粉.jpg"></a>
                <p>郴州鱼粉</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/湘菜/金鱼戏莲.jpg"></a>
                <p>金鱼戏莲</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/湘菜/岳阳姜辣蛇.jpg"></a>
                <p>岳阳姜辣蛇</p>
            </li>
        </ul>
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/湘菜/腊味合蒸.jpg"></a>
                <p>腊味合蒸</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/湘菜/组庵鱼翅.jpg"></a>
                <p>组庵鱼翅</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/湘菜/永州血鸭.jpg"></a>
                <p>永州血鸭</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/湘菜/宁乡口味蛇.jpg"></a>
                <p>宁乡口味蛇</p>
            </li>
        </ul>

    </div>

    <jsp:include page="/WEB-INF/page/foot.jsp" flush="true"/>
</body>
</html>
