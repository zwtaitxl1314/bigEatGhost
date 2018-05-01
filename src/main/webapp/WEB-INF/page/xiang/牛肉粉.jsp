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
                    <p>牛肉粉是一道菜品，制作原料主要有牛肉、泡酸莲白、酸萝卜等。是一种抚州各地都有而且是家喻户晓，人人皆知的风味美食，风味独特。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>新鲜黄牛肉 <p>1000克 </p></li>
            <li>米粉 <p> 适量</p></li>
            <li>泡酸莲白 <p>适量 </p></li>
            <li>酸萝卜 <p> 适量</p></li>
            <li>酸菜 <p>适量 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>葱 <p>适量 </p></li>
            <li>花椒 <p>适量 </p></li>
            <li>八角 <p> 适量</p></li>
            <li>山奈 <p> 适量</p></li>
            <li>草果 <p>适量 </p></li>
            <li>沙仁 <p>适量 </p></li>
            <li>香叶 <p>适量 </p></li>
            <li>茴香 <p>适量 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        黄牛肉洗净切成大块下锅煮，锅开后反复打去血沫，用纱布把适量的花椒、八角、山奈、草果、沙仁、香叶、茴香、桂皮、干辣椒（整个）包好还有姜块一起放进锅中和牛肉一起
        小火炖，炖至牛肉基本上熟了捞出一半切成1厘米见方大小的肉丁，如有牛筋也切成丁一起再放到另一个锅中继续炖，直至炖酥烂为止，另一半待凉透了（4个小时以上）切成3厘米宽5厘米长的肉片备用。牛板油炼成牛油单独用容器盛出。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        米粉，用清水漂过；糊辣椒面，用干辣椒烤脆微糊打成面（不要太碎）；泡酸莲白，食用时从泡菜坛里捞出切成小片用小碟装好当做配菜；酸菜，切成1.5-2厘米长段；芜荽节成8毫米左右的段；
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        食用时按下列顺序操作：米粉（一般一碗牛肉粉约150克-200克）放入开
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        水锅中烫透，捞入汤碗里，在米粉上铺上牛肉片（25克），盖上炖熟的牛肉丁（25克）或牛筋丁，放上适量的酸菜，加上少许牛油，最后浇上滚烫的原汤，洒上芫荽节即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed id='v_player_cctv' width='960' height='540' flashvars='adCalls=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D265%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Dd867ee34707747d8a30266cbac8f259f%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D266%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Dd867ee34707747d8a30266cbac8f259f%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D267%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Dd867ee34707747d8a30266cbac8f259f%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D268%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Dd867ee34707747d8a30266cbac8f259f&adAfter=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D271%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Dd867ee34707747d8a30266cbac8f259f&adPause=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D274%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Dd867ee34707747d8a30266cbac8f259f&adBanner=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D276%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Dd867ee34707747d8a30266cbac8f259f&videoId=VIDE100222746858&filePath=&isAutoPlay=true&url=http://tv.cntv.cn/video/C10405/d867ee34707747d8a30266cbac8f259f&tai=tv&configPath=http://js.player.cntv.cn/xml/config/outside.xml&widgetsConfig=http://js.player.cntv.cn/xml/widgetsConfig/common.xml&languageConfig=&hour24DataURL=VodCycleData.xml&outsideChannelId=channelBugu&videoCenterId=d867ee34707747d8a30266cbac8f259f' allowscriptaccess='always' allowfullscreen='true' menu='false' quality='best' bgcolor='#000000' name='v_player_cctv' src='http://player.cntv.cn/standard/cntvOutSidePlayer.swf' type='application/x-shockwave-flash' lk_mediaid='lk_juiceapp_mediaPopup_1257416656250' lk_media='yes'/>
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
