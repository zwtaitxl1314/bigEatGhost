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
                    <p>
                        水煮肉片（Poached spicy slices of pork），是一道地方新创名菜，起源于自贡，发扬于西南，属于川菜中著名的家常菜 [1]  。因肉片未经划油，以水煮熟故名水煮肉片 [2]  。
                        水煮肉片肉味香辣，软嫩，易嚼。吃时肉嫩菜鲜 ，汤红油亮，麻辣味浓，最宜下饭，为家常美食之一。特色是“麻、辣、鲜、香”。 [3]  其起源于上世纪30年代， 自贡名厨范吉安(1887 -1982年)，创新出风味突出的水煮肉片 [4]  。
                    </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>猪肉 <p> </p></li>
            <li>豆芽 <p> </p></li>
            <li>金针菇 <p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>葱 <p> </p></li>
            <li>花椒 <p> </p></li>
            <li>辣椒 <p> </p></li>
            <li>豆瓣酱 <p> </p></li>
            <li>蒜 <p> </p></li>
            <li>老干妈辣椒酱 <p> </p></li>
            <li>淀粉 <p> </p></li>
            <li>酱油 <p> </p></li>
            <li>胡椒粉 <p> </p></li>
            <li>鸡蛋<p>一个  </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>小诀窍</legend>
            <p>记住加些老干妈辣椒酱，这样炒出的油红红的，颜色很好看。用火锅红油也可以，但总感觉买的火锅料没那么健康。  </p>
            <p>2、肉片在水里煮的时间不要过长，要不然就不嫩了。 </p>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        猪肉切薄片，用淀粉、酱油、胡椒粉、一个蛋清和少许盐，腌制半小时。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        豆芽和金针菇炒熟，铺在一个较大的盆子里。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        烧热油，放入辣椒、花椒、豆瓣酱、老干妈辣椒酱、蒜瓣等调料，炒出香味后加入适量水。不喜欢吃麻的可以少放些花椒调味。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        待水烧开后，把腌制的肉片倒入水中，2-3分钟肉片熟后，加盐关火。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        把煮好的肉片倒入铺着豆芽的碗中，撒入切好的葱花。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        锅中重新烧一些油，油热后，用铲勺舀入步骤（4）洒满葱花的水煮肉片中即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed id='v_player_cctv' width='960' height='540' flashvars='adCalls=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D265%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D492d2e41819a40eca3b229a92ce04c8f%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D266%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D492d2e41819a40eca3b229a92ce04c8f%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D267%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D492d2e41819a40eca3b229a92ce04c8f%7B%21@%23%7Dhttp%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D268%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D492d2e41819a40eca3b229a92ce04c8f&adAfter=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D271%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D492d2e41819a40eca3b229a92ce04c8f&adPause=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D274%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D492d2e41819a40eca3b229a92ce04c8f&adBanner=http%3A//galaxy.bjcathay.com/s%3Fz%3Dcathay%26c%3D276%26op%3D1%26_page_group%3Ddianbo%26_subsite%3Dtv%26_CHANNEL%3D1%26_sorts%3D1%26_maima1%3D23%26_maima2%3D02%26_maima3%3D01%26_maima4%3D00%26_pindao%3DzCCTV-1_E9_AB_98_E6_B8_85%26_shipinji%3Dz_E5_A4_A9_E5_A4_A9_E9_A5_AE_E9_A3_9F%26_shichang%3D4%26videoid%3D492d2e41819a40eca3b229a92ce04c8f&videoId=VIDE100175477860&filePath=&isAutoPlay=true&url=http://tv.cntv.cn/video/C10405/492d2e41819a40eca3b229a92ce04c8f&tai=tv&configPath=http://js.player.cntv.cn/xml/config/outside.xml&widgetsConfig=http://js.player.cntv.cn/xml/widgetsConfig/common.xml&languageConfig=&hour24DataURL=VodCycleData.xml&outsideChannelId=channelBugu&videoCenterId=492d2e41819a40eca3b229a92ce04c8f' allowscriptaccess='always' allowfullscreen='true' menu='false' quality='best' bgcolor='#000000' name='v_player_cctv' src='http://player.cntv.cn/standard/cntvOutSidePlayer.swf' type='application/x-shockwave-flash' lk_mediaid='lk_juiceapp_mediaPopup_1257416656250' lk_media='yes'/>
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
