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
                    <p>咕咾肉又称咕噜肉，是广东的一道特色传统名菜，属于粤菜，以甜酸汁及猪肉煮成。咕咾肉作为欧美人士最熟悉的中国菜之一，常见于中国以外的唐人街的餐馆。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>里肌肉 <p> 150公克</p></li>
            <li>苹果 <p>1粒 </p></li>
            <li>青葱 <p> 1支</p></li>
            <li>大蒜<p> 1粒 </p></li>
            <li>红辣椒 <p>1/2条 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>姜 <p> 6公克</p></li>
            <li>太白粉 <p>2大匙 </p></li>
            <li>盐 <p>1公克 </p></li>
            <li>料酒 <p> 1/4小匙</p></li>
            <li>胡椒粉 <p>1/4小匙 </p></li>
            <li>味精<p>1/4小匙  </p></li>
            <li>太白粉 <p>1小匙 </p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        里肌肉洗净，去除肉筋后，切成约2公分的方块，用刀背轻轻拍打，备用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        把调味料A放入碗中搅拌均匀，再将作法1的肉块放入碗中腌约30分钟，备用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        苹果去皮，切成约2公分的方块，泡盐水备用
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        青葱切小段；大蒜、红辣椒、姜各切小片，备用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        太白粉2大匙倒入盘中，将作法2的肉块放入盘中均匀地沾裹上太白粉后，将肉块搓揉成圆柱状。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        起一油锅，将油烧热至约130℃，放入作法5的肉块油炸约3分钟后起锅，备用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        另起一锅，放入2大匙油烧热后，放入作法4的材料一起爆香后，加入调味料B拌炒。
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        待作法7的汤汁煮沸后，再加入作法6的肉块与作法3的苹果块拌炒均匀即完成。
    </div>


    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/8bba60eca3887f0e05b089e213bb66c0/0/0/w_19rrb9i77d.swf-albumId=653033109-tvId=653033109-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
