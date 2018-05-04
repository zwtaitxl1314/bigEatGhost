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
                    <p>松鼠桂鱼又名松鼠鳜鱼，是江苏省苏州市地方传统名菜。当炸好的鳜鱼（或桂鱼）上桌时，随即浇上热气腾腾的卤汁，它便吱吱地“叫”起来，因活像一只松鼠而得名。
                        这道菜成菜后，形如松鼠、外脆里嫩、色泽橘黄，酸甜适口，并有松红香味。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>鳜鱼 <p>520g </p></li>
            <li>菠萝 <p>40g </p></li>
            <li>豌豆 <p>20g </p></li>
            <li>甜椒 <p>20g </p></li>
            <li>鸡蛋 <p>一个 </p></li>
        </ul>

    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>番茄酱<p>70g  </p></li>
            <li>白糖 <p>20g </p></li>
            <li>醋<p>15g  </p></li>
            <li>料酒<p>20g  </p></li>
            <li>盐<p> 适量 </p></li>
            <li>淀粉 <p>40g </p></li>
            <li>面粉 <p> 适量</p></li>
        </ul>
    </fieldset>



    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        准备食材，将鳜鱼处理干净，宰掉鱼头，备用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        沿着鱼脊骨，片出两边鱼肉。
        宰掉鱼脊骨，保留鱼尾。片掉余留的鱼骨。斜着下刀，不切断鱼皮的情况下，将鱼肉切成菱形纹路。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        腌鱼。鱼身抹上盐、料酒。腌10分钟。
        然后均匀地抹上鸡蛋液，和淀粉。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        将鱼头和鱼肉，放入面粉裹一圈，使其沾满面粉。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        锅中烧油，七八成熟。放入鱼头，煎至金黄。

    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        放入鱼身，煎至金黄。

    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        调汁。将番茄酱，白糖，醋，淀粉，水混合。
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        将豌豆和甜椒，略炒一下后，倒入酱汁，烹煮至浓稠。
    </div>
    <div class="practice">
        <div class="recipeStep_num">9</div>
        加入菠萝。
    </div>
    <div class="practice">
        <div class="recipeStep_num">10</div>
        将炸好鳜鱼摆好后，将酱汁淋在鱼身上，即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/a1e987d1d60ac2d23c6c64d6041f1195/0/0/w_19rr9mvubd.swf-albumId=550490709-tvId=550490709-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
                        <input type="hidden" name="what" value="${what}">
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
