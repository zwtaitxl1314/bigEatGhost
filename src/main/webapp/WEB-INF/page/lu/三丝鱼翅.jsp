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
        <img src="${pageContext.request.contextPath}/image/鲁菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>功效</legend>
            <ul>
                <li>
                    <p>1.补虚养身</p>
                    <p>2.气血双补</p>
                    <p>3.防癌抗癌</p>
                    <p>4.营养不良</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>鱼翅(干) <p>20克 </p></li>
            <li>鸡腿 <p>600克 </p></li>
            <li>海参(水浸) <p>100克 </p></li>
            <li>冬笋 <p>100克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>鸭油 <p>125克 </p></li>
            <li>料酒 <p>15克 </p></li>
            <li>酱油 <p>30克 </p></li>
            <li>味精 <p>5克 </p></li>
            <li>淀粉(玉米) <p>50克 </p></li>
            <li>盐 <p>10克 </p></li>
            <li>糖色 <p>5克 </p></li>
            <li>大葱 <p>100克 </p></li>
            <li>姜 <p>25克 </p></li>
            <li>大蒜(白皮) <p>25克 </p></li>
            <li>八角 <p>10克 </p></li>
        </ul>
    </fieldset>



    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将鱼翅清水涤洗，放入大碗内。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        鱼翅加水上锅蒸2小时，取出滗去翅汤。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        换入鸡汤，放入鸡腿(500克)(开水锅中焯过)、大料、葱段、姜片、蒜片、料酒继续上锅蒸至翅针软。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        取出鸡腿及佐料，用温水将鱼翅涤净，择捋在盘内成桃状，推入碗中。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        将海参，冬笋，熟鸡腿肉(100克)切成丝。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        海参、冬笋放开水中焖透。
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        上火，放底油，加葱段、姜片、蒜片、大料，煸出香味，加鸡汤、料酒，烧开。
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        去佐料和浮沫，加入精盐、酱油、鸡丝煨焖。
    </div>
    <div class="practice">
        <div class="recipeStep_num">9</div>
        调入味精，调好口味，淋入水淀粉勾芡汁，盛入盘中做翅底。
    </div>
    <div class="practice">
        <div class="recipeStep_num">10</div>
        坐勺上火，将鱼翅轻轻放入，加上等鸡汤，撇去浮沫。
    </div>
    <div class="practice">
        <div class="recipeStep_num">11</div>
        加入味精、糖色，淋入水淀粉勾芡，淋入鸭油，颠翻过来，放在三丝上面即成。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/6a309a55f0eea8e7f2928538ba035f78/0/0/w_19rrf5r4g9.swf-albumId=886499109-tvId=886499109-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
