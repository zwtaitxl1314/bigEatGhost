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
        <img src="${pageContext.request.contextPath}/image/徽菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>蛏干烧肉是一道安徽徽州特色传统名菜。口味酱香味色泽酱红，质地酥烂，猪肉渗蛏鲜，蛏干增脂香。“蛏干”是竹蛏的干制品。肉味鲜香，含蛋白质很高，营养丰富。主要功效是产后恢复调理 滋阴调理 清热解毒调理。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>猪肋条肉（五花肉） <p>350克 </p></li>
            <li> 蛏干<p>150克 </p></li>
            <li> <p> </p></li>
            <li> <p> </p></li>
            <li> <p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>冬笋 <p>50克 </p></li>
            <li>小葱 <p>3克 </p></li>
            <li>姜 <p> 2克</p></li>
            <li>盐 <p> 3克</p></li>
            <li>酱油 <p>30克 </p></li>
            <li>白砂糖 <p>5克 </p></li>
            <li>黄酒 <p> 15克</p></li>
            <li>淀粉（玉米） <p>5克 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将蛏干洗净放碗内，加入清水淹没，上笼蒸熟取出；
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        把蛏干捞起放在清水中，用筷子搅动，淘尽泥沙和粪杂；
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        蒸蛏干的原汁，过滤后待用；
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        冬笋去皮，洗净，煮熟，切片；
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        选用带皮的猪五花肉刮洗净，切成1 厘米厚的长方片放在锅中，加入水与肉平，用旺火烧煮；
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        待烧开后，撇去浮沫，改用小火烧至五成烂时，加入姜末、白糖、黄酒、酱油、精盐、笋片、蛏干和原汁；
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        继续烧至烂时，用湿淀粉调稀勾芡，起锅装盘，撒上葱末即成。
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
