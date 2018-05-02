<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>${comcuisine}</title>
    <meta charset="utf-8">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/head.css">
    <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sinaFaceAndEffec.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/lu.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

</head>
<jsp:include page="/WEB-INF/page/head.jsp" flush="true"/>

<body>

    <div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
    <div class="head_img">
        <img src="${pageContext.request.contextPath}/image/粤菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>菜品特色</legend>
            <ul>
                <li>
                    <p>1、广州文昌鸡是广东传统名菜。此菜菜名之来由十分有趣，第一此菜原是选用海南岛文昌县所培育的优良肉鸡所烹制，二来首先创制此菜的广东酒家，又恰恰地处广州文昌县口，所以二者合一，有了“广州文昌鸡”这道双重意义的菜名。</p>
                    <p>2、广州文昌鸡是广东传统名菜。此菜菜名之来由十分有趣，第一此菜原是选用海南岛文昌县所培育的优良肉鸡所烹制，二来首先创制此菜的广东酒家，又恰恰地处广州文昌县口，所以二者合一，有了“广州文昌鸡”这道双重意义的菜名。</p>
                </li>
            </ul>
        </fieldset>
    </div>


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>鸡 <p>1250克 </p></li>
            <li>鸡肝 <p>250克 </p></li>
            <li>火腿 <p>6克 </p></li>
            <li>油菜心 <p>300克 </p></li>
            <li>淀粉(蚕豆) <p>8克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>黄酒 <p>1克 </p></li>
            <li>盐 <p>5克 </p></li>
            <li>味精 <p>1克 </p></li>
            <li>猪油(炼制) <p> 75克</p></li>
            <li>香油 <p> 1克</p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>类别</legend>
        <ul>
            <li>咸鲜味 </li>
            <li>清蒸 </li>
            <li>补虚养身食谱 </li>
            <li>贫血食谱 </li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>

    <div class="practice">
        <div class="recipeStep_num">1</div>
        将文昌鸡宰净，放入微沸的二汤锅内用小火浸约15 分钟至刚熟，取出晾凉后，起肉去骨，斜切成长日字形共24 片；
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        在浸鸡的同时，将鸡肝洗净放入碗中用沸水浸没，加入精盐，浸至刚熟，取出切成24 片，盛在碗中；
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        将火腿切成与鸡肉一样大小的薄片共24 片；
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        将鸡肉片、火腿片、鸡肝片间隔开在上形碟上砌成鱼鳞形，连同鸡头、翼、尾摆成鸡的原形；
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        摆砌成鸡原形后入蒸锅用小火蒸热后取出，滗去水；
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        用中火烧热炒锅，下油，烹黄酒5 克，加上汤、味精、用湿淀粉调稀勾芡；
    <div class="practice">
        <div class="recipeStep_num">7</div>
        最后加入麻油和推匀，淋在鸡肉上便成。
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
                        <input type="hidden" name="yue" value="${yue}">
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
