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
                    <p>栖凤渡鱼粉是湖南郴州的著名小吃，属于湘菜系。发源地在湖南省郴州市苏仙区栖凤渡这个古镇。“走千里路、万里路，舍不得栖凤渡！”这句流传千百年的古话说的不仅是栖凤渡的地方好，更是夸她的独树一帜的传统小吃栖凤渡鱼粉。一说起栖凤渡鱼粉，只要是郴州人，应该都会下意识咂一下嘴巴，咽咽口水，于是，一股浓烈的鱼香和着辛辣味便回味在你嘴里了。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>鲢鱼 <p> </p></li>
            <li>豆膏 <p> </p></li>
            <li>茶油 <p> </p></li>
            <li>五爪朝天红椒 <p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>蒜 <p> </p></li>
            <li>姜 <p> </p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        准备好上列食材，河鲢鱼宰杀切大块、老姜切厚片、干五爪朝天红椒整个不用切碎、大蒜子拍开
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        放1.5两左右茶油入锅，油热后放三块老姜先入锅，接着放入鱼块，煎2分钟左右，翻一面再煎2分钟之后，放入剩余老姜片、大蒜子，干五爪朝天红椒继续炸1分钟，期间不要随意翻动鱼块，最后放水入锅，水量是锅子的4/5左右，大火煮沸5—8分钟后改小火，盖上锅盖慢慢熬至少1个小时以上
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        期间进行油淋辣椒粉的制作：放茶油入锅待油热后，关火，油温至七成热时，倒入辣椒粉，盐翻炒爆香出锅
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        待鱼汤熬制1小时以上，关火，放入油淋辣椒粉、盐、豆油、酱油（少量）、味精、撒一把葱花，用汤勺把调料拌匀，一锅香气四溢的鲢鱼汤就熬好了……
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        用另一锅子烧开水后，放入米粉，待米粉熟后捞出，盛入碗内，舀几勺鲢鱼汤入碗，一碗热气腾腾的栖凤渡鱼粉就做好了
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/7ae3194e4feb01048e293c0870f7d1f5/0/0/w_19ru23nhnp.swf-albumId=7963272009-tvId=7963272009-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
