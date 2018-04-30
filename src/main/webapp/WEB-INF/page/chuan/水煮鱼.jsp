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
        <img src="${pageContext.request.contextPath}/image/川菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>功效</legend>
            <ul>
                <li>
                    <p>1. </p>
                    <p>2. </p>
                    <p>3. </p>
                    <p>4. </p>
                    <p>5. </p>
                    <p>6. </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>草鱼 <p>1500克 </p></li>
            <li>豆腐皮 <p>300克 </p></li>
            <li>油菜 <p>300克 </p></li>
            <li>郫县豆酱 <p>2大勺 </p></li>
            <li> <p> </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>花椒大料桂皮小茴香麻椒 <p>共1勺 </p></li>
            <li>葱 <p>1根 </p></li>
            <li>姜蒜 <p>1勺 </p></li>
            <li>白酒 <p>1勺 </p></li>
            <li>鸡蛋 <p>1个 </p></li>
            <li>胡椒粉 <p> </p></li>
            <li>淀粉 <p>1勺 </p></li>
            <li>麻油 <p>2大勺 </p></li>
            <li>红辣椒 <p>50克 </p></li>
            <li>盐 <p>1勺 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        草鱼洗干净，沿鱼骨取下肉，切成连刀片。用白酒、蛋清、盐、胡椒粉、淀粉抓匀备用
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        热锅，下麻油，炒香豆皮和油菜，盛在碗中
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        冷锅凉油慢慢炒热郫县豆酱，加入花椒大料桂皮小茴香麻椒、葱姜蒜、辣椒炒香，下入鱼骨和鱼头，炒到变色后
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        添水烧开，转文火煮10分钟
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        下入腌好的鱼片，鱼片变白扶起后，加麻油、盐调味即可。把蒸锅的鱼连同汤一同倒入装豆皮油菜的大碗中
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        最后用锅子加热100克左右的油，至冒烟，趁热浇在鱼片上
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/0a38d6680403652014b2a680a9fe589d/0/0/w_19rrlrporh.swf-albumId=470503409-tvId=470503409-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
