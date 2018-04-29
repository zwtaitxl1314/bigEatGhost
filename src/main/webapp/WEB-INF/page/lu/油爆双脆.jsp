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
        <img src="${pageContext.request.contextPath}/image/鲁菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>油爆双脆属鲁菜，是山东，山东地区特色传统名菜。烹饪以爆菜油爆为主油。正宗的油爆双脆的做法极难，对火候的要求极为苛刻，欠一秒钟则不熟，过一秒钟则不脆，是中餐里制作难度最大的菜肴之一。色、香、味、形兼备的特色美食。在袁枚的《随园食单》和梁实秋的《雅舍谈吃》中对此菜均有高度赞誉。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>猪肚<p> 200克</p></li>
            <li>猪腰子 <p>250克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            () ()() () ()()()() ()() ()
            <li>大葱 <p>10克 </p></li>
            <li>大蒜 <p>5克 </p></li>
            <li>生抽 <p>5克 </p></li>
            <li>白砂糖 <p> 10克</p></li>
            <li>醋 <p>20克 </p></li>
            <li>淀粉 <p>10克 </p></li>
            <li>味精 <p>3克  </p></li>
            <li> 香油<p>10克 </p></li>
            <li> 花椒<p> 3克</p></li>
            <li> 花生油<p>50克 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>口味</legend>
        <ul>
            <li> </li>
            <li> </li>
            <li> </li>
            <li> </li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        猪肚尖剔净油、内膜，剞十字花刀，每只肚尖切6 块，猪腰剖2片割去筋膜，放清水中加花椒浸泡1 小时去臊昧后剞十字花刀，每三刀切1 块；
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        锅置旺火上，下花生油烧八成热时，肚尖用少许干淀粉抓匀一下，下油锅过油，再腰花过油，迅速倒入漏勺沥干油；
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>

    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        酱油、白糖、米醋、香油、味精、湿淀粉调匀成卤汁；
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        锅留余油，回置旺火上，先用葱段、蒜米煸出香味，倒入卤汁，烧沸后，倒入肚尖、猪腰，翻颠二下即成。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/9ec939fb9f3b7233620e61170f71145b/0/0/w_19rruhyktx.swf-albumId=4255027609-tvId=4255027609-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
