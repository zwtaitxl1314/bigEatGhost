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
            <legend>功效</legend>
            <ul>
                <li>
                    <p>荔枝肉是福建省福州、莆田等地特色传统名菜，属于闽菜。已有二三百年历史。因原料中有白色的荸荠和切成十字花刀的猪肉，烹调后因外形型似荔枝而得名。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>猪肉(瘦) <p>300克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>荸荠<p>100克  </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>调料</legend>
        <ul>
            <li>大葱<p>15克  </p></li>
            <li>红糟<p>50克  </p></li>
            <li>白醋<p>10克  </p></li>
            <li>酱油<p>10克  </p></li>
            <li>白砂糖<p>15克  </p></li>
            <li>大蒜<p>5克  </p></li>
            <li>淀粉(蚕豆)<p>10克  </p></li>
            <li>味精<p>3克  </p></li>
            <li>花生油<p>50克  </p></li>
            <li>香油<p>5克  </p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将精肉洗净，切成10×5×1 厘米的厚片，再剖上十字花刀，然后再切为3片。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        马蹄（荸荠）切小块，每粒2～3 块。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        马蹄块与肉片一起用湿淀粉和剁细的红糟抓匀。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        葱去根须，洗净，取葱白切马蹄葱。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        酱油、白醋、白糖、味精、上汤、湿淀粉调卤汁待用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        锅置旺火上，下花生油八成热时倒入上浆的肉片和马蹄，用勺扒散，待肉剖花成荔枝状时，用漏勺捞起，沥干油。
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        锅留余油，先下蒜末、葱白，煸一下再入卤汁烧沸，随即倒入荔枝肉和马蹄块翻炒几下即成。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="https://imgcache.qq.com/tencentvideo_v1/playerv3/TPout.swf?max_age=86400&v=20161117&vid=e0531izyzr2&auto=0" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
