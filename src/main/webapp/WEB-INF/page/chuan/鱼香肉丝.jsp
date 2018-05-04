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
                    <p>鱼香肉丝，是一道特色传统名菜，以鱼香味调味而得名，属于川菜。相传灵感来自泡椒肉丝，民国年间则是由四川籍厨师创制而成。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>猪里脊肉 <p>300克 </p></li>
            <li>绿尖椒 <p>1根 </p></li>
            <li>胡萝卜 <p>1/4根 </p></li>
            <li>冬笋 <p>1/2根 </p></li>
            <li> 黑木耳<p> 6朵</p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">

        <legend>腌肉调料</legend>
        <ul>
            <li>生抽 <p>5ml </p></li>
            <li>料酒 <p>5m </p></li>
            <li>水淀粉 <p>20ml </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>鱼香汁</legend>
        <ul>
            <li>生抽 <p>5ml </p></li>
            <li>醋 <p>15ml </p></li>
            <li>白糖 <p>45克 </p></li>
            <li>盐<p>1克  </p></li>
            <li>水淀粉 <p>20ml </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>其他配料</legend>
        <ul>
            <li>色拉油 <p>80ml </p></li>
            <li>葱 <p>适量 </p></li>
            <li>姜 <p>适量 </p></li>
            <li>蒜末<p>适量  </p></li>
            <li>四川泡辣椒 <p>4-5根 </p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        猪里脊肉切细丝，加腌肉调料腌制十几分钟；
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        绿尖椒、胡萝卜、冬笋分别切细丝，黑木耳泡软洗净切细丝备用；
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        调好鱼香汁备用，葱、姜、蒜切末备用，泡辣椒切末备用；
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        锅中放足量油，油六七成热时放入肉丝大火快速滑散至变白，盛出备用；
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        锅中放少许油，放入葱、姜、蒜末炒香，放入泡辣辣末炒出红油；
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        放入胡萝卜、冬笋、木耳翻炒2分钟，放入尖椒翻炒均匀；
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        放入炒好的肉丝迅速翻炒均匀；
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        倒入鱼香汁快速翻炒均匀即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/9f1313198d26ea5de929337b8100561c/0/0/w_19rt948xm5.swf-albumId=4868428609-tvId=4868428609-isPurchase=0-cnId=6" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
