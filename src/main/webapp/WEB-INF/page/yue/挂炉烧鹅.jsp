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
                    <p>　在清朝后期，广东的烧鹅已经声名远扬，如今广州大街小巷的烧味店都少不了它的身影。烧鹅之“鹅”最好选用个头小的清远黑鬃鹅，肉质细嫩，味道鲜美，以特制的酱料涂匀光鹅全身后，以烧鹅环吊起，放入微火的烧烤炉中烧至表皮干紧，然后风干。
                        　　 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>光黑棕鹅 <p>1只 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>砂糖 <p>500克 </p></li>
            <li>盐 <p>350克 </p></li>
            <li>味精 <p>50克 </p></li>
            <li>黑椒粉 <p>15克 </p></li>
            <li>五香粉 <p>30克 </p></li>
            <li>甘草粉 <p>20克 </p></li>
            <li>八角粉 <p>20克 </p></li>
            <li>沙姜粉 <p>20克 </p></li>
            <li>桂皮粉 <p>20克 </p></li>
            <li>香菜粉 <p>20克 </p></li>
            <li>蒜蓉粉 <p>20克</p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>特点</legend>
        <ul>
            <li> 色泽紫红,皮脆肉嫩,甘香味浓,蘸甜酱食,具有潮汕风味。</li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将8到10斤重的鹅宰杀干净。（一般去市场杀。）准备鹅尾针1支，烧鹅勾一只。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        将鹅盐、味料倒入鹅腔内，均匀插内腔。厚部位居多。再放入鹅酱。放入其他料头和料酒。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        用鹅尾针将鹅屁股入料口封住。以免酱汁外流。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        从鹅颈放血处插入充气管。将鹅体充气。至鹅身表皮发张，鹅表皮变白色即可。（充气，不要充太满以免造成破裂）
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        烧锅下水煮开，放入胀气的鹅，稍烫皮，鹅表皮收缩即可。（切勿让皮出油，否则你会后悔的（出油不上色的，作用是利用热水所毛孔收缩不给气流出去。））
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        取出烫皮的鹅体，投入冷水中，稍过冷河。取出用烧腊勾挂起待沥干水分。

        用烧腊勾从鹅体亦下处部位勾入鹅腔，将鹅头转过来夹在烧腊勾中。夹住鹅颈以免漏气。
        9

        取糖皮水（脆皮水）由鹅头淋下，淋全身。取一张白纸垫在鹅颈处，避免污血流下影响表皮。
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        将鹅挂于通风透凉处或空调房，用牛角扇风干表皮。热天的时候一定要注意通风，否则会臭掉的，最好放空调房）皮越干烧制出来就越脆。
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        点火预温。当炉温温度达到内内温250的时候就可以下炉烧了。先烧被部，一定要把鹅放置中线，否则表皮颜色不一致（温度要看鹅的只数，天气而定）
    </div>
    <div class="practice">
        <div class="recipeStep_num">9</div>
        将风干的鹅挂入预温的烧炉中。盖上盖子烧鹅,烧至鹅身红色，鹅眼突出，鹅体中间起缝。变轻即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/5ae2f5891b63ab184f5678c165491776/0/0/w_19rts9uukh.swf-albumId=8474097709-tvId=8474097709-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
