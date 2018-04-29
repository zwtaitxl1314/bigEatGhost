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
        <img src="${pageContext.request.contextPath}/image/鲁菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>诗礼银杏是一道地方传统名菜，属于鲁菜-孔府菜。在鲁菜中，用白果做的诗礼银杏是孔府最上等名菜之一。此菜清香甜美，柔韧筋道，可解酒止咳。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>白果(干) <p>200克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>冰糖 <p>50克 </p></li>
            <li>白糖 <p>30克 </p></li>
            <li>糖桂花 <p>20克 </p></li>
            <li>蜂蜜 <p>20克 </p></li>
            <li>猪油(板油) <p>20克 </p></li>
            <li>陈皮 <p>3克 </p></li>
            <li>水 <p>60克 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>菜品特色</legend>
        <ul>
            <li>1、在鲁菜中，用白果做的“诗礼银杏”是孔府传统名菜之一。 </li>
            <li>2、此菜清香甜美，柔韧筋道，可解酒止咳，是孔府宴中的独具特色的菜。成菜色如琥珀，清新淡鲜，酥烂甘馥，十分宜人，是孔府中的名肴珍品。 </li>
            <li>3、相传，孔子教子孔鲤学诗礼曰：“不学诗，无以言，不学礼，无以立。”嗣后传为美谈。其后裔自称为“诗礼世家”。 </li>
            <li>4、53代“衍圣公”孔治建“诗礼堂”，堂前有两株银杏，种子硕大丰满。以后孔府请客，总要用此银杏的种子做一道甜菜，用以缅怀孔老夫子的教导，便美其名曰：诗礼银杏。 </li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        先将银杏果仁入锅煮酥取出。
        锅放入猪大油，烧到5成熟时，放入冰糖炒制成银红色时
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        然后加清水60克、白糖、蜂蜜、陈皮煮开
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        倒入白果，煮至汁浓，调入糖桂花即可
    </div>
    <p class="topic">${comcuisine}的教学视频</p>
    <embed src="http://player.video.qiyi.com/9b601897a84108cad549eee2118c52d9/0/0/w_19rs0win1p.swf-albumId=3312812609-tvId=3312812609-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
    <div class="video">

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
