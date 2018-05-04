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
        <img src="${pageContext.request.contextPath}/image/闽菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>厦门沙茶面是厦门的著名小吃，属于闽菜小吃。不是粤菜,是东南亚菜系，主要原材料是沙茶酱和高汤，口味咸鲜香辣，有点甜。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>泉州油面 <p>300克 </p></li>
            <li>炸豆腐片 <p> 1块</p></li>
            <li>猪大肠 <p>50克 </p></li>
            <li>虾仁 <p>重约50克 </p></li>
            <li>韭菜 <p> 20克</p></li>
            <li> 沙茶汤<p> </p></li>
            <li>绿豆芽 <p>30克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>

            <li>花生油 <p> </p></li>
            <li>花生酱 <p> </p></li>
            <li>蒜头 <p> </p></li>
            <li>葱头 <p> </p></li>
            <li>红辣椒 <p> </p></li>
            <li>沙茶粉 <p> </p></li>
            <li> 糖<p> </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将碱水油面放入沸水中大火氽5分钟，取出控水放入大碗中备用;绿豆芽去头去尾;
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        韭菜洗净，切长3厘米的段;锅内放入沸水，大火沙茶面烧开后放入绿豆芽大火氽1分钟，捞出过凉;韭菜段放入沸水中大火氽0.5分钟，捞出过凉。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        猪大肠洗净，放入锅中加盐5克、料酒大火煮30分钟，捞出切成长2厘米的段。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        锅内放入沙茶酱、高汤大火烧开，放入盐2克、鸡粉调味后下炸豆腐片、猪大肠、虾仁、绿豆芽、韭菜段大火烧开，出锅浇于碱水油面上即可。
    </div>
    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <object width=1380 height=624><param name="movie" value="http://share.vrs.sohu.com/my/v.swf&topBar=1&id=84737228&autoplay=false&from=page"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><param name="wmode" value="Transparent"></param><embed width=1380 height=624 wmode="Transparent" allowfullscreen="true" allowscriptaccess="always" quality="high" src="http://share.vrs.sohu.com/my/v.swf&topBar=1&id=84737228&autoplay=false&from=page" type="application/x-shockwave-flash"/></embed></object>
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
