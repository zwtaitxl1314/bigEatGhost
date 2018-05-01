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
                    <p>
                        麻婆豆腐（Mapo doufu），是四川省传统名菜之一，属于川菜。主要原料为配料和豆腐，材料主要有豆腐、牛肉末（也可以用猪肉）、辣椒和花椒等。麻来自花椒，辣来自辣椒，这道菜突出了川菜“麻辣”的特点。其口味独特，口感顺滑。
                        如今，麻婆豆腐远渡重洋，在美国、加拿大、英国、法国、越南、新加坡、马来西亚、日本、澳大利亚等国安家落户，从一味家常小菜一跃而登上大雅之堂，成了国际名菜。
                    </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>嫩豆腐 <p> </p></li>
            <li>牛绞肉或者猪绞肉 <p> </p></li>
            <li>豆豉 <p>少许 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>香葱 <p> </p></li>
            <li>蒜苗 <p> </p></li>
            <li>姜末 <p> </p></li>
            <li>蒜末 <p> </p></li>
            <li>郫县辣豆瓣酱 <p>少许 </p></li>
            <li> 淀粉水<p> </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>小诀窍</legend>

            <p>炒肉末的时候一定得有耐心，要炒到酥那才好吃呢。做这个菜最好用南豆腐，虽然烹调上比北豆腐要难点，但是那爽滑的口感实在太棒了~ </p>

    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        葱切小段，姜，蒜切成细末，蒜是姜的2倍量（2：1）。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        豆腐去掉表皮，切成小块，放入凉水锅里(水里要放入少许盐)，中小火加热.水沸腾之前，倒入漏勺沥水。(豆腐过盐水，可以去除豆腥味，逼出水分)
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        煮豆腐的同时，起个新锅，不要加油，直接下绞肉，慢慢炒至肉末变成深棕色，至酥。加入姜蒜末，炒出香气，放入1汤匙辣豆瓣酱，炒出红油。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        加入几粒豆豉，加入高汤or水，豆腐下锅（高汤or水的量要没过豆腐，），加入一点酒、1汤匙酱油增加颜色，煮5-6分钟，注意火候不要太大，以免豆腐开裂。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        烧开后用湿淀粉勾芡（一般要分2次加），第1次勾芡后加入葱花，再勾第2次芡。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        最后沿锅边加入入少许热油，开大火，等油浮上来就可以了（淋红油会比较红亮)
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        出锅装盘后再加入花椒粉，不要加太多。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/914a73e9a8e24069bea7fef2c0f485ac/0/0/v_19rrhbuukv.swf-albumId=201871907-tvId=201871907-isPurchase=0-cnId=27" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
