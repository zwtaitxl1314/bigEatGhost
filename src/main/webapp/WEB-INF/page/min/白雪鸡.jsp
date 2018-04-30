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
                    <p>
                        白雪鸡是福建省一道比较有特色和出名的传统佳肴，属于闽菜。鸡在广东的吃法有很多种，比如白切鸡、手撕鸡、玫瑰油鸡、盐焗鸡等。而白雪鸡只是用适当的鸡脯肉，做出来的。
                    </p>
                    <p>白雪鸡造型似梅，质地软嫩，口感非常清香鲜美。 </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>鸡脯肉  <p> </p></li>
            <li>鸭肥膘肉 <p> </p></li>
            <li> <p> </p></li>
            <li> <p> </p></li>
            <li> <p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>赤小豆 <p> 500克</p></li>
            <li>白砂糖 <p>200克 </p></li>
            <li>油菜叶末 <p>10克 </p></li>
            <li>水发冬菇<p>1个  </p></li>
            <li>料酒 <p> 10克</p></li>
            <li>精盐<p> 1.5克 </p></li>
            <li>味精 <p> 1.5克 </p></li>
            <li>细干淀粉 <p>15克 </p></li>
            <li>水淀粉 <p>10克 </p></li>
            <li>白芝麻（焙好） <p>25克 </p></li>
            <li>葱姜水 <p>15克 </p></li>
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
        将鸡脯肉、鸭肥膘肉剔净筋膜，洗净，分别置于干净的丰墩上斩成细茸，用刀分别把鸡茸、鸭茸一层层刮下来，靠砧墩面上带筋的不要，放入瓷盆中，加入少许葱姜水，用竹筷搅匀，然后，加入50克鸡蛋清、1克精盐、料酒和味精，用竹筷3根，向同一方向搅拌，如感觉太稠，仍可稍加些葱姜水，搅拌上劲。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        将熟鸡蛋黄糕切成小梅花瓣25瓣；水发冬菇洗净，去蒂，用刀片去内层的肉，用剪刀剪成梅花的枝干。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        再将鸡蛋清125克放入汤盆里，用竹筷3根不停的使劲向一个方向搅打，直打至竹筷插入鸡蛋清中不倒即好。然后加入少许细干淀粉搅拌均匀。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        用小酱油碟子和30厘米平盘各1个，分别在平盘和碟中抹上10克白鸡油，然后，将拌好的鸡茸分别放在抹好鸡油的盘、碟中，摊平后，上面撒少许细干淀分，随即将打好的鸡蛋清分别抹在盘、碟中的鸡茸上，抹光抹平后，再将火腿末、油菜叶末分别撒在30厘米平盘中的鸡蛋清上，一同入蒸锅上屉约5分钟，打开锅盖，将罐子中的取出，30厘米平盘中的继续蒸3分钟。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        取出后，切成梭子块装盘。同时，用净干布将碟内水分吸干，撒上少许细干淀粉，将切好的冬菇和蛋黄，放在碟子里的白雪鸡上，摆上5朵梅花，红色火腿末点缀花心，上蒸锅冒一下热气，取出，放在半夜好的白雪鸡顶端上。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        炒锅烧热加入鸡汤，0.5克精盐、0.5克味精，烧开去浮沫，加入余下的白鸡油、白芝麻，用水淀粉勾薄芡，烧开，出锅，浇在白雪鸡上，即可。
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
