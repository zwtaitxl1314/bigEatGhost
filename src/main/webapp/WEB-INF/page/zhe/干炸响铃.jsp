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
                    <p>干炸响铃属浙江名菜，因腐皮薄如蝉翼，成菜食时脆如响铃，故名。该菜选用豆腐皮卷入精细肉末，切成寸段，油炸而成。色泽黄亮，鲜香味美。1956年，被认定为36种杭州名菜之一。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>豆腐皮 <p>4张 </p></li>
            <li>肉末 <p>200g </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>盐 <p>适量 </p></li>
            <li>葱 <p>适量 </p></li>
            <li>料酒 <p>适量 </p></li>
            <li>生粉 <p>适量 </p></li>
        </ul>
    </fieldset>



    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        准备好肉末、葱花、盐、料酒、生粉等
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        把葱花、盐、料酒倒入肉末拌匀成肉馅。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        把半张豆腐皮放入温水中浸湿，等稍软些就取出来平放在台面上，放上肉馅
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        把豆腐皮慢慢卷起来，最后抹上生粉卷好
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        放入蒸锅内，用开水蒸5分钟就关火。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        把凉透的响铃切成自己喜欢的长度，放油锅里炸
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        出锅干炸响铃
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed id='v_player_cctv' width='960' height='540' flashvars='adCalls=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D265%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Da8f5d8e9264d4c84d1f05d973627cb20%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D266%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Da8f5d8e9264d4c84d1f05d973627cb20%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D267%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Da8f5d8e9264d4c84d1f05d973627cb20%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D268%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Da8f5d8e9264d4c84d1f05d973627cb20&adAfter=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D271%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Da8f5d8e9264d4c84d1f05d973627cb20&adPause=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D274%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Da8f5d8e9264d4c84d1f05d973627cb20&adBanner=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D276%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3Da8f5d8e9264d4c84d1f05d973627cb20&videoId=20100311100408&filePath=&isAutoPlay=true&url=http://tv.cntv.cn/video/C10405/a8f5d8e9264d4c84d1f05d973627cb20&tai=tv&configPath=http://js.player.cntv.cn/xml/config/outside.xml&widgetsConfig=http://js.player.cntv.cn/xml/widgetsConfig/common.xml&languageConfig=&hour24DataURL=VodCycleData.xml&outsideChannelId=channelBugu&videoCenterId=a8f5d8e9264d4c84d1f05d973627cb20' allowscriptaccess='always' allowfullscreen='true' menu='false' quality='best' bgcolor='#000000' name='v_player_cctv' src='http://player.cntv.cn/standard/cntvOutSidePlayer.swf' type='application/x-shockwave-flash' lk_mediaid='lk_juiceapp_mediaPopup_1257416656250' lk_media='yes'/>
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
