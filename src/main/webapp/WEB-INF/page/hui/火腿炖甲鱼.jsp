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
        <img src="${pageContext.request.contextPath}/image/徽菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>火腿炖甲鱼属于徽菜，主要原料是甲鱼、火腿，口味是鲜香，工艺是炖，烹饪难度属于高级。甲鱼有较好的净血作用，常食者可降低血胆固醇，因而对高血压、冠心病患者有益；甲鱼还能“补劳伤，壮阳气，大补阴之不足”；对肺结核、贫血、体质虚弱等多种病患亦有一定的辅助疗效。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>甲鱼 <p>500克 </p></li>
            <li>火腿骨 <p>1/2条 </p></li>
            <li>绍酒 <p>1汤匙 </p></li>
            <li>火腿 <p>70克 </p></li>
            <li>熟猪肉 <p>10克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>清汤 <p>3杯 </p></li>
            <li>小葱 <p> 适量</p></li>
            <li>香油 <p>适量 </p></li>
            <li>姜 <p>适量 </p></li>
            <li>冰糖 <p>少许 </p></li>
            <li>胡椒粉 <p>少许 </p></li>
        </ul>
    </fieldset>



    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将甲鱼头引出齐甲盖处颈部宰杀，流尽血水，放在80℃热水中浸烫，剥去皮膜，用刀沿甲壳四周划开，掀掉甲盖，去内脏(留下甲鱼蛋)、脚爪和尾，洗净，剁成3．3厘米长、2厘米宽的条块放入滚水锅内，煮至水再滚时捞出，再清洗一次。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        选用肥瘦相连的火腿切成4大块。火腿骨洗净滤干。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        取砂锅一只，先整齐地摆入甲鱼块，然后将火腿、葱(打结)、姜(拍松)和火腿骨围在甲鱼四周，加入清汤和绍酒。    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        盖好盖，用大火煮滚撇去浮沫，放冰糖，改用小火炖1小时左右，去葱、姜和火腿骨不用，火腿取出切成片，放回锅中，淋上香油，洒上胡椒粉即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/f5b15ada81925b4f0a33ae306659413b/0/0/w_19rqvq0hbt.swf-albumId=2129169109-tvId=2129169109-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
