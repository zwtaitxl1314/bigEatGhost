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
                    <p>杭州煨鸡是江浙一道滋补的菜肴，其做法很简单，营养很丰富。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>三黄鸡 <p>1000g </p></li>
            <li>猪油 <p>400g </p></li>
            <li>酒坛泥 <p>300g </p></li>
            <li>瘦猪肉 <p>100g </p></li>
            <li>鸡丁 <p>50g </p></li>
            <li>虾仁 <p>50g </p></li>
            <li>荷叶 <p> 35g</p></li>
            <li>火腿 <p>30g </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>油 <p>100g </p></li>
            <li>绍酒 <p>50g </p></li>
            <li> 葱白<p>50g </p></li>
            <li>熟猪油 <p>50g </p></li>
            <li>甜面酱 <p>30g </p></li>
            <li>葱<p> 25g </p></li>
            <li>食盐 <p>4g </p></li>
            <li>白砂糖 <p>20g </p></li>
            <li>姜 <p>10g </p></li>
            <li>丁香 <p>4g </p></li>
            <li>八角 <p>4g </p></li>
            <li>玉果 <p>2g </p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将鸡去毛，去内脏、洗净。加酱油、黄酒、盐，腌制1小时取出，将丁香、八角碾成细末，加入玉果末和匀，擦于鸡身；
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        将锅放在大火上，内加入猪油烧至五成热，放入葱花、姜爆香，然后将辅料中的鸡丁、瘦猪肉、虾仁、熟火腿丁、香菇丁分别到入锅中炒熟，出锅后，放凉备用；
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        鸡的两腋各放一颗丁香夹住，再用猪网油紧包鸡身，用荷叶包一层，再用玻璃纸包上一层，外面再包一层荷叶，然后用细麻绳扎牢；
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        将酒坛泥碾成粉末，加清水调和，平摊在湿布上（约1．5厘米厚），再将捆好的鸡放在泥的中间，将湿布四角拎起将鸡紧包，使泥紧紧粘牢，再去掉湿布，用包装纸包裹；
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        将裹好的鸡放入烤箱，用旺火烤40分钟，如泥出现干裂，可用泥补塞裂缝，再用旺火烤30分钟，然后改用小火烤90分钟，最后改用微火烤90分钟；
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        取出烤好的鸡，敲掉鸡表面的泥，解去绳子，揭去荷叶、玻璃纸，淋上香油即可。
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
