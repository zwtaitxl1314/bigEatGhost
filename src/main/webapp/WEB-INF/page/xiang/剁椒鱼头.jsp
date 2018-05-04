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
                    <p>剁椒鱼头（英文名：Chop bell pepper fish head）是湖南省的传统名菜，属于湘菜系。据传，起源和清代文人黄宗宪有关。
                        通常以鳙鱼鱼头、剁椒为主料，配以豉油、姜、葱、蒜等辅料蒸制而成。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>胖头鱼鱼头 <p> 1个</p></li>
            <li> 剁椒<p> 适量</p></li>
            <li> 高度白酒<p> 1大匙</p></li>
            <li> 胡椒粉<p> 少许</p></li>
            <li> 料酒<p> 1大匙</p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>蒸鱼豉油 <p>1大匙 </p></li>
            <li>油<p>适量 </p></li>
            <li>盐<p>适量 </p></li>
            <li> 姜<p>适量 </p></li>
            <li>葱 <p>适量 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将鱼头洗净，从鱼唇正中剖开，在鱼头下面鱼肉较厚的部分斜划几刀。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        将料酒、胡椒粉、盐撒在鱼头上，抹匀，腌制约20分钟。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        将高度白酒倒入剁椒中，拌匀备用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        在腌制好的鱼头表面淋上少许油，抹匀。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        将姜切片、葱切段，铺在碗底。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        再放上处理好的鱼头。
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        然后将步骤3的剁椒铺在鱼头上。
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        蒸锅内放入适量的水，烧开，然后摆入鱼头，盖盖，大火隔水足汽蒸约10分钟。
    </div>
    <div class="practice">
        <div class="recipeStep_num">9</div>
        将蒸好后的鱼头取出，倒去碗内多余的汤汁，撒上葱花，淋入蒸鱼豉油，然后将适量的油烧热，泼在上面即可。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/635da6ef0905d5a37d956ecb90b263df/0/0/w_19rsd1lmh9.swf-albumId=3199712609-tvId=3199712609-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
