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
                    <p>叫化童鸡，浙江杭州传统名菜，又称黄泥煨鸡。叫化童鸡由来已久，至今已有300多年历史了。叫化童鸡的由来也有多种版本，但制作原理基本相同。现如今，此菜享有很高的盛誉。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>新母鸡1只 <p>约1500克 </p></li>
            <li>鲜虾仁 <p>50克 </p></li>
            <li>火腿丁 <p>20克 </p></li>
            <li>香菇丁 <p>25克 </p></li>
            <li>猪腿肉 <p>75克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>姜 <p> 20克</p></li>
            <li>葱 <p> 25克</p></li>
            <li> 绍酒<p> 80克</p></li>
            <li> 川冬菜<p>30克 </p></li>
            <li>白糖<p>45克  </p></li>
            <li>酱油 <p>80克 </p></li>
            <li>味精 <p>1克 </p></li>
            <li> 盐<p>2克 </p></li>
            <li> 熟猪油<p> 25克</p></li>
            <li> 猪网油<p>60克 </p></li>
            <li> 鲜荷叶<p>2张 </p></li>
            <li> 花椒盐<p>10克 </p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将鸡宰杀、退毛，在鸡左腋下开口，取出内脏，洗净晾干，拍断鸡脚、翅膀、腿骨、颈骨，用绍酒50克、酱油50克、葱末和姜汁各少许腌20分钟。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        将鸡肫、肝切成片，葱、川冬菜、猪肉切成丝，加酱油、绍酒、白糖、味精炒熟收干卤汁后，塞入鸡肚内。再将葱末拌以少许熟猪油，搽遍鸡身。然后用猪网油将鸡包好，再用荷叶包好，用小绳扎紧。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        将封酒甏的泥敲碎加精盐、黄酒和水拌成厚糊，平摊在湿布上，把包扎好的鸡放在泥中间，再将湿布拎起，使泥牢固贴在鸡上，然后换用废报纸包没，并在泥面上戳二三个小孔。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        将泥团鸡（腹部朝上）放入烘箱，先用旺火烘烤40分钟取出，用湿泥将小孔涂没，再入烘箱烘烤30分钟后，改用文火煨烤80分钟（必须每隔20分钟翻一次身）至熟。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        食时敲开泥巴，除去小绳和荷叶装盆，连同花椒盐、辣酱油一起上席。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/86a2adde68559cd548a4e4289665c563/0/0/w_19rrolsdf5.swf-albumId=381898909-tvId=381898909-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
