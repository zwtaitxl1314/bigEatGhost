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
                    <p>“九转大肠”是山东济南的传统名菜。在清光绪年间，济南九华林酒楼店主，把猪大肠（直肠）经洗刷后，加香料用开水煮至硬酥，取出切段，加酱油、糖、香料等调味，首先制成了香肥可口的”红烧大肠“，赢得顾客的欢迎，逐渐闻名于市。
                        后来在制作方法上又有所改进，即将洗净大肠入开水锅中煮熟后，先入油锅中炸，然后再加调料和香料烹制，使”红烧大肠“的味道更为鲜美。许多着名人士在该店设宴时均备”红烧大肠“一菜。一些文人雅士食后，感到此菜确实与众不同，别有滋味，为取悦店家喜”九“之癖，并称赞厨师制作此菜像道家”九炼金丹“一样精工细作，便将其更名为”九转大肠“。从此”九转大肠“一菜便驰名全省，成为山东最着名的菜肴之一。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>猪大肠 <p>500克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>食盐 <p>1茶勺 </p></li>
            <li>葱 <p>1大勺 </p></li>
            <li>鸡精 <p>适量 </p></li>
            <li>姜 <p>1大勺 </p></li>
            <li>蒜  <p>1大勺 </p></li>
            <li>料酒 <p>1大勺 </p></li>
            <li>生抽 <p>1大勺 </p></li>
            <li>老抽 <p>1茶勺 </p></li>
            <li>白糖 <p>2大勺 </p></li>
            <li>胡椒粉 <p>半茶勺</p></li>
            <li>肉桂粉 <p>半茶勺 </p></li>
            <li>花椒油 <p>适量 </p></li>
            <li>香菜 <p>少许 </p></li>
            <li>植物油 <p>适量 </p></li>
            <li>小葱 <p>少许 </p></li>

        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将熟大肠切成2CM长的段，放入开水中焯一下，捞出沥干水分
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        锅中倒入植物油，油温7成热时下大肠炸至金黄，捞出沥油
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        锅中留底油，下葱姜蒜末爆香
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        倒入清汤，加入生抽酱油、老抽酱油、盐、糖、绍酒、醋、鸡精，再倒入大肠，大火烧开，转小火将大肠煨透
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        待汤汁收粘稠时，加入胡椒粉、肉桂粉、砂仁粉，淋入花椒油，起锅前撒上香菜末即可
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <object width=1460 height=743><param name="movie" value="http://share.vrs.sohu.com/917357/v.swf&topBar=1&autoplay=false&plid=1012083&pub_catecode=0&from=page"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><param name="wmode" value="Transparent"></param><embed width=1460 height=743 wmode="Transparent" allowfullscreen="true" allowscriptaccess="always" quality="high" src="http://share.vrs.sohu.com/917357/v.swf&topBar=1&autoplay=false&plid=1012083&pub_catecode=0&from=page" type="application/x-shockwave-flash"/></object>
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
