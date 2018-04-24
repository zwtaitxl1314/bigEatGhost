<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>
    <title>首页</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/head.css">
</head>


<body>
<jsp:include page="${pageContext.request.contextPath}/goto/head.do"/>



    <div id="myCarousel" class="carousel slide">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="image/index/轮播1.jpg" alt="First slide">
            </div>
            <div class="item">
                <img src="image/index/轮播2.jpg" alt="Second slide">
            </div>
            <div class="item">
                <img src="image/index/轮播3.jpg" alt="Third slide">
            </div>
        </div>

        <!-- 轮播（Carousel）导航 -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="Provide">
        <div class="Provide-head">
                <h1>我们提供</h1>
        </div>
        <div class="we-provide">
            <ul>
                <li><span><img src="image/index/lunch.png" alt=""></span>
                    <h2>菜肴资料</h2>
                    <p>公司目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务大数据、云计算等。</p></li>
                <li><span><img src="image/index/dinner.png" alt=""></span>
                    <h2>视频教学</h2>
                    <p>公司目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务大数据、云计算等。</p></li>
                <li><span><img src="image/index/coffee.png" alt=""></span>
                    <h2>文字教学</h2>
                    <p>公司目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务大数据、云计算等。</p></li>
            </ul>
        </div>
    </div>

    <!--菜式欣赏-->
    <div class="appreciate">
        <div class="appreciate-head">
            <h1>菜式欣赏</h1>
        </div>

        <div class="appreciate-text">
            <img src="image/index/舌尖上的美食.jpg">
        </div>

        <div class="text">
            <p>
                <span>每一种食物来源都经过我们的精挑细选，关于食材我们只选最天然、健康、优质的，只为一份对极致美味的追求，用心做好每一份菜，是我们不变的宗旨。
                </span>
            </p>
        </div>
        <div class="appreciate-pic">
            <img src="image/index/佛跳墙.jpg" alt="无法显示图片" title="佛跳墙">
            <img src="image/index/东坡肉.jpg" alt="无法显示图片" title="东坡肉">
            <img src="image/index/宫保鸡丁.jpg" alt="无法显示图片" title="宫保鸡丁">
            <img src="image/index/荔枝肉.jpg" alt="无法显示图片" title="荔枝肉">
            <img src="image/index/腌鲜鳜鱼.jpg" alt="无法显示图片" title="腌鲜鳜鱼">
            <img src="image/index/腊味合蒸.jpg" alt="无法显示图片" title="腊味合蒸">
            <img src="image/index/糖醋黄河鲤鱼.jpg" alt="无法显示图片" title="糖醋黄河鲤鱼">
            <img src="image/index/烤乳猪.jpg" alt="无法显示图片" title="烤乳猪">
            <img src="image/index/清炖蟹粉狮子头.jpg" alt="无法显示图片" title="清炖蟹粉狮子头">
        </div>
    </div>

    <div class="kinds">
        <ul id="myTab" class="nav nav-tabs">
            <li class="active">
                <a href="#shangdong" data-toggle="tab">
                    鲁菜
                </a>
            </li>

            <li>
                <a href="#sichuang" data-toggle="tab">川菜</a>
            </li>

            <li class="dropdown">
                <a href="#guangdong" data-toggle="tab">粤菜</a>
            </li>
            <li class="dropdown">
                <a href="#jiangsu" data-toggle="tab">苏菜</a>
            </li>
            <li class="dropdown">
                <a href="#fujiang" data-toggle="tab">闽菜</a>
            </li>
            <li class="dropdown">
                <a href="#zhejiang" data-toggle="tab">浙菜</a>
            </li>
            <li class="dropdown">
                <a href="#hunan" data-toggle="tab">湘菜</a>
            </li>
            <li class="dropdown">
                <a href="#huizhou" data-toggle="tab">徽菜</a>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="shangdong">
                <a href="index.jsp"><img src="image/鲁菜/扒原壳鲍鱼.jpg" alt="无法显示图片" title="扒原壳鲍鱼"></a>
                <a href="index.jsp"><img src="image/鲁菜/葱烧海参.jpg" alt="无法显示图片" title="葱烧海参"></a>
                <a href="index.jsp"><img src="image/鲁菜/红烧大虾.jpg" alt="无法显示图片" title="红烧大虾"></a>
                <a href="index.jsp"><img src="image/鲁菜/油爆双脆.jpg" alt="无法显示图片" title="油爆双脆"></a>
                <a href="index.jsp"><img src="image/鲁菜/诗礼银杏.jpg" alt="无法显示图片" title="诗礼银杏"></a>
                <a href="index.jsp"><img src="image/鲁菜/白扒四宝.jpg" alt="无法显示图片" title="白扒四宝"></a>
                <a href="index.jsp"><img src="image/鲁菜/葱椒鱼.jpg" alt="无法显示图片" title="葱椒鱼"></a>
                <a href="index.jsp"><img src="image/鲁菜/醋椒鱼.jpg" alt="无法显示图片" title="醋椒鱼"></a>
                <div class="more">
                    <a href="${pageContext.request.contextPath}/cuisine/more_lu.do" class="button button-highlight button-border button-rounded button-primary " >查看更多</a>
                </div>
            </div>
            <div class="tab-pane fade" id="sichuang">
                <a href="index.jsp"><img src="image/川菜/棒棒鸡.jpg" alt="无法显示图片" title="棒棒鸡"></a>
                <a href="index.jsp"><img src="image/川菜/东坡肘子.jpg" alt="无法显示图片" title="东坡肘子"></a>
                <a href="index.jsp"><img src="image/川菜/夫妻肺片.jpg" alt="无法显示图片" title="夫妻肺片"></a>
                <a href="index.jsp"><img src="image/川菜/口水鸡.jpg" alt="无法显示图片" title="口水鸡"></a>
                <a href="index.jsp"><img src="image/川菜/辣香水鱼.jpg" alt="无法显示图片" title="辣香水鱼"></a>
                <a href="index.jsp"><img src="image/川菜/辣子鸡丁.jpg" alt="无法显示图片" title="辣子鸡丁"></a>
                <a href="index.jsp"><img src="image/川菜/水煮肉片.jpg" alt="无法显示图片" title="水煮肉片"></a>
                <a href="index.jsp"><img src="image/川菜/鱼香肉丝.jpg" alt="无法显示图片" title="鱼香肉丝"></a>
                <div class="more">
                    <a href="${pageContext.request.contextPath}/cuisine/more_chuan.do" class="button button-highlight button-border button-rounded button-primary " >查看更多</a>
                </div>
            </div>
            <div class="tab-pane fade" id="guangdong">
                <a href="index.jsp"><img src="image/粤菜/白切鸡.jpg" alt="无法显示图片" title="白切鸡"></a>
                <a href="index.jsp"><img src="image/粤菜/鲍汁扣辽参.jpg" alt="无法显示图片" title="鲍汁扣辽参"></a>
                <a href="index.jsp"><img src="image/粤菜/挂炉烧鹅.jpg" alt="无法显示图片" title="阿一鲍鱼"></a>
                <a href="index.jsp"><img src="image/粤菜/广州文昌鸡.jpg" alt="无法显示图片" title="广州文昌鸡"></a>
                <a href="index.jsp"><img src="image/粤菜/红烧乳鸽.jpg" alt="无法显示图片" title="红烧乳鸽"></a>
                <a href="index.jsp"><img src="image/粤菜/椒盐濑尿虾.jpg" alt="无法显示图片" title="椒盐濑尿虾"></a>
                <a href="index.jsp"><img src="image/粤菜/明炉烤乳猪.jpg" alt="无法显示图片" title="明炉烤乳猪"></a>
                <a href="index.jsp"><img src="image/粤菜/蜜汁叉烧.jpg" alt="无法显示图片" title="蜜汁叉烧"></a>
                <div class="more">
                    <a href="${pageContext.request.contextPath}/cuisine/more_yue.do" class="button button-highlight button-border button-rounded button-primary " >查看更多</a>
                </div>
            </div>
            <div class="tab-pane fade" id="jiangsu">
                <a href="index.jsp"><img src="image/苏菜/鲃肺汤.jpg" alt="无法显示图片" title="鲃肺汤"></a>
                <a href="index.jsp"><img src="image/苏菜/碧螺虾仁.jpg" alt="无法显示图片" title="碧螺虾仁"></a>
                <a href="index.jsp"><img src="image/苏菜/太湖大闸蟹.jpg" alt="无法显示图片" title="太湖大闸蟹"></a>
                <a href="index.jsp"><img src="image/苏菜/松鼠鳜鱼.jpg" alt="无法显示图片" title="松鼠鳜鱼"></a>
                <a href="index.jsp"><img src="image/苏菜/叫化童鸡.jpg" alt="无法显示图片" title="叫化童鸡"></a>
                <a href="index.jsp"><img src="image/苏菜/糖醋排骨.jpg" alt="无法显示图片" title="糖醋排骨"></a>
                <a href="index.jsp"><img src="image/苏菜/太湖银鱼.jpg" alt="无法显示图片" title="太湖银鱼"></a>
                <a href="index.jsp"><img src="image/苏菜/阳澄湖大闸蟹.jpg" alt="无法显示图片" title="阳澄湖大闸蟹"></a>
                <div class="more">
                    <a href="${pageContext.request.contextPath}/cuisine/more_su.do" class="button button-highlight button-border button-rounded button-primary " >查看更多</a>
                </div>
            </div>
            <div class="tab-pane fade"id="fujiang" >
                <a href="index.jsp"><img src="image/闽菜/白雪鸡.jpg" alt="无法显示图片" title="白雪鸡"></a>
                <a href="index.jsp"><img src="image/闽菜/扁食.jpg" alt="无法显示图片" title="扁食"></a>
                <a href="index.jsp"><img src="image/闽菜/佛跳墙.jpg" alt="无法显示图片" title="佛跳墙"></a>
                <a href="index.jsp"><img src="image/闽菜/荔枝肉.jpg" alt="无法显示图片" title="荔枝肉"></a>
                <a href="index.jsp"><img src="image/闽菜/红糟鱼排.jpg" alt="无法显示图片" title="红糟鱼排"></a>
                <a href="index.jsp"><img src="image/闽菜/漳州卤面.jpg" alt="无法显示图片" title="漳州卤面"></a>
                <a href="index.jsp"><img src="image/闽菜/醉排骨.jpg" alt="无法显示图片" title="醉排骨"></a>
                <a href="index.jsp"><img src="image/闽菜/厦门沙茶面.jpg" alt="无法显示图片" title="厦门沙茶面"></a>
                <div class="more">
                    <a href="${pageContext.request.contextPath}/cuisine/more_min.do" class="button button-highlight button-border button-rounded button-primary " >查看更多</a>
                </div>
            </div>
            <div class="tab-pane fade" id="zhejiang">
                <a href="index.jsp"><img src="image/浙菜/冰糖甲鱼.jpg" alt="无法显示图片" title="冰糖甲鱼"></a>
                <a href="index.jsp"><img src="image/浙菜/干菜焖肉.jpg" alt="无法显示图片" title="干菜焖肉"></a>
                <a href="index.jsp"><img src="image/浙菜/油焖春笋.jpg" alt="无法显示图片" title="油焖春笋"></a>
                <a href="index.jsp"><img src="image/浙菜/杭州煨鸡.jpg" alt="无法显示图片" title="杭州煨鸡"></a>
                <a href="index.jsp"><img src="image/浙菜/家乡南肉.jpg" alt="无法显示图片" title="家乡南肉"></a>
                <a href="index.jsp"><img src="image/浙菜/嘉兴五芳斋粽子.jpg" alt="无法显示图片" title="嘉兴五芳斋粽子"></a>
                <a href="index.jsp"><img src="image/浙菜/龙井虾仁.jpg" alt="无法显示图片" title="龙井虾仁"></a>
                <a href="index.jsp"><img src="image/浙菜/西湖醋鱼.jpg" alt="无法显示图片" title="西湖醋鱼"></a>
                <div class="more">
                    <a href="${pageContext.request.contextPath}/cuisine/more_zhe.do" class="button button-highlight button-border button-rounded button-primary " >查看更多</a>
                </div>
            </div>
            <div class="tab-pane fade" id="hunan">
                <a href="index.jsp"><img src="image/湘菜/吉首酸肉.jpg" alt="无法显示图片" title="吉首酸肉"></a>
                <a href="index.jsp"><img src="image/湘菜/剁椒鱼头.jpg" alt="无法显示图片" title="剁椒鱼头"></a>
                <a href="index.jsp"><img src="image/湘菜/东安鸡.jpg" alt="无法显示图片" title="东安鸡"></a>
                <a href="index.jsp"><img src="image/湘菜/金鱼戏莲.jpg" alt="无法显示图片" title="金鱼戏莲"></a>
                <a href="index.jsp"><img src="image/湘菜/腊味合蒸.jpg" alt="无法显示图片" title="腊味合蒸"></a>
                <a href="index.jsp"><img src="image/湘菜/宁乡口味蛇.jpg" alt="无法显示图片" title="宁乡口味蛇"></a>
                <a href="index.jsp"><img src="image/湘菜/湘西外婆菜.jpg" alt="无法显示图片" title="湘西外婆菜"></a>
                <a href="index.jsp"><img src="image/湘菜/组庵鱼翅.jpg" alt="无法显示图片" title="组庵鱼翅"></a>
                <div class="more">
                    <a href="${pageContext.request.contextPath}/cuisine/more_xiang.do" class="button button-highlight button-border button-rounded button-primary " >查看更多</a>
                </div>
            </div>
            <div class="tab-pane fade" id="huizhou">
                <a href="index.jsp"><img src="image/徽菜/红烧果子狸.jpg" alt="无法显示图片" title="红烧果子狸"></a>
                <a href="index.jsp"><img src="image/徽菜/虎皮毛豆腐.jpg" alt="无法显示图片" title="虎皮毛豆腐"></a>
                <a href="index.jsp"><img src="image/徽菜/徽州圆子.jpg" alt="无法显示图片" title="徽州圆子"></a>
                <a href="index.jsp"><img src="image/徽菜/腌鲜鳜鱼.jpg" alt="无法显示图片" title="腌鲜鳜鱼"></a>
                <a href="index.jsp"><img src="image/徽菜/中和汤.jpg" alt="无法显示图片" title="中和汤"></a>
                <a href="index.jsp"><img src="image/徽菜/双爆串飞.jpg" alt="无法显示图片" title="双爆串飞"></a>
                <a href="index.jsp"><img src="image/徽菜/火腿炖甲鱼.jpg" alt="无法显示图片" title="火腿炖甲鱼"></a>
                <a href="index.jsp"><img src="image/徽菜/当归獐肉.jpg" alt="无法显示图片" title="当归獐肉"></a>
                <div class="more">
                    <a href="${pageContext.request.contextPath}/cuisine/more_hui.do" class="button button-highlight button-border button-rounded button-primary " >查看更多</a>
                </div>
            </div>
        </div>
    </div>




    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
    <script src="js/jquery.js"></script>
    <!-- 包括所有已编译的插件 -->
    <script src="js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <!-- Buttons 库的核心文件 -->
    <link rel="stylesheet" href="css/buttons.css">
<jsp:include page="${pageContext.request.contextPath}/goto/foot.do" />
</body>


<style>

    .header {
        position: absolute;
        z-index: 1;
        opacity: 0.6;
    }
    .nav-tabs {
        border-bottom: 1px solid orange;
    }
    .nav-tabs > li.active > a,
    .nav-tabs > li.active > a:hover,
    .nav-tabs > li.active > a:focus {
        color: #555;
        cursor: default;
        background-color: #fff8ef;
        border: 2px solid orange ;
        border-bottom-color: transparent;
    }


</style>

</html>
