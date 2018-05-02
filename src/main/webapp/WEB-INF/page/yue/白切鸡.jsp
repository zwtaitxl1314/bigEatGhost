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
                    <p>
                        白切鸡又叫白斩鸡，是粤菜系鸡肴中最普通的一种，属浸鸡类。其特点为制作简易，刚熟不烂，不加配料且保持原味。
                        白切鸡皮爽肉滑，清淡鲜美，驰名粤港澳。清平鸡也是白切鸡的一种。
                    </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>三黄鸡 <p>750克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>姜 <p>50克 </p></li>
            <li>花生油  <p>60克 </p></li>
            <li>精盐  <p>5克 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        鸡清洗干净，去鸡爪，买的时候注意选择750克左右的，这样容易成熟，肉质也非常细嫩。在清理鸡的内脏时，注意将鸡肺彻底清洗干净。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        煮锅放到火上，加入清水，大火烧开，用手提起鸡头，将鸡身放入水中浸烫，3秒钟后提起，将鸡翅和鸡腿用手整理一下，再次放入水中浸烫，如此反复浸烫三次，使鸡的腹腔内外温度保持一致，注意每次浸烫的时间不要太长。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        之后用煮鸡的水，将整只鸡放入锅中浸泡，盖上锅盖，注意水一定要没过整个鸡身，浸泡20——30分钟捞出。也可以用虾眼水小火煮15分钟。之后去除鸡的头颈。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        将煮熟的鸡立刻放入冷水中浸泡，如果想效果更好可以用冰水来浸泡鸡身，10分钟后凉透捞出（注意一定要凉透，可以多浸泡一会儿）。之后将鸡身控干，可以用毛巾将鸡的全身表皮上的水分擦拭干净。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        姜去皮，用刀剁成碎末，最好能用搅打器搅打一下，这样姜蓉会更加细腻，加入精盐装入小碗中备用。如果喜欢也可以自制酱油调料或者红油调料。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        把鸡切成大小均匀的切件，如果想让鸡的品相更好一点，也可以捞出控干后，在鸡身外面涂抹一层芝麻油，这样整只鸡看上去更加润泽、颜色也更黄嫩。
    </div>


    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/b96a20c6bd0380a454363d6cbd067e0d/0/0/v_19rrn3yu6s.swf-albumId=322943800-tvId=322943800-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
