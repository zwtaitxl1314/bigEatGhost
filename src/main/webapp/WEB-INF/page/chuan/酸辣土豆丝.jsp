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
                    <p>1.酸辣土豆丝是一道人见人爱的一道家常菜，制作原料有土豆、辣椒、白醋等，虽然价格便宜但是酸辣可口味道味道却是大家喜爱的。无论是家庭餐桌、还是饭馆酒店几乎都能见到它的身影，虽然酸辣土豆丝是一道普通的菜肴，但是能够做好也是很不容易的，如何才能保持土豆丝熟而脆爽是关键，这个和土豆的选择、土豆丝的处理、炒制时的时间火候的把握有着密切的关系。土豆最好选择含水量高的新土豆，土豆丝要过水，炒制时大火快炒勤翻动，掌握了这些窍门相信你也能做出饭店水平。
                    <p>2.酸辣土豆丝的辣椒要适量，注意不要放太多，太辣容易引起人上火。 </p>
                    <p>3.做酸辣土豆丝我喜欢用陈醋而不是白醋来烹制，虽然颜色稍深，但是陈醋的香味远比白醋来的醇厚，尽管用白醋来烹制土豆丝的色泽好看，但是白醋的味道感觉太过重，自己吃的菜我会以味道为先来选择食材。 </p></p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>土豆 <p>500g </p></li>
            <li>干辣椒 <p>2个 </p></li>
            <li>香菜梗 <p>3g </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>大蒜 <p>5g </p></li>
            <li>盐 <p>3/4小勺 </p></li>
            <li>大葱 <p>5g </p></li>
            <li>味精 <p>1/4小勺 </p></li>
            <li>陈醋 <p>1大勺</p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        土豆丝去皮切成丝，用清水洗净表面的淀粉，再浸泡5分钟。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        葱蒜切片，干辣椒斜切成段，香菜梗切段。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        起油锅，油温升至4成热时放入干辣椒、葱蒜片爆香。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        放入土豆丝。加入盐，再加入陈醋。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        开大火快速翻炒，直至土豆丝8成熟关火，放入香菜段和味精快速炒匀出锅。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/ef35056532301650c5bfdd81497f8347/0/0/w_19rqzr21b5.swf-albumId=1332632909-tvId=1332632909-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
