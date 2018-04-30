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
                    <p>姊妹团子是湖南省地方特色小吃，属湘菜。用上等糯米磨成细粉，包入鲜肉、香菇、味精、芝麻油等原料和成的肉馅，捻成尖顶平底长型锥体，蒸熟后宛如一座玲珑的白玉小宝塔。外观白净、细腻油润、鲜香爽口。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>糯米 <p>600克 </p></li>
            <li>大米 <p>400克 </p></li>
            <li>猪五花肉 <p>350克 </p></li>
            <li>北流糖 <p>100克 </p></li>
            <li>桂花糖 <p>10克 </p></li>
            <li>红枣 <p>150克 </p></li>
            <li>水发香菇 <p>15克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        ，，，，，，，，、，。
        <legend>配料</legend>
        <ul>
            <li>酱油 <p>20克 </p></li>
            <li>味精 <p>5克 </p></li>
            <li>精盐<p>5克 </p></li>
            <li>熟猪油 <p>30克 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>口味</legend>
        <ul>
            <li> </li>
            <li> </li>
            <li> </li>
            <li> </li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将糯米、大米一起淘洗干净，用清水浸泡4小时（冬季约泡7小时），捞出用清水冲洗干净，盛入竹筲箕内沥去水，再加冷水1250克磨成细滑的浆。将浆料灌入布袋内，挤干水分，取出倒入盆内。取米粉150克搓成扁同饼，入笼蒸约30分钟至熟，取出与其他生粉掺和揉匀。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        红枣洗净去核，剁成枣泥，盛入盆内，入笼用旺火蒸约1小时，取出。炒锅加熟猪油烧热，先倒入北流糖拌炒溶化，再倒入枣泥和桂花糖，拌炒均匀，出锅盛入盆内即成糖馅。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        猪五花肉洗净，剁成肉茸，盛入碗内；香菇去蒂，剁碎后与精盐、味精一起倒入肉碗内，先拌两遍，然后加酱油及适量清水拌匀，即成肉馅。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        和好的粉团搓成条，摘成每个约15克的剂子逐个搓圆，并用手指在中间捏成窝子，分别放入糖馅和肉馅，捏拢收口，糖馅的捏成圆形，肉馅的捏成尖角形或其他形状，以便区别。笼内铺块白布，入笼用沸水旺火蒸约10分钟，取出即成。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>

    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/1b14b958d5525e0e4ea9a434f4d0c6fe/0/0/w_19rs8cls0x.swf-albumId=2947205709-tvId=2947205709-isPurchase=0-cnId=7" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
