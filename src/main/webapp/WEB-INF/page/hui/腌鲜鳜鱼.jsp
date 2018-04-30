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
                    <p>腌鲜鳜（guì)鱼又称屯溪臭桂鱼。是徽州传统风味名菜之一，此菜香鲜透骨，鱼肉酥烂，风味独特。成名已有百多年历史，每至重阳节桂鱼上市，人们都以一尝此鱼为快事。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>鳜鱼 <p>700克 </p></li>
            <li>猪肋条肉 <p> 35克</p></li>
            <li> 青蒜<p> 20克</p></li>
            <li> 冬笋<p>35克 </p></li>
        </ul>
    </fieldset>

    调料：、 、  、、 、 、
    制作方法：

    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li> 酱油<p>30克 </p></li>
            <li>菱角粉 <p>6克 </p></li>
            <li>姜<p>15克  </p></li>
            <li>白砂糖 <p>5克 </p></li>
            <li>猪油（炼制） <p>70克 </p></li>
            <li>黄油 <p>10克 </p></li>
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
        将鳜鱼去鳞、鳃，去内脏洗净，两面刻斜花刀，晾干；
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        冬笋去皮，洗净，煮熟，切片；
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        青蒜择洗干净，切段；
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        将猪肉洗净，切片备用；
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        锅放火上，下猪油用大火烧七成热，将鳜鱼放入炸至呈淡黄色，倒入漏勺沥净油；
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        锅内留少许底油，将猪肉、笋片放入锅内略煸；
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        再将鳜鱼放入，加酱油、姜末、酒、糖和鸡汤350毫升烧开，即转小火继续烧；
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        烧至汤汁将干时，撒入青蒜段，跟着调水菱角粉下锅勾薄芡，淋少许猪油即成。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="https://imgcache.qq.com/tencentvideo_v1/playerv3/TPout.swf?max_age=86400&v=20161117&vid=b0339k2grgr&auto=0" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
