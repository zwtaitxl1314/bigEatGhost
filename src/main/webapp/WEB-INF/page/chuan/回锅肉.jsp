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
        <img src="${pageContext.request.contextPath}/image/川菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>
                        回锅肉是一种烹调猪肉的四川传统菜式，属于川菜系。制作原料主要有猪肉、青椒、蒜苗等，口味独特，色泽红亮，肥而不腻，入口浓香。
                        起源四川农村地区 [1]  。古代时期称作油爆锅；四川地区大部分家庭都能制作。所谓回锅，就是再次烹调的意思。回锅肉在川菜中的地位是非常重要的。回锅肉一直被认为是川菜之首，川菜之化身，提到川菜必然想到回锅肉。它色香味俱全，颜色养眼，是下饭菜之首选。配料各有不同，除了蒜苗（青蒜）还可以用彩椒，洋葱，韭菜，锅盔等来制作回锅肉，每家都有自己的秘方。
                    </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>二刀肉 <p> </p></li>
            <li>青蒜 <p> </p></li>
            <li>葱 <p> </p></li>
            <li>姜 <p> </p></li>
            <li>蒜 <p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>干红辣椒 <p> </p></li>
            <li>花椒 <p> </p></li>
            <li>郫县豆瓣酱 <p> </p></li>
            <li>糖 <p> </p></li>
            <li>料酒 <p> </p></li>
            <li>酱油 <p> </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        带皮五花肉冷水下锅加入葱段、姜片，花椒7、8粒，黄酒适量煮开。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        撇净浮沫，煮至八成熟，取出自然冷却（筷子可插入即可）。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        将肉切成薄片，姜、蒜切片，葱切成斜段。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        将青蒜的白色部分先用刀拍一下，然后全部斜切成段备用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        炒锅上火，加很少的油煸香辣椒、花椒及葱姜。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        下入肉片煸炒，至肉片颜色变透明，边缘略微卷起。
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        将肉拨到锅一边，下入郫县豆瓣酱（可以先剁细）炒出红油。
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        适当的加入少许酱油或甜面酱调色，与肉片一起翻炒均匀。
    </div>
    <div class="practice">
        <div class="recipeStep_num">9</div>
        适当的加入少许酱油或甜面酱调色，与肉片一起翻炒均匀。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/5836f07a69165ee4275ecbbbd0be0a09/0/0/w_19rr05agsh.swf-albumId=1325232109-tvId=1325232109-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
