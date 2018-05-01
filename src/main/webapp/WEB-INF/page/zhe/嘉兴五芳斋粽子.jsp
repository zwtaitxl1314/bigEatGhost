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
                    <p>嘉兴粽子是浙江嘉兴特色传统名点。以糯而不糊，肥而不腻，香糯可口，咸甜适中而著称。尤以鲜肉粽最为出名，被誉为“粽子之王”。嘉兴粽子因其滋味鲜美，携带、食用方便而备受广大旅游者厚爱，有“东方快餐”之称。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li> 糯米<p> </p></li>
            <li>猪后腿肉 <p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>糖 <p> </p></li>
            <li>盐 <p> </p></li>
            <li>红酱油 <p> </p></li>
            <li>白酒 <p> </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>其他</legend>
        <ul>
            <li>粽叶 </li>
            <li> 草绳</li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        制馅：包制鲜肉粽的馅，用的是肥瘦适中去皮的腿肉，按横丝纹切成长方形的小块，然后放入盆内，不用酱油浸拌，而是加入少量的食盐、白糖、味精、白酒等，用手反复拌搓，直到肉块出现“小白泡”为止。这样的肉馅煮熟后特别香嫩，有火腿风味。如果按直丝纹切割，再用酱油一浸，肉不易煮酥，吃起来还有点酱油味。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        淘米：糯米是包轧粽子的主料，不仅讲究米质好，而且淘米时有诀窍。就是淘得快，洗得净，最后用清水一冲，不再用手去搅拌。如此，过15分钟左右，米中积水就可以沥干了。因为淘过的米吸水量少，用酱油拌米时，咸味就容易吸收进去。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        烧煮：烧煮时也和一般煮法不同，不是用冷水，而是用开水落锅，不使粽子里的味道走失。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        用上述方法包制出来的鲜肉粽，刚起锅时削开箬壳，放在瓷盆内，用筷子均匀地夹成四块，块块有肉，糯而不烂。吃起来鲜滋滋，油津津，油而不腻，独具风味。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/decb20f55da63a723c7b85a3ef972092/0/0/w_19rqwmyvq1.swf-albumId=1939336309-tvId=1939336309-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
