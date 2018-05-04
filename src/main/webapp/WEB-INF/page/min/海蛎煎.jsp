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
            <legend>功效</legend>
            <ul>
                <li>
                    <p>
                        蚵仔煎（闽南语读做ě-ā-jiān，普通话译作“海蛎煎”），是一道常见的家常菜，起源于福建泉州，是闽南，台湾，潮汕等地区经典的传统小吃之一。
                        关于它的起源，有一则有趣的故事。民间传闻，西元1661年时，荷兰军队占领台南，泉州南安人郑成功从鹿耳门率兵攻入，意欲收复失土，郑军势如破竹大败荷军，荷军在一怒之下，把米粮全都藏匿起来，郑军在缺粮之馀急中生智，索性就地取材将台湾特产蚵仔、番薯粉混合加水和一和煎成饼吃，想不到竟流传后世，成了风靡全省的小吃。
                    </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>新鲜海蛎 <p>200g </p></li>
            <li>鸡蛋 <p>4个 </p></li>
            <li> <p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>香菜 <p>2棵 </p></li>
            <li>红薯淀粉<p>50g  </p></li>
            <li>胡萝卜 <p>1/2根 </p></li>
            <li>香葱 <p>1根 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>调味</legend>
        <ul>
            <li>蒜蓉辣酱 <p>1大勺 </p></li>
            <li>蚝油 <p>1大勺 </p></li>
            <li>盐 <p> 1茶匙</p></li>
            <li> 糖<p>30g </p></li>

        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        鸡蛋打散，香葱切碎，胡萝卜去皮、擦丝；
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        将新鲜海蛎洗净，加入蚝油；抓匀后腌制15分钟；
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        在红薯淀粉中加入适量水；搅拌成均匀面糊；
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        平底锅放入适量油，将腌制好的海蛎放入煎至七分熟；倒入步骤4中的面糊，摊成圆饼；
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        待面糊开始凝固时放入胡萝卜丝；待红薯淀粉完全呈透明状，顺着边缘倒入打好的蛋液；待蛋液将要完全凝固时，撒入葱花和香菜碎，煎至完全凝固；
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        将蒜蓉辣酱倒入碗中，蘸食即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/354bf9ff6b448c8ccbdf8245f218fb1e/0/0/v_19rrhskjx8.swf-albumId=240449200-tvId=240449200-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
