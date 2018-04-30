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
                    <p>泡椒凤爪是起源于重庆的民间独特美食，属渝菜小吃类。以酸辣爽口、皮韧肉香而著称。泡椒凤爪既能登大雅之堂，也为普通老百姓所喜爱。此款美食具有开胃生津、促进血液循环的功效。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>鸡爪 <p>2斤 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>料酒 <p> </p></li>
            <li>花椒 <p> </p></li>
            <li>大料 <p> </p></li>
            <li>葱段 <p> </p></li>
            <li>姜片 <p> </p></li>
            <li>白醋 <p> </p></li>
            <li>冰糖 <p> </p></li>
            <li>小米椒 <p> </p></li>
            <li>泡椒 <p>1袋 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>小诀窍</legend>
        <ul>
            <li> 1.有人说这个凤爪煮的时间要短一些，十分钟就够了。我认为还要煮久一点，因为煮好的凤爪马上要捞出来冲凉水，导致凤爪的皮比较紧致，太生硬的话影响口感。  </li>
            <li>2。冲水的时间愈久，凤爪的颜色愈白。当然为了避免浪费，我建议煮好后可以短时间冲水，然后把凤爪泡好的凤爪泡进冰水里，也能达到长期冲水的效果。 </li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        把洗好的鸡爪放进锅里，加入料酒，花椒大料，葱段和姜片，大火煮十五分钟，煮到筷子能插进去为止。（鸡爪剪去指甲，清洗干净，剁成两段，以便入味。）
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        捞出来用冷水冲，然后泡到冰水里一段时间。准备白醋，冰糖，小米椒，蒜末，一袋泡椒。泡椒的味道各不相同，我在家乐福没找到瓶装的，这次临时买了升元的，味道也很正。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        将凉开水中加入大蒜、一整袋泡椒连同里面的汁、醋、姜片、盐、小米椒段、冰糖，混匀后把鸡爪泡在里面放在冰箱里浸泡一夜就可以吃了。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/056e9dc3125b5db4816f9a67428ea69d/0/0/w_19rulw6mkl.swf-albumId=6750244009-tvId=6750244009-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
