<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>${comcuisine}</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/lu.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/head.css">
    <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sinaFaceAndEffec.css" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

</head>
<body>
<jsp:include page="/WEB-INF/page/head.jsp" flush="true"/>

<div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
    <div class="head_img">
        <img src="${pageContext.request.contextPath}/image/苏菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>白汁元菜，是苏州传统名菜，久享盛誉，选用初春菜花盛开时节750 克重、青乌背、白玉腹的甲鱼（俗称“菜花甲鱼”）为主料，辅以山药等配料制成。甲鱼，即鳖，亦称团鱼、元鱼、水鱼等。古代神话中称为“守神”。甲鱼肉质佳，味鲜美，具有滋阴、凉血、补虚之功效。《本草备要》认为，甲鱼加冰糖炖服，其脂尤佳，治阴虚诸损。山药与甲鱼性味相合，《神农本草经》列山药为上品。其善补脾肺，且能益肾填精。白汁元菜是一款食补佳肴，亦可窥见苏州人的饮食养生之道。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>净甲鱼 <p>500克 </p></li>
            <li>猪肥膘肉 <p>25克 </p></li>
            <li>山药 <p> 60克</p></li>
            <li>春笋<p>50克  </p></li>
            <li>水发香菇 <p>30克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>绍酒 <p>100克 </p></li>
            <li>大蒜头 <p>15克 </p></li>
            <li>香葱 <p>25克 </p></li>
            <li>姜块 <p>10克 </p></li>
            <li> 菜油<p> 50克</p></li>
            <li>熟猪油 <p>40克 </p></li>
            <li>麻油 <p> 10克</p></li>
            <li>冰糖屑 <p> 25—30克</p></li>
            <li>精盐 <p>11—12克 </p></li>
            <li>猪肉白汤 <p>750克 </p></li>
            <li>湿淀粉 <p>10克 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        净甲鱼揭去壳，斩成6 个股块（前、中、后各2 股），放入锅中，加清水750 克，烧沸即取出，浸入冷水刮洗干净；甲鱼卵洗净置碗内，加葱、姜、盐0.5 克，酒10 克（以10 只卵计），上宠蒸约15 分钟取出，去葱、姜待用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        将甲鱼块置锅垫上，前、中股块腹朝上，后股块裙边朝上，头颈放在最上面，再放上猪肥膘丁。锅置旺火上烧热，加菜油，待油热，入葱结、姜块熬香，捞出葱、姜，将锅垫放在油锅中。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        葱、姜放在甲鱼上，加酒75 克焖片刻。舀入猪肉白汤，待沸，转文火烧30 分钟左右，加盐10 克及大蒜瓣，续烧15 分钟后加冰糖，再烧90 分钟左右，至甲鱼酥烂，去葱、姜。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        山药（蒸熟去皮）及春笋切滚刀块，香菇去蒂切块。另取炒锅烧热，加猪油少许，下葱段熬香。倒入春笋、山药及香菇，加酒25 克、盐及白糖炒透，入甲鱼卵及甲鱼锅中的甲鱼，汤汁烧透，收稠汤汁加水淀粉增稠，淋猪油、麻油出锅装盘。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        山药及甲鱼头、颈在下，股块腹、裙边朝上，笋、香菇及甲鱼卵最上面。此菜肉烂色白，裙边软糯透明，胶汁滋厚，入口咸中带甜。
    </div>

    </div>

    <form method="get"  name="myform1" action="${pageContext.request.contextPath}/customer/comments.do" >
        <div id="content" style="width: 700px; height: auto;margin : 40px auto 0 auto;">
            <div class="wrap">
                <div class="comment">
                    <div class="head-face">
                        <img src="${pageContext.request.contextPath}/image/1.jpg">
                        <a >${user.username}</a>
                        <input type="hidden" name="username" value="${user.username}">
                        <input type="hidden" name="comcuisine" value="${comcuisine}">
                    </div>
                    <div class="content">
                        <div class="cont-box">
                            <textarea class="text"name="comments" id="comments" placeholder="请输入..."></textarea>
                        </div>
                        <div class="tools-box">
                            <div class="operator-box-btn"><span class="face-icon" onclick="out()" >☺</span></div>
                            <button  class="submit-btn" ><input type="button"  value="提交评论" ;/></button>
                        </div>
                    </div>
                </div>

                <c:forEach  items="${ commentlist }" var="com">
                    <c:if test="${com.comcuisine == comcuisine}" >
                        <div id="info-show">
                            <ul>
                                <li>
                                    <div class="head-face">
                                        <img src="${pageContext.request.contextPath}/image/1.jpg">
                                        <p class="username">${com.comusername}</p>
                                    </div>
                                    <div class="reply-cont">
                                        <p class="comment-body">${com.comcontent}</p>
                                        <p class="comment-date">评论时间：${com.createDate}</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </c:if>
                </c:forEach>

            </div>
        </div>
    </form>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/sinaFaceAndEffec.js"></script>


<script type="text/javascript">
    /*/ 绑定表情
    $('.face-icon').SinaEmotion($('.text'));*/
    // 测试本地解析
    function out() {
        var inputText = $('.text').val();
        $('#info-show ul').append(reply(AnalyticEmotion(inputText)));
    }

</script>

</body>
<jsp:include page="/WEB-INF/page/foot.jsp" flush="true"/>
</html>
