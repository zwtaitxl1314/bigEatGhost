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
        <img src="${pageContext.request.contextPath}/image/川菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>辣子鸡丁，特色传统菜肴，属川菜系，是四川川东一道著名的江湖风味菜，因缘于歌乐山而故名。干辣椒不是主料胜似主料，充分体现了江湖厨师“下手重”的特点。经巴国布衣厨师精心改良后其口味更富有特色，成菜色泽棕红油亮，质地酥软，麻辣味浓。咸鲜醇香，略带回甜，是一款食者啖之难忘的美味佳肴。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>干二荆条辣椒 <p>80g </p></li>
            <li>鸡丁 <p>200g </p></li>
            <li>干辣椒面 <p>10g </p></li>
            <li>花椒粒 <p>10g </p></li>
            <li> <p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>老姜 <p> </p></li>
            <li>大蒜 <p> </p></li>
            <li>白糖 <p> </p></li>
            <li>盐 <p> </p></li>
            <li>红油 <p> </p></li>
            <li>熟芝麻 <p> </p></li>
            <li>葱 <p> </p></li>
            <li>酱油 <p> </p></li>
            <li>料酒 <p> </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>小诀窍</legend>
        <p>
            1.做川菜时经常用到菜籽油，所以菜籽油一定要煎熟，不然就会有生油的味道，很多人接受不了</p>
        <p>  2.辣椒选择二荆条干辣椒，基本不辣，但是辣椒味很香</p>
        <p>  3.炒辣椒的时候可以根据个人口感选择糊香味还是酥香味的辣椒，糊香味就是辣椒炒的时间比较长，成了糊辣壳了（重庆的一种叫法）；不喜欢糊</p>

    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将仔鸡剁成小块，用料酒、姜片、葱结、盐、酱油腌制30分钟
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        锅内倒油烧热至7成时，将鸡丁下锅炸至棕黄色时捞出沥干油待用
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        锅内留少许底油，将干二荆条辣椒剪成段投入锅中，花椒粒爆香至微棕黑色时，下入姜片、蒜瓣、辣椒粉炒香，然后下入炸好的鸡丁，加白糖、适量盐调味
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        最后淋上红油，撒上熟芝麻即可
    </div>

    <p class="topic">${comcuisine}的教学视频</p>
    <div class="video">
        <embed id='v_player_cctv' width='960' height='540' flashvars='adCalls=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D265%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1b9d9e5e73934c9b982442365caffae2%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D266%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1b9d9e5e73934c9b982442365caffae2%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D267%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1b9d9e5e73934c9b982442365caffae2%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D268%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1b9d9e5e73934c9b982442365caffae2&adAfter=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D271%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1b9d9e5e73934c9b982442365caffae2&adPause=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D274%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1b9d9e5e73934c9b982442365caffae2&adBanner=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D276%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D1b9d9e5e73934c9b982442365caffae2&videoId=VIDE100237335666&filePath=&isAutoPlay=true&url=http://tv.cntv.cn/video/C10405/1b9d9e5e73934c9b982442365caffae2&tai=tv&configPath=http://js.player.cntv.cn/xml/config/outside.xml&widgetsConfig=http://js.player.cntv.cn/xml/widgetsConfig/common.xml&languageConfig=&hour24DataURL=VodCycleData.xml&outsideChannelId=channelBugu&videoCenterId=1b9d9e5e73934c9b982442365caffae2' allowscriptaccess='always' allowfullscreen='true' menu='false' quality='best' bgcolor='#000000' name='v_player_cctv' src='http://player.cntv.cn/standard/cntvOutSidePlayer.swf' type='application/x-shockwave-flash' lk_mediaid='lk_juiceapp_mediaPopup_1257416656250' lk_media='yes'/>
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
