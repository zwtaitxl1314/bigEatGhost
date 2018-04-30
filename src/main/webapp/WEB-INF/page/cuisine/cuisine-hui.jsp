<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>徽菜</title>
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
                console.log(cuisine)
                window.location.href="/lu/to.do?cuisine="+cuisine;
            })
        });

    </script>
</head>
<body>
<jsp:include page="/WEB-INF/page/head.jsp" flush="true"/>

<div class="appreciate-text">
    <img src="${pageContext.request.contextPath}/image/徽.jpg">
</div>

<div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/徽菜/中和汤.jpg"></a>
            <p>中和汤</p>
        </li>
        <li>
            <a href="javascript:void(0);" ><img src="${pageContext.request.contextPath}/image/徽菜/双脆锅巴.jpg"></a>
            <p>双脆锅巴</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/徽菜/当归獐肉.jpg"></a>
            <p>当归獐肉</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/徽菜/方腊鱼.jpg"></a>
            <p>方腊鱼</p>
        </li>
    </ul>
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/徽菜/红烧果子狸.jpg"></a>
            <p>红烧果子狸</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/徽菜/腌鲜鳜鱼.jpg"></a>
            <p>腌鲜鳜鱼</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/徽菜/火腿炖甲鱼.jpg"></a>
            <p>火腿炖甲鱼</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/徽菜/青螺炖鸭.jpg"></a>
            <p>青螺炖鸭</p>
        </li>
    </ul>
    <ul>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/徽菜/黄山炖鸽.jpg"></a>
            <p>黄山炖鸽</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/徽菜/双爆串飞.jpg"></a>
            <p>双爆串飞</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/徽菜/清蒸鹰龟.jpg"></a>
            <p>清蒸鹰龟</p>
        </li>
        <li>
            <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/徽菜/蛏干烧肉.jpg"></a>
            <p>蛏干烧肉</p>
        </li>
    </ul>

</div>

<jsp:include page="/WEB-INF/page/foot.jsp" flush="true"/>

</body>
</html>
