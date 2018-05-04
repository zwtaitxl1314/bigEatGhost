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
            <legend>功效</legend>
            <ul>
                <li>
                    <p>
                        西湖醋鱼，别名为叔嫂传珍，宋嫂鱼，是浙江杭州饭店的一道传统地方风味名菜 。
                    </p>
                    <p>西湖醋鱼通常选用草鱼作为原料，烹制而成。烧好后，浇上一层平滑油亮的糖醋，胸鳍竖起，鱼肉嫩美，带有蟹味，鲜嫩酸甜。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>草鱼 <p>900克 </p></li>
            <li>醋<p>50克  </p></li>
            <li> <p> </p></li>
            <li> <p> </p></li>
            <li> <p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>黄酒 <p>25克 </p></li>
            <li>酱油 <p>75克 </p></li>
            <li>白糖 <p>60克 </p></li>
            <li>姜 <p>1块 </p></li>
            <li> 葱<p>适量 </p></li>
            <li>水淀粉 <p> 50克</p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        把姜去皮切成碎末，去掉的姜片不要丢掉，准备好醋、酱油、黄酒、水淀粉和白糖。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        草鱼去鳞去膛洗净，把鱼的一面划上5刀，翻面从尾部入到，沿脊骨向头部劈近，对切分为2半，斩去鱼牙不用，去掉鱼头的淤血，在没有脊骨的身上长划一刀。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        锅中放入葱姜片和清水，烧开后，捞出葱姜，下入鱼用筷子把鱼鳍支起来，让鱼成型，煮上3分钟，撇去血末，打入凉水2次。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        倒出汤汁，锅内加入少许的原汤和适量的酱油、绍酒和姜末。捞出鱼，码放在盘中。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        锅中的原汁加入白糖、米醋和剩下的酱油。烧开后加入湿淀粉烧至汤汁浓缩。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        把制作好的汤汁均匀的撒在鱼的身上，再撒上剩余的姜末即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/2229888a2acfe8a7da0a69989bbc6235/0/0/w_19rslajei9.swf-albumId=2633001309-tvId=2633001309-isPurchase=0-cnId=12" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
    </div>

    <form method="get"  name="myform1" action="${pageContext.request.contextPath}/customer/comments.do" >
        <div id="content" style="width: 700px; height: auto;margin : 40px auto 0 auto;">
            <div class="wrap">
                <div class="comment">
                    <div class="head-face">
                        <img src="${pageContext.request.contextPath}/image/1.jpg">
                        <a >${user.username}</a>
                        <input type="hidden" name="username" value="${user.username}">
                        <input type="hidden" name="what" value="${what}">
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
