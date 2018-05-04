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
        <img src="${pageContext.request.contextPath}/image/粤菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>椰汁冰糖燕窝是广东的传统名点，属于粤菜系。清淡香甜，味美可口，色泽诱人，令人垂涎的饭后甜点。</p>                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li> 燕窝<p>  3-5g</p></li>
            <li> 冰糖 <p> 8G</p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>椰汁 <p>适量 </p></li>
            <li>水 <p>110ML </p></li>
        </ul>
    </fieldset>



    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        把干燕窝泡发2-4小时，秘方：要用冷水泡发，避免营养流失。泡发的时候如果浑水，是参假刷淀粉的燕窝。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        挑除杂毛，并过滤。秘方：不要买毛燕，燕窝的营养是水溶性的，自己挑反复倒腾，营养都没了，而且毛燕里面有燕毛啥的，需要臭氧杀菌，自己是处理不干净的。跟工厂买精品燕窝贵不了多少。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        把燕窝一丝一丝的分开。秘方：这一步就可以看出补碎没有啊，如果泡开分成两半，另一半非常短小碎碎的，就是补过的。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        放入椰汁、冰糖、燕窝和水。秘方：椰汁最好买进口的，不要买那种浓缩的，因为有防腐剂的味道，买干粉的比较好吃。炖的时候要搅拌好，不然炖熟之后椰汁结块。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        设置炖煮时间为1.5小时。秘方：天然气灶隔水蒸、玻璃炖壶也能炖熟，但是隔水慢炖最好吃。而且能自动保温，比较方便
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        好啦，特别香。入秋了，睡前吃一碗好幸福。
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        小窍门：主要是燕窝要挑好，处理步骤要细心，不能省略不能跳，对了，水不能猛加，不然没味道了，不能炖太久，不然化水了，有不明白的欢迎姐妹们加我微信交流啊amityakf
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/0d4293273154a581e111f0c03ba7a2f4/0/0/w_19rve8s7dh.swf-albumId=8726750009-tvId=8726750009-isPurchase=0-cnId=12" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
