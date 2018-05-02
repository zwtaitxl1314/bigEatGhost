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
        <img src="${pageContext.request.contextPath}/image/粤菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>功效</legend>
            <ul>
                <li>
                    <p>1.鲍鱼含有丰富的蛋白质，还有较多的钙，铁，碘和维生素A，等营养元素；</p>
                    <p>2.鲍鱼营养价值极高，富含丰富的球蛋白；鲍鱼的肉中还含有一种被称为“鲍素”的成分，能够破坏癌细胞必需的代谢物质</p>
                    <p>3.鲍鱼能养阴、平肝、固肾，可调整 肾上腺分泌，具有双向性调节血压的作用</p>
                    <p>4.鲍鱼有调经、润燥利肠之效，可治月经不调、大便秘结等疾患</p>
                    <p>5.鲍鱼具有滋阴补阳功效，并是一种补而不燥的海产，吃后没有牙痛、流鼻血等副作用，多吃也无妨</p>
                    <p>6.鲍鱼的营养是澳大利亚核桃的7倍。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>龙虾<p>1只</p></li>
            <li>西兰花<p>10克 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>葱、姜 <p>10克 </p></li>
            <li>芝士粉<p>20克</p></li>
            <li>食用油 <p>60毫升 </p></li>
            <li>黄油<p>50克</p></li>
            <li>淡奶油<p>20毫升 </p></li>
            <li>花雕酒<p>20毫升 </p></li>
            <li>生粉<p>6克 </p></li>
            <li>糖<p>20克 </p></li>
            <li>盐<p>5克 </p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>口味</legend>
        <ul>
            <li>清水</li>
            <li>鸡油</li>
            <li>旧装蚝</li>
            <li>李锦</li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        龙虾洗净去头，掏去头内内脏蒸熟。尾部从中间剁开，剃掉虾线，剁成4～5厘米大块，沥干水分上薄薄一层生粉。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        葱姜切大块，干葱切碎。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        西兰花切小块焯水，捞出沥干水分备用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        锅中放入底油，油六成热后将龙虾块放入，将油漓在龙虾表面收紧肉定型，肉熟后捞出控油备好。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        另取锅放入黄油，融化后放入葱姜蒜煸炒，出香味后下备好的龙虾块，加入高汤、淡奶油、糖、盐调味，出锅前放芝士粉将汁收浓，摆盘，将龙虾头、西兰花、龙虾块摆好造型即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/55b72ccca606d31aa73bbbc3beff7ead/0/0/w_19rvmca3e1.swf-albumId=8991859909-tvId=8991859909-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
                        <input type="hidden" name="yue" value="${yue}">
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
