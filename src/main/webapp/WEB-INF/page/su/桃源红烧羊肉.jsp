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
        <img src="${pageContext.request.contextPath}/image/苏菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p> 桃源红烧羊肉在江南一带极为出名，苏杭一带都将桃源羊肉作为酒桌上的必备菜肴。制作时，将青壮年湖羊肉切成方块，瘦肥相间，层层叠加，用艾草扎成一方，置于陶缸，先用旺火煮开，先后投放八角、桂皮、老姜、红枣、上乘黄酒、优质酱油、糖、味精等10多种佐料，继用文火煨过夜。翌展开缸，撒以姜、蒜、椒末即成。红烧羊肉品质精良，色泽酱红，香味四溢，口感鲜、甜、微辣，肉质细嫩。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li> 羊肋条肉<p>500克 </p></li>

        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>胡萝卜<p>20克 </p></li>
            <li>青蒜段 <p>50克 </p></li>
            <li> <p> </p></li>
            <li> <p> </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>调料</legend>
        <ul>
            <li> 豆油<p> 30克</p></li>
            <li> 白酒<p> 30克</p></li>
            <li> 绍酒<p> 40克</p></li>
            <li> 辣椒酱<p>5克 </p></li>
            <li> 酱油<p>10克 </p></li>
            <li> 白糖<p>2克 </p></li>
            <li> 葱段姜片<p>20克 </p></li>
            <li> 八角<p>4颗 </p></li>

        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将羊肋条肉洗净，切成4厘米见方的块。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        放入锅内，加清水适量，放入少许葱段姜片、白酒，烧开，焯水约1分钟，随即捞出放清水中洗净。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        胡萝卜洗净切成片。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        炒锅上火，舀入豆油烧热，放入葱段姜片煸炒出香味
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        再将羊肉焖至5分钟，再放入萝卜，酱油，煸炒呈红色即成。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/b42762c7d2a2845b39902ec1d6547407/0/0/w_19rr07r8op.swf-albumId=1320836309-tvId=1320836309-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
