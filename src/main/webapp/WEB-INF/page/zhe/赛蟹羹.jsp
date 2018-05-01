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
                    <p>赛蟹羹是一道色香味俱全的传统名肴，属于闽菜系。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>鲈鱼 <p>500克 </p></li>
            <li>鸡蛋黄<p>100克  </p></li>
            <li>火腿 <p> 50克</p></li>
            <li>竹笋 <p> 50克</p></li>
            <li>香菇(鲜) <p>50克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>花生油 <p>30克 </p></li>
            <li>酱油 <p>10克 </p></li>
            <li>醋 <p>3克 </p></li>
            <li>料酒 <p>10克 </p></li>
            <li>盐 <p>3克 </p></li>
            <li>味精 <p>2克 </p></li>
            <li>淀粉(玉米)<p>5克  </p></li>
            <li>大葱 <p>5克 </p></li>
            <li>姜 <p>6克 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>口味</legend>
        <ul>
            <li>咸鲜味 </li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将鲈鱼宰杀，去鳞、内脏及鳃洗净，斩去头尾，片成两片；
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        葱切段，姜切片；剩余姜切末；淀粉放碗内加水调成湿淀粉待用；
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        将鱼皮朝下，加葱段、姜片、料酒、精盐拌匀腌片刻，上锅蒸熟取出；
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        拣去葱、姜，滗去汤汁备用，剔下鱼肉，倒回汤汁；
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        将火腿、笋肉、香菇均切成丝；
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        蛋黄打散；
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        炒锅注油烧热，下入葱段爆香，倒入鸡汤烧开，烹入料酒，拣出葱段、放入笋丝、香菇丝烧开后，放入鱼肉及原汁，加酱油、精盐、味精烧开；
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        用湿淀粉勾薄芡，倒入蛋黄液搅匀，淋入醋，撒上火腿丝、姜末即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://share.vrs.sohu.com/my/v.swf&topBar=1&id=86230150&autoplay=false&from=page" type="application/x-shockwave-flash" width="560" height="470" allowfullscreen="true" allownetworking="all" allowscriptaccess="always"></embed>
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
