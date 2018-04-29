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
            <legend>功效</legend>
            <ul>
                <li>
                    <p>1. </p>
                    <p>2. </p>
                    <p>3. </p>
                    <p>4. </p>
                    <p>5. </p>
                    <p>6. </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>小金鱼<p>300克  </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>白胡椒粉 <p>少许 </p></li>
            <li>料酒 <p>适量 </p></li>
            <li>白糖<p>3勺 </p></li>
            <li>醋 <p>3勺 </p></li>
            <li>酱油 <p>2勺 </p></li>
            <li>葱花 <p>适量 </p></li>
            <li>盐<p>少量  </p></li>
            <li>蒜未 <p>适量 </p></li>
            <li>姜丝 <p>思量 </p></li>
            <li>干辣椒 <p>七个 </p></li>
            <li>番茄酱 <p>一勺半 </p></li>
            <li>花椒<p>九颗  </p></li>
            <li>淀粉 <p>一勺 </p></li>
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
        鱼，洗净备用
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        切好备料
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        锅内放入油，花椒烧至八成热下入鱼
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        炸至金黄，也可以炸两遍

    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        锅内留底油，放入辣椒番茄酱煸炒
    </div>

    <div class="practice">
        <div class="recipeStep_num">6</div>
        倒入伴好的调料，和鱼， 搅拌均匀，出锅。
    </div>
    <p class="topic">${comcuisine}的教学视频</p>
    <embed id='v_player_cctv' width='960' height='540' flashvars='adCalls=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D265%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1568e2a9f3cd4b41b11ac0d7148959aa%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D266%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1568e2a9f3cd4b41b11ac0d7148959aa%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D267%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1568e2a9f3cd4b41b11ac0d7148959aa%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D268%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1568e2a9f3cd4b41b11ac0d7148959aa&adAfter=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D271%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1568e2a9f3cd4b41b11ac0d7148959aa&adPause=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D274%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1568e2a9f3cd4b41b11ac0d7148959aa&adBanner=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D276%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1568e2a9f3cd4b41b11ac0d7148959aa&videoId=VIDE100193841442&filePath=&isAutoPlay=true&url=http://tv.cntv.cn/video/C10405/1568e2a9f3cd4b41b11ac0d7148959aa&tai=tv&configPath=http://js.player.cntv.cn/xml/config/outside.xml&widgetsConfig=http://js.player.cntv.cn/xml/widgetsConfig/common.xml&languageConfig=&hour24DataURL=VodCycleData.xml&outsideChannelId=channelBugu&videoCenterId=1568e2a9f3cd4b41b11ac0d7148959aa' allowscriptaccess='always' allowfullscreen='true' menu='false' quality='best' bgcolor='#000000' name='v_player_cctv' src='http://player.cntv.cn/standard/cntvOutSidePlayer.swf' type='application/x-shockwave-flash' lk_mediaid='lk_juiceapp_mediaPopup_1257416656250' lk_media='yes'/>
    <div class="video">

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
