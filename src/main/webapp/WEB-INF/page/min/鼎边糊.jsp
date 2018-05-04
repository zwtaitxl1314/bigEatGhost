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
            <legend>简介</legend>
            <ul>
                <li>
                    <p>鼎边糊又称锅边糊，福建特色著名佳点，风味小吃，与生煎包、油饼等配食，为当地早点佳品，一直流传到海南、台湾等地。凡在福州生长或长期客居福州的人无不爱吃。离乡旅居海外的福州人在异国他乡一听见“鼎边糊”三字，也会感到好象亲眼看到了家乡的“倩影”，成为恋祖爱乡的风味小吃。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>大米 <p>300克 </p></li>
            <li>生蚝<p>100克  </p></li>
            <li>干香菇 <p>数朵 </p></li>
            <li>虾米 <p>10克 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>地瓜淀粉 <p>20克 </p></li>
            <li>高汤 <p> 1.5升 </p></li>
            <li>香葱 <p>1小撮 </p></li>
            <li>食盐 <p>适量 </p></li>
            <li>食用油 <p>适量 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将大米洗净后，加水以没过米为宜，浸泡一晚上
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        大米经过一夜的浸泡，重量会从300克增加至400克，将浸泡好的大米倒进料理机中，加200克清水，反复研磨成米浆
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        将除大米以外的材料备齐，将干香菇去蒂，洗净，泡发以后切成小丁备用
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        鲜生蚝洗净，加入20克淀粉抓匀。
        香葱洗净，切末，并区分葱白，葱绿放置在盘中，虾米洗净备用
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        锅内倒入少量食用油
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        油热以后加入切好的葱白，炒香。待葱白炒出香味，加入虾米继续翻炒，加入香菇丁继续翻炒，加入500毫升的大骨高汤，待锅中汤沸，再煮2-3分钟即可装碗备用，这就是煮好的底汤
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        将锅洗净，取1/3底汤，倒入锅中。待底汤沸后，再加入300毫升的大骨高汤
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        待锅中汤再次沸，加入1/3裹好淀粉浆的鲜海蛎
    </div>
    <div class="practice">
        <div class="recipeStep_num">9</div>
        待锅中汤再次沸、用刷子沾取少量食用油刷在锅壁上
    </div>
    <div class="practice">
        <div class="recipeStep_num">10</div>
        勺适量米浆快速、均匀的浇在锅壁上
    </div>
    <div class="practice">
        <div class="recipeStep_num">11</div>
        待面片半熟，面片会呈现与锅壁脱离的状态
    </div>
    <div class="practice">
        <div class="recipeStep_num">11</div>
        轻轻用锅铲刮一下，面片就会轻松落入锅内，反复2次，起锅前加入少量盐调味，装碗后撒上葱绿末即可
    </div>
    <div class="practice">
        <div class="recipeStep_num">12</div>
        装入碗中，搭配虾酥。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="400" height="325"><param name="movie" value="http://v.ifeng.com/include/exterior.swf?guid=276df2c6-e080-453d-b43e-cf560df3b6a1&pageurl=http://www.ifeng.com&fromweb=other&AutoPlay=false" /><param name="quality" value="high" /><param name="allowScriptAccess" value="always" /><embed src="http://v.ifeng.com/include/exterior.swf?guid=276df2c6-e080-453d-b43e-cf560df3b6a1&pageurl=http://www.ifeng.com&fromweb=other&AutoPlay=false" quality="high"  allowScriptAccess="always" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="400" height="325"></embed></object>
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
