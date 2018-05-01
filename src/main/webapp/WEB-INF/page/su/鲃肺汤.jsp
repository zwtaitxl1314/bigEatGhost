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
        <img src="${pageContext.request.contextPath}/image/苏菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介 </legend>
            <ul>
                <li>
                    <p>鲃肺汤是江苏地区传统名菜，属于苏菜系，鲃肺汤鱼肝肥嫩，浮于汤面，鱼肉细腻，汤清味美，是夏秋季节的时菜。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>活鲃鱼 <p>500克 </p></li>
            <li>熟火腿片 <p>15克 </p></li>
            <li>熟猪油 <p>15克 </p></li>
            <li>水发香菇片 <p> </p></li>
            <li>熟春笋片 <p>10克 </p></li>
            <li>豌豆苗 <p>5克 </p></li>
            <li>绍酒 <p>25克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>精盐<p> 7克 </p></li>
            <li>味精 <p>2克 </p></li>
            <li>白胡椒粉 <p>2克 </p></li>
            <li>葱末 <p>5克 </p></li>
            <li>鸡清汤 <p> 750克</p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将鲃鱼脊背向外，放在砧板上，左手捏住鱼腹的边皮，用刀把鱼皮划破，向外平推除去鱼皮，取出鱼肝（俗称鱼肺），摘去胆洗净。再挖去鱼的内脏，去骨取下两爿鱼肉，放清水中撕去粘膜，洗净血污。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        将鱼肉、鱼肝分别片成两片，放入碗中，加精盐2克、葱末、绍酒5克拌匀稍腌。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        炒锅置旺火上，加鸡汤烧沸，将鱼片、鱼肝放入，加绍酒20克、精盐5克烧沸，撇去浮沫，放火腿片、笋片、香菇片、豌豆亩，加味精，烧沸后倒入汤碗，淋熟猪油少许，撒上胡椒粉即成。
    </div>
    <div class="practice">

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src='http://player.youku.com/player.php/sid/XMzExMTY5MzMy/v.swf' allowFullScreen='true' quality='high' width='480' height='400' align='middle' allowScriptAccess='always' type='application/x-shockwave-flash'></embed>
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
