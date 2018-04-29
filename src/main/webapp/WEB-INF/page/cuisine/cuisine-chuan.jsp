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
                console.log(cuisine)
                window.location.href="/chuan/to.do?cuisine="+cuisine;
            })
        });

    </script>
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
</body>
</html>
