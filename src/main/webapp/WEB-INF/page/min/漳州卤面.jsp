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
        <img src="${pageContext.request.contextPath}/image/闽菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>漳州卤面是一道色香味俱全的地方名点，属于闽菜系。据说已有一千三百多年的历史。南方的主食是大米，所以面食应该是公元686年建郡时，由移居此地的大批北方人带过来的。后来这些北方人入乡随俗，面食也就渐渐成了节日、婚嫁、搬家之类喜庆时候的特殊食品。如今满街的排档也都可以吃得到。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>瘦五花 <p>200克左右 </p></li>
            <li>鱿鱼干 <p>适量 </p></li>
            <li>虾干 <p>适量 </p></li>
            <li>香菇干 <p>三大朵 </p></li>
            <li>黄花菜干 <p>少许 </p></li>
        </ul>





    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>碱面 <p>够吃就好 </p></li>
            <li>鸡蛋<p>一颗  </p></li>
            <li>韭菜 <p>少许 </p></li>
            <li>地瓜粉 <p>三大勺 </p></li>
            <li>香菜 <p>少许 </p></li>
            <li>豆芽 <p>少许 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>小诀窍</legend>
        <ul>
            <li>在漳州，都用莲蕉粉好像，不知道哪里可以买到又想吃，尽量用可以代替的东西替代一下，这里最大缺陷就是没有卤料，可惜没有时间做。 </li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        首先香菇，鱿鱼干，黄花菜（其实可以加虾干等海鲜干货可以增鲜）泡发，红葱头切碎（没有可以省略），瘦肉切成薄片。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        少许油，红葱头下锅微火炒酥香。盛出待用。

    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        下肉抄一下变色后加入香菇鱿鱼干等干货，下点白糖，些许料酒，生抽。然后加入泡发干货的水，（所以干货泡发前要用水稍微洗一下，这样泡发的水不会浪费）。
        放入大概没过材料的七八倍水，烧开，煮个十分钟左右，然后调好适合自己的咸淡。（这时把地瓜粉加入少许水溶解）

    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        接着勾芡，把地瓜粉水慢慢倒入锅中，一边倒一边搅拌。最后放入鸡蛋液（建议加入少量水），同样边倒边搅。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        最后另外起一锅沸水煮面，下豆芽韭菜一起，捞起加汤，香菜，红葱头即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/2f7d6f5c6345595556c8dc7bf8c07fd2/0/0/w_19rs04lo4h.swf-albumId=3225949709-tvId=3225949709-isPurchase=0-cnId=7" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
