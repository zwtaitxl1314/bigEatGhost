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
            <legend>简介</legend>
            <ul>
                <li>
                    <p>夫妻肺片（英文名：Sliced Beef and Ox Tongue in Chilli Sauce；Mr and Mrs Smith）是一道四川成都名菜，由郭朝华、张田政夫妻创制而成。通常以牛头皮、牛心、牛舌、牛肚、牛肉为主料，进行卤制，而后切片。再配以辣椒油、花椒面等辅料制成红油浇在上面。其制作精细，色泽美观，质嫩味鲜，麻辣浓香，非常适口。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>卤猪肘 <p>1/2个 </p></li>
            <li>卤猪舌 <p>1个 </p></li>
            <li>卤猪心 <p>1个 </p></li>
            <li>卤猪耳 <p>1个 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>白芝麻 <p>10克 </p></li>
            <li>花生仁 <p>20克 </p></li>
            <li>小葱 <p>5克 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>味汁</legend>
        <ul>
            <li>辣椒油 <p>10克 </p></li>
            <li>花椒 <p>5克 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>辣椒油材料</legend>
        <ul>
            <li>干辣椒 <p>150克 </p></li>
            <li>花椒 <p>10克 </p></li>
            <li>小辣椒 <p>30克 </p></li>
            <li>紫草 <p>3克 </p></li>
            <li>白芝麻 <p>50克 </p></li>
            <li>小葱 <p>5克 </p></li>
            <li>香叶 <p>3片 </p></li>
            <li>姜 <p>5克 </p></li>
            <li>桂皮 <p>1块 </p></li>
            <li>草果 <p>1个 </p></li>
            <li>姜植物油 <p>200毫升5克 </p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        准备干辣椒150克和小辣椒30克
        辣椒非常的辣，所以一定要少放，除非特别能吃辣的，可以多放一些
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        两种辣椒剪开到处籽，籽留好，籽还是比较辣比较香的，所以尽量留下
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        锅烧微热，倒一点植物油中小火，煸剪好的辣椒，两种辣椒分开煸，煸出香辣气和水气，大约一分钟就差不多了，最后辣椒快煸好的时候把辣椒籽放进去煸几十秒就出来，因为籽非常容易糊
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        炒完的辣椒晾凉后，放入打碎机，也就是五秒钟就这么细了
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        把辣椒粉、芝麻、辣椒籽、花椒和紫草放进一个盆里
        准备浇油，植物油和三种香料（香叶、桂皮和草果）下锅浇至八成热，把葱段姜片下去炸金黄后和香料一起捞出，然后把油分次浇在辣椒粉里面，要快速搅拌，大约用一半油后，剩下的一半油晾一会，在倒筋盆里就可以了
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        准备主料：卤猪肘30克、卤猪舌1个、卤猪心1个、卤猪耳1个
        花生用热水把皮泡涨，去皮炸酥备用，芝麻炒熟，花椒炒香辗末备用
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        切点黄瓜垫底，吃起来比较清爽，不会太油腻，猪肘，猪舌、猪心切片、猪耳切丝、码在黄瓜丝上，把调好的味汁浇在上边撒芝麻、花生碎和香葱即可
    </div>

    <p class="topic">${comcuisine}的教学视频</p>
    <div class="video">
        <embed src="http://player.video.qiyi.com/665adf13b7bece107199529e2eec099b/0/0/w_19rt50r2mp.swf-albumId=5736394109-tvId=5736394109-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
