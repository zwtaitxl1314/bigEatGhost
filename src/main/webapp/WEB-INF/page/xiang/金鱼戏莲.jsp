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
                    <p>金鱼戏莲是湖南长沙特色传统名菜，属于湘菜系。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>干鱿鱼 <p> </p></li>
            <li>虾料子 <p> </p></li>
            <li>鲜红椒 <p> </p></li>
            <li>醋 <p> </p></li>
            <li>泡菜 <p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>鸡蛋清 <p> </p></li>
            <li>肉末 <p> </p></li>
            <li>精盐 <p> </p></li>
            <li>水发香菇 <p> </p></li>
            <li>味精 <p> </p></li>
            <li>香菜 <p> </p></li>
            <li>干淀粉 <p> </p></li>
            <li>青豆 <p> </p></li>
            <li>蒜瓣 <p> </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将干鱿鱼去须，碱发好，漂洗干净，在正面的一边剞上十字花刀，另一边切0.3厘米粗的丝，不要切断，再切成4厘米的片，即成金鱼形，置于盘中，加精盐0.5克、干淀粉25克拌匀！将鲜红椒、泡菜、蒜瓣、水发香菇切成米粒丁；味精、干淀粉25克、醋、清水10克兑成汁。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        鸡蛋清搅匀，拌入虾料子内。取小酒杯12个，逐个抹上熟猪油，将鸡蛋清、虾
        料子放入杯内，周围镶入5粒青豆，中间放一粒青豆，上笼蒸2分钟，即成莲蓬，入笼内保温。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        炒锅置旺火 ，放入熟猪油烧至八成热，下鱿鱼氽一下，滑熘至剞刀处卷起捞出。    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        锅内留油50克，放入红椒、泡菜、蒜瓣、水发香菇、肉末、精盐4.5克煸炒入味，下入鱿鱼卷炒匀，倒入兑好的汁子，持锅颠几下，淋入芝麻油出锅，用筷子夹起鱼卷，头朝一个方向摆在盘子的一边，再将制好的莲蓬取出，摆在盘子的一另一边，周围拼上香菜即成！
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/f27e374d517ddb5f6ace92ad3a085d90/0/0/v_19rrm7xq70.swf-albumId=204255001-tvId=510170800-isPurchase=0-cnId=12" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
