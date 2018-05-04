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
                    <p>永州血鸭是湖南永州的一款地方传统名菜。永州血鸭分为多种，有江永，道县，新田、宁远、蓝山、东安、双牌等多个说法。在当地，几乎家家户户都会制作此菜。具有美味、开胃凉血的特点。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>鸭 <p>2000克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>胡椒粉 <p>1克 </p></li>
            <li>姜 <p>6克 </p></li>
            <li>盐 <p>4克 </p></li>
            <li>辣椒(红、尖、干) <p>5克 </p></li>
            <li>味精 <p> 3克</p></li>
            <li>小葱 <p>15克 </p></li>
            <li>大蒜（白皮） <p>25克 </p></li>
            <li>花生油 <p>30克 </p></li>
            <li>香油 <p>10克 </p></li>
            <li>料酒 <p>35克 </p></li>
            <li>酱油 <p>4克 </p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        取净碗一只，先装好料酒15克，把鸭由颈下杀一刀，让鸭血流入碗内，用筷子搅匀
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        再将鸭子浸在沸水内烫一下，随即煺毛剖腹，挖出内脏，用刀切成1.8厘米见方的块，另用碗装好待用（头、脚、翅、内脏等不用）
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        生姜洗净，切成1.2厘米见方的薄片
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        葱去根须，洗净，取葱白切成1.2厘米长小段；干红辣椒斜切成0.9厘米长条；蒜瓣一切两半，一并放入净碗内
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        铁锅放旺火上烧热，倒入花生油，烧至七成热时，将切好的姜、葱、蒜、干红椒倒入炒出香味，再倒入鸭块合炒
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        炒至收缩变白，随即加料酒20克、酱油、精盐再炒； 9.然后加鲜汤200毫升，将铁锅移微火上焖10分钟；
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        见汤约剩1/10时将鸭血淋在鸭块上，边淋边炒动，使鸭块粘满鸭血，淋完后加胡椒粉、味精、略炒一下即起锅，盛入盘中，再淋上香油即成。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/934ab7b1a82411df46334341be6ce93d/0/0/v_19rrh3exv0.swf-albumId=231849600-tvId=231849600-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
