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
        <img src="${pageContext.request.contextPath}/image/湘菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>祖庵鱼翅又名细煨鱼翅，由民国国民政府主席谭延闿的家厨曹敬臣所创，是湖南省的地方传统名菜之一，属于湘菜中重要菜系组庵湘菜的名肴。
                        该菜将红汤煨鱼翅的方法改为与鸡肉、猪肘肉、鱼翅同煨。这样使配料中的蛋白质等营养物质融渗到鱼翅中，改变了传统烹制之汤鲜美而翅寡味的现象，具有软糯柔滑、纯厚鲜美的独特风味</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>发好的鱼翅 <p>500克 </p></li>
            <li>猪肘肉 <p>500克 </p></li>
            <li>老母鸡肉 <p>500克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>干贝 <p>50克 </p></li>
            <li>葱结 <p>50克 </p></li>
            <li> 姜片<p>50克 </p></li>
            <li>料酒 <p> 40克</p></li>
            <li> 酱油<p>15克 </p></li>
            <li>精盐 <p>3克 </p></li>
            <li>味精 <p>0.5克 </p></li>
            <li>油 <p>50克 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将母鸡宰杀后，开膛去内脏并洗净，斩成大块；
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        猪肘刮洗干净后也斩成块，和鸡块一起下冷水锅焯水，焯水后捞出洗净血污待用；干贝扳去边上老筋，洗净后放入葱段、姜片、绍酒上笼蒸透待用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        取大瓦钵一只，用竹篱子垫底，放入用白纱布包好的鱼翅，加入一半鸡块，再加绍酒、葱段、姜片、清水，在旺火上烧开后，撇净浮沫然后转用小火煨煮120分钟左右。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        从大瓦钵内取出鱼翅包，瓦钵内的所有原料不用，然后再铺上猪肘，加入绍酒、姜片、葱段、另一半鸡块，再加入干贝和干贝汤，重新放入鱼翅包，加盐和清水，用盘盖上，在旺火上烧开，再转用微小火煨约5个小时左右，直至鱼翅软烂、浓香、柔软为止。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        然后端钵离火，去掉鸡块、猪肘和葱姜，将鱼烧成浓汁，放入鸡粉，调正口味，撒上胡椒粉，浇在鱼翅上即成。
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
