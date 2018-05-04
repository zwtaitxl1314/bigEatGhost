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
                        棒棒鸡，又名“嘉定棒棒鸡”、“乐山棒棒鸡” [1-3]  。此菜起源于乐山汉阳坝（今为眉山市青神县汉阳镇） [2-3]  ，取用良种汉阳鸡，经煮熟后，用木棒将鸡肉捶松后食用。棒棒鸡是四川特色菜肴。属于川菜中的凉菜，主要食材是鸡肉，其味型属于“怪味”，麻、辣、酸、甜、鲜、咸、香全部味道都具备。
                        它突破传统的小吃瓶颈，适合了现代生活方式的新型餐饮模式，具有口味独特、产品组合新颖、品牌化运营的特点。包融了系列川中熟食经典菜式，集卤、拌、泡等多种烹调手法，有麻辣、五香、泡椒、藤椒、香辣、咸鲜和酱香等系列特色口味，是四川熟食的典型代表。
                    </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>鸡腿 <p>两只 </p></li>

        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>香葱 <p>两颗 </p></li>
            <li>姜片 <p>4片 </p></li>
            <li>花椒 <p>1/2大匙 </p></li>
            <li>盐 <p>1茶匙 </p></li>
            <li>料酒 <p>1大匙 </p></li>
            <li>生抽 <p>2大匙 </p></li>
            <li>芝麻酱<p>1大匙  </p></li>
        </ul>
    </fieldset>



    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        锅内注入清水，放入姜片，香葱段，花椒，盐，大火煮开。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        放入鸡腿，转小火慢慢煮制20分钟至熟。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        煮好的鸡腿，冲洗干净，用冷水或冰水浸泡十分钟。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        用木锤或肉锤将鸡肉组织锤散
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        用手分离骨，肉，将鸡肉撕成长条状
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        在碗内放入调料A，用筷子混合均匀备用
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        花生放入微波炉中高火叮1分钟，放凉去皮。
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        用胶袋装好，用擀面棍敲碎。
    </div>
    <div class="practice">
        <div class="recipeStep_num">9</div>
        最后将图6中的调料淋在鸡丝上，洒上炒熟白芝麻，花生碎，及香菜碎即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/02bbcc971f425359eef9bf2ca99fffb3/0/0/v_19rrlzu0b8.swf-albumId=523969400-tvId=523969400-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
