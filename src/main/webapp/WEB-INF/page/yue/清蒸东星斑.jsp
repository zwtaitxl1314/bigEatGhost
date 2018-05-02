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
        <img src="${pageContext.request.contextPath}/image/粤菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>东星斑的外皮光滑，炊熟的鱼皮裂开，见到那雪白的鱼肉，可用油浇在鱼身上，也可原汁原味。
                        东星斑的肉质异常鲜美，鱼肉入口，劲道弹牙还略有甜滋滋的味道。鱼皮的胶质更是粘的你张不开嘴了。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>东星斑鱼 <p>1条 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>大葱 <p> </p></li>
            <li>蚝油<p> </p></li>
            <li>生抽 <p> </p></li>
            <li>豆豉 <p> </p></li>
            <li>葱姜丝 <p> </p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将东星斑鱼化冻刮去鱼鳞去除内脏清洗干净
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        将东星斑鱼化冻刮去鱼鳞去除内脏清洗干净
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        在切开的部位抹上盐
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        再将老酒涂抹全身（这一步是去除腥味）
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        将大葱切段姜切片
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        放入鱼肚子里
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        再用保鲜膜包裹住放至30分钟以上
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        用25克蚝油和生抽及半勺豆豉调匀
    </div>
    <div class="practice">
        <div class="recipeStep_num">9</div>
        葱白和姜切成细丝
    </div>
    <div class="practice">
        <div class="recipeStep_num">10</div>
        将包裹鱼的保鲜膜去除
    </div>
    <div class="practice">

        <div class="recipeStep_num">11</div>
        将葱姜丝放在鱼身上，入开水锅中
    </div>
    <div class="practice">
        <div class="recipeStep_num">12</div>
        大火蒸15分钟
    </div>
    <div class="practice">
        <div class="recipeStep_num">13</div>
        整盘取出来，鱼身上的葱姜去掉不要
    </div>
    <div class="practice">
        <div class="recipeStep_num">14</div>
        将鱼盘中的汤汁倒入一空碗里
    </div>
    <div class="practice">
        <div class="recipeStep_num">15</div>
        再将汤汁倒入调汁碗内
    </div>
    <div class="practice">
        <div class="recipeStep_num">16</div>
        调匀备用
    </div>
    <div class="practice">
        <div class="recipeStep_num">17</div>
        将调好的汤汁入炒锅，开锅离火
    </div>
    <div class="practice">
        <div class="recipeStep_num">18</div>
        将汁浇在鱼身上即可
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/0db06f94d0e74a92cabd9a10fecdae95/0/0/w_19ru1973f1.swf-albumId=7947591009-tvId=7947591009-isPurchase=0-cnId=12" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
