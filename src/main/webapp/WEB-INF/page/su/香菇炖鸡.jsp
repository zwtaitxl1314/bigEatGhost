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
        <img src="${pageContext.request.contextPath}/image/苏菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>香菇炖鸡是江苏省特色传统名菜，属于苏菜中比较有特色的菜肴，制作原料有鸡 ，香菇，笋等。受到各地人民欢迎。与其他吃食相比，鸡肉总是特别入味。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>鸡肉<p>若干  </p></li>
            <li>干香菇 <p>5-8只 </p></li>
            <li>红枣 <p>2-4颗 </p></li>
            <li>大葱 <p> 1-2根</p></li>
            <li>姜片 <p>少许 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>食盐 <p>少许 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>小诀窍</legend>
            <p>1、香菇一定要用干香菇，品质要好，新鲜香菇香味比干香菇差很多。 </p>
            <p>2、干香菇发泡之前要反复清洗多次，发泡水底部残渣弃用倒掉，发泡水炖汤味道好。  </p>
            <p>3、干香菇选择大朵的较好，发泡后的香菇中间切开或在香菇表面打十字刀花。  </p>
            <p>4、红枣表皮较韧，用剪刀在红枣两侧剪2-3下的小剪口，利于红枣香味出来。 </p>
            <p>5、调料只用食盐就好，其他炖肉调料不加，鸡精和味精也不加，否则会掩盖鸡汤原味。</p>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        干香菇清洗干净后，用温水发泡备用（发泡时间以香菇变软、香味散发为宜）
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        泡香菇的水不要倒掉，炖鸡的时候备用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        红枣清洗干净后，用剪刀在红枣两侧剪2-3下的小口（表皮较韧，剪开利于香味出来）
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        鸡肉切块后，放入锅中用水大火烹煮，待煮出大量血沫后迅速出锅。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        用冷水把鸡块上残留血沫冲洗干净后备用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        大葱切段后和姜片一起放入干净的锅底，在葱姜上面架鸡块，在鸡块上面架香菇和红枣。
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        锅中葱姜、鸡块、香菇红枣三层摆放后，倒入香菇发泡水，水面刚刚淹过香菇为宜。
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        加入适量食盐后，小火慢炖1小时以上，待鸡肉炖熟后出锅。
    </div>


    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/80e88527e0e6d7ed6297317b8260fe37/0/0/w_19rr7e5ldx.swf-albumId=685298409-tvId=685298409-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
