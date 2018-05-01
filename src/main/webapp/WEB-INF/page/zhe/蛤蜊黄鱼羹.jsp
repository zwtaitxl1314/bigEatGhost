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
                    <p>蛤蜊黄鱼羹是浙江宁波市的传统名肴，属于浙菜系。在宁波菜中，以黄鱼为主料的菜肴较多，其中以黄鱼肉丁加配料和鲜汤烹制成 的黄鱼羹，口味最鲜美，特别受人欢迎。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>黄鱼100克 <p> </p></li>
            <li>蛤蜊200克 <p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>鸡蛋 <p>65克 </p></li>
            <li>火腿 <p>10克 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>调料</legend>
        <ul>
            <li>花生油 <p>60克 </p></li>
            <li>食盐 <p>2克 </p></li>
            <li>味精 <p>2克 </p></li>
            <li>料酒 <p>10克 </p></li>
            <li>小葱 <p>8克 </p></li>
            <li>玉米淀粉 <p>20克 </p></li>
            <li>高汤 <p>300克 </p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        黄鱼肉整理干净，切成方丁
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        蛤蜊放沸水锅中煮开壳，去壳取肉
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        鸡蛋打入碗中，用筷子搅散备用
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        炒锅置旺火上，下花生油40克烧热，下葱末爆香，放入黄鱼丁炒一下
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        加高汤、料酒、盐、味精烧沸
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        待鱼肉熟后下湿淀粉推匀，再淋入鸡蛋液，边淋边用勺推动呈丝状
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        加入剩余花生油略推，盛出装大汤盘内
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        锅内留少许卤汁，放入蛤蜊肉，置火上略煮后搅开，盛出浇在鱼羹面上，撒上火腿（切末）即可
    </div>


    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/a1670ecd402e88bcac6918c583bac16a/0/0/v_19rr9d5ulc.swf-albumId=565505100-tvId=565505100-isPurchase=0-cnId=32" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
