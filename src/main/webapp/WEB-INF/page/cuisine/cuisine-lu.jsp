<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>鲁菜</title>
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
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/page/head.jsp" flush="true"/>

    <div class="appreciate-text">
        <img src="${pageContext.request.contextPath}/image/鲁.jpg">
    </div>

    <div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/鲁菜/三丝鱼翅.jpg"></a>
                <p>三丝鱼翅</p>
            </li>
            <li>
                <a href="javascript:void(0);" ><img src="${pageContext.request.contextPath}/image/鲁菜/九转大肠.jpg"></a>
                <p>九转大肠</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/鲁菜/招远蒸丸.jpg"></a>
                <p>招远蒸丸</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/鲁菜/糟熘鱼片.jpg"></a>
                <p>糟熘鱼片</p>
            </li>
        </ul>
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/鲁菜/清汤银耳.jpg"></a>
                <p>清汤银耳</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/鲁菜/白扒四宝.jpg"></a>
                <p>白扒四宝</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/鲁菜/红烧大虾.jpg"></a>
                <p>红烧大虾</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/鲁菜/糖醋里脊.jpg"></a>
                <p>糖醋里脊</p>
            </li>
        </ul>
        <ul>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/鲁菜/葱烧海参.jpg"></a>
                <p>葱烧海参</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/鲁菜/诗礼银杏.jpg"></a>
                <p>诗礼银杏</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/鲁菜/醋椒鱼.jpg"></a>
                <p>醋椒鱼</p>
            </li>
            <li>
                <a href="javascript:void(0);"><img src="${pageContext.request.contextPath}/image/鲁菜/油爆双脆.jpg"></a>
                <p>油爆双脆</p>
            </li>
        </ul>

    </div>

    <jsp:include page="/WEB-INF/page/foot.jsp" flush="true"/>

</body>
</html>
