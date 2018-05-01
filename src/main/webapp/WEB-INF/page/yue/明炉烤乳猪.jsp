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
                    <p>明炉烤乳猪，又名烧乳猪。早在西周时代已列为“八珍”之一，那时称为“炮豚”，即烤乳猪。在《齐民要术》一书中也记有烤乳猪的制作方法，并说它“色同琥珀，又类真金，入口则消，壮若凌雪，含浆膏润，特异凡常也”。清康熙时，曾为宫廷名菜，成为“满汉全席”中的一道主要菜肴。直到民国初期山东还经营此菜。后在广州和上海盛行，成为最著名的广东名菜。现今“烧乳猪”为广州和港澳地区许多著名菜馆的首席名菜，深受中外顾客欢迎。每逢清明时节，必是烤乳猪的畅销季节。皆因广州人喜好在清明节时用烧猪来拜祭先人。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>净乳猪 <p>1只(约5-6千克) </p></li>
           姜汁酒50克、米醋500克，大红浙醋100克，麦芽糖50克，高度白酒150克，植物油100克
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>大葱丝 <p>50克 </p></li>
            <li>薄饼 <p>500克 </p></li>
            <li>柱侯酱 <p>1/2瓶 </p></li>
            <li>海鲜酱 <p>1/2瓶 </p></li>
            <li>白芝麻酱 <p>1/3瓶 </p></li>
            <li>花生酱 <p>1/3瓶 </p></li>
            <li>沙茶酱 <p>1/3瓶 </p></li>
            <li>南乳 <p>2小块 </p></li>
            <li>盐 <p>4茶匙 </p></li>
            <li>糖<p>100克 </p></li>
            <li>五香粉 <p>1/5茶匙 </p></li>
            <li>蒜茸汁 <p>5茶匙 </p></li>
            <li>姜汁酒 <p>50克 </p></li>
            <li>米醋<p>500克  </p></li>
            <li>大红浙醋 <p>100克 </p></li>
            <li>麦芽糖 <p>50克</p></li>
            <li>高度白酒 <p>150克</p></li>
            <li>植物油 <p>100克</p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将猪宰杀，去毛，洗净，开大膛，去骨，内脏，丛腔内将骨劈开使之能平摊起来，去脑。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        .取掉第三根肋骨和扇骨，在臀部内侧肉厚处划上若干刀以方便入味。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        .用五香粉，八角，盐，糖均匀涂抹内脏，将内脏在通风处晾干，再将豆酱，红豆腐乳，芝麻酱，汾酒，蒜泥，白糖调匀，涂抹内膛。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        上铁叉，先清水，后沸水洗净猪皮上的油污，再用麦芽糖，白醋，熏醋，糯米酒调匀烧溶的糖醋汁涂一次。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        将腌制好的小猪放入长形木炭炉内，先烤内膛半熟，将前后腿的内膛用木条横着撑开，并再烤，顺序是先烤头，臂，烤红后涂抹花生油慢慢烤的大红为止。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        烤好后，从耳背后和尾部划一刀，再从横切口两端从前到后各划一刀，使其形成一长方形的皮。
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        再把长方形的皮顺划三刀，使其成为四个等份的长条，然后逐条篇下来。每条横切8块，共32块。上席时配以千层饼，酸菜，甜面酱。
    </div>

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
