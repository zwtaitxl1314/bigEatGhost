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
            <legend>简介</legend>
            <ul>
                <li>
                    <p>白扒四宝是一道色香味俱全的传统名菜。主要食材有水发广肚、炖鲍鱼、鸡脯肉等。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>水发广肚 <p>250克 </p></li>
            <li>炖鲍鱼 <p>200克 </p></li>
            <li> 鸡脯肉<p>250克 </p></li>
            <li>桶龙须菜 <p> 1桶</p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>料酒 <p>20克 </p></li>
            <li>精盐 <p>2.5克 </p></li>
            <li>鸡油 <p>15克 </p></li>
            <li>熟猪油 <p>500克 </p></li>
            <li>湿玉米粉 <p> </p></li>
            <li>白糖 <p>少许 </p></li>
            <li>清汤 <p>500克 </p></li>
            <li>奶汤 <p>30克 </p></li>
            <li>鸡蛋清 <p>1个 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将鸡脯肉片去筋、皮，然后片成大薄片，放入锅中，加入少许精盐和少许玉米粉以及鸡蛋清拌匀上浆。    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        将龙须菜整齐地放入小圆盘中，加入少许鸡油、少许精盐，上屉蒸10分钟取出。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        锅中注入200克清汤，加入料酒、精盐各少许，再放入鲍鱼，在微火上kao2分钟，倒入漏勺。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        坐煸锅，注入熟猪油，烧至五成热，下入浆好的鸡片滑熟，倒入漏勺控油。坐锅上火，注入汤，加1克精盐、少许绍酒，下入广肚氽透。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        将熟广肚、熟鲍鱼、熟鸡脯肉、熟龙须菜依次整齐码盘。锅中注入300克清汤，加入剩余的料酒、精盐，上火烧开，撇去浮沫，加入用水调稀的玉米粉勾芡淋上鸡油，浇在菜上即可 。
    </div>


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
