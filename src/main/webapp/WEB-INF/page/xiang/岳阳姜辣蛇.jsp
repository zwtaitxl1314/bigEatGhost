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
        <img src="${pageContext.request.contextPath}/image/湘菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>姜辣蛇是湖南岳阳的特色菜品。姜辣蛇主要是以乌梢蛇，配以大量老姜大火烹制，口感非常鲜美，营养全面，适合了湖南气候比较潮湿的特征。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>养殖花蛇 <p>1千克 </p></li>
            <li>尖红椒 <p>500克 </p></li>
            <li>五花肉各 <p>500克 </p></li>
            <li>生姜 <p>300克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            、 ，、 15 克，、 ， 。
            <li>豆瓣酱 <p>10克 </p></li>
            <li>辣酱 <p>10克 </p></li>
            <li>盐 <p>15 克 </p></li>
            <li>花生辣酱 <p>15 克 </p></li>
            <li>味精 <p>5 克 </p></li>
            <li>香油 <p>5 克 </p></li>
            <li>水 <p> 600 克</p></li>
            <li>色拉油 <p>50 克 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将蛇宰杀，与皮一起斩成 3 厘米长的段，五花肉切成 2 厘米的片。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        下油将五花肉炒香，然后把五花肉挑出，加入生姜、花蛇、下入盐、味精、豆瓣酱、辣酱、花生辣酱入高压锅压 4 分钟。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        锅内放入色拉油烧至 5 成热，放入尖红椒和压好的花蛇，旺火炒 3 钟，淋香油即可。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        锅内放入色拉油烧至 5 成热，放入尖红椒和压好的花蛇，旺火炒 3 钟，淋香油即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/ce668fb3f98c43499247ce7f323d1e0b/0/0/w_19ruh7iqkp.swf-albumId=6496331109-tvId=6496331109-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
