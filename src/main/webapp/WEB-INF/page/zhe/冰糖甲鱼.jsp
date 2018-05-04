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
        <img src="${pageContext.request.contextPath}/image/浙菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>冰糖甲鱼是浙江宁波地区最著名传统菜肴。冰糖甲鱼的另一别称为“独占鳌头”，则是从甬江状元楼首创的，是宁波十大名菜之一。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>甲鱼 <p> 750克</p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>酱油<p>30克 </p></li>
            <li> 小葱<p>10克 </p></li>
            <li>冰糖 <p>30克 </p></li>
            <li>姜<p> 5克</p></li>
            <li> 炼制猪油<p> 40克</p></li>
            <li> 黄酒<p>25克 </p></li>
            <li> 花生油<p>35克 </p></li>
            <li>盐 <p>2克 </p></li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        甲鱼仰放，待头伸出，迅速用手指掐住其颈，用力拉出，用力齐背壳延颈骨，排尽血后入90℃热水中浸泡；
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        当甲鱼壳上泛起白衣时捞出，在冷水中清除腹部、腿上和裙边的白膜，用洗帚刷掉背壳黑衣；
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        再开肚去内脏，斩去头尾、爪尖，然后均匀地斩成8块；
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        将甲鱼块放入锅中焯水，捞出用清水洗净，并撕掉血筋、备块和黄油；
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        炒锅烧热，用油滑锅，加入花生油，烧至八成热，放入葱结、姜片爆香，推入甲鱼块（肚朝下），烹入黄酒珈盖稍焖；
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        再加入清水750毫升，烧开3分钟后，改用小火盖焖25分钟左右；
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        待鱼块柔软无弹性时，加入红酱油、精盐、冰糖、熟猪油，再加盖焖20分钟左右；
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        焖至鱼肉和裙边软糯，随即改用旺火收汁，一面晃锅一面舀起卤汁浇在鱼块上；
    </div>
    <div class="practice">
        <div class="recipeStep_num">9</div>
        待卤汁稠粘浓厚时，淋入熟猪油，再用中火并晃锅使芡油混合，至卤汁呈胶状，淋入熟猪油，晃锅即成。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/4cd42f65dcaedcb6641ce55b33fd8575/0/0/w_19rsdvg6hl.swf-albumId=3014832309-tvId=3014832309-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
