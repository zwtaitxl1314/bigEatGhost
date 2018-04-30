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
        <img src="${pageContext.request.contextPath}/image/浙菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>
                        龙井虾仁因选用清明节前后的龙井茶配以虾仁制作而得名，是一道具有浓厚地方风味的杭州名菜。 [1]
                        成菜后，虾仁白嫩、茶叶翠绿，色泽淡雅，味美清口。
                    </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>活河虾 <p>600克 </p></li>
            <li>龙井新茶 <p>5克 </p></li>
            <li>鸡蛋 <p>1个 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>淀粉 <p>10克 </p></li>
            <li>黄酒<p> 适量</p></li>
            <li>盐 <p> 适量</p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>口味</legend>
        <ul>
            <li> </li>
            <li> </li>
            <li> </li>
            <li> </li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将河虾挤出虾肉，用清水反复清洗，至雪白，沥干水分。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        盛到碟中，放入盐和蛋清，用筷子搅拌至有粘性，加入淀粉，腌制1小时。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        茶用开水泡开，备用。热锅放入油，滑开虾仁后盛出。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        用葱炝锅，放入虾仁，再加入黄酒、茶叶和茶水，迅速颠炒半分钟即可出锅。
    </div>
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/79861e5991e7fa8158ad2db552485d65/0/0/v_19rrnxqg1k.swf-albumId=339257300-tvId=339257300-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
