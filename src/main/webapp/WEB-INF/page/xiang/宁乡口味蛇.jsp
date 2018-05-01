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
                    <p>宁乡口味蛇是一道地方名菜，属于湘菜系。选用高蛋白，低脂肪，肉质细嫩的宁乡本地优良蛇作菜肴，精心研制原料，配制以鲜、香、辣为主要特征的口味。鲜嫩，香辣，酱汁味浓的蛇肉，满盘红艳艳的糊满辣椒，肥肥的蛇段已被浸得通红发亮，蛇肉紧实，泛着透明的油光。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>菜花蛇1条 <p>约1000克 </p></li>
            <li>红尖椒 <p>10只 </p></li>
            <li>红干椒 <p>一小碗 </p></li>
            <li>蒜瓣 <p>一小碗 </p></li>
            <li>八角桂皮香叶 <p>适量 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>茶油 <p> </p></li>
            <li>盐 <p> </p></li>
            <li>辣酱 <p> </p></li>
            <li>高汤 <p> </p></li>
            <li>水淀粉 <p>少许 </p></li>
            <li>蚝油 <p>两大勺 </p></li>
            <li>鸡精 <p> </p></li>
            <li>香油 <p>一大勺 </p></li>
        </ul>
    </fieldset>



    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        菜花蛇请商贩剥皮处理干净，蛇肉斩成长约6-7厘米的段，红尖椒切大约5厘米长的段，红干椒随意切小段。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        坐锅烧茶油，下蛇肉爆炒、爆黄，然后盛出，余油下蒜瓣、干红椒、八角、桂皮、香叶炒香，下辣酱炒出红油，再倒入蛇段大火翻炒一会儿，让所有的汁都裹上蛇段，倒入高汤烧开改用中小火煨制七成烂。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        将锅里的八角桂皮香叶拣出不要，把红尖椒下锅，调盐味翻匀，加水淀粉、淋蚝油、撒鸡精大火收汁，最后淋香油即可。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        蛇肉不要煨太烂，大概七成的时候最好，有点点嚼头，吃肉是一丝丝的。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        辣酱是湖南的品牌辣椒酱，加干椒段能够更加突出辣味。
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
