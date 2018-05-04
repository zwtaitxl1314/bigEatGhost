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
        <img src="${pageContext.request.contextPath}/image/鲁菜/${comcuisine}.jpg">
        <p class="cuisinename" id="cuisinename">${comcuisine}</p>
        <fieldset class="benefits ">
            <legend>简介</legend>
            <ul>
                <li>
                    <p>葱烧海参是中华特色美食，鲁菜经典名菜。从山东源入，以水发海参和大葱为主料，海参清鲜，柔软香滑，葱段香浓，食后无余汁。是“古今八珍”之一，葱香味醇，营养丰富，滋肺补肾。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>干海参 <p>3根 </p></li>
            <li>纯净水<p>若干  </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>葱白 <p>8段 </p></li>
            <li>油 <p>20克 </p></li>
            <li>蚝油 <p>10克 </p></li>
            <li>生抽 <p>15克 </p></li>
            <li>糖 <p>8克 </p></li>
            <li>料酒 <p>15克 </p></li>
            <li>胡椒粉 <p>少许 </p></li>
            <li>鸡精 <p>少许 </p></li>
            <li>水 <p>40克 </p></li>
            <li>淀粉水(淀粉+水调开) <p>50克 </p></li>
        </ul>
    </fieldset>



    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        首先将要泡发的海参放入容器中,加入纯净水,纯净水需完全没过海参.
        将海参常温下泡发24个小时.
        TIPS:必须使用纯净水,不要使用自来水.
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        锅中加入新的纯净水,将海参放入锅内,中火煮开.水开后即可关火,静置放至常温.待海参晾凉至常温后,在容器中加入新的纯净水.锅中的水不要,只将锅中的海参全部放入碗中.
        放在冰箱内,冷藏泡发24小时.
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        海参一共泡发6天,共重复5次煮开晾凉,放入冰箱冷藏泡发的步骤.
        直到海参完全泡发,捏起来很有弹性.试一下海参的软度,用手指掐一小块海参,可以轻松掐断.这时海参就泡发好了.
        TIPS:不同种类的海参可能泡发时间不同,可自行调整泡发的天数.
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        准备葱烧海参的材料:
        葱烧海参的葱,只用葱白的部分,且越靠后的葱白越好.
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        锅中放入20克油,将5段葱白放入锅中,小火慢慢的焙葱油.
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        一定小火慢慢的煎葱段,直到葱段煸软,称焦黄乃至黑色.此步骤大概需要7分钟左右.
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        将变黑的葱段捞出,扔掉不用.葱油留在锅中,继续加入新的三段葱白,继续小火煎葱段.
        此次葱段煎到焦黄即可出锅,不要把葱段煎黑.将葱段盛出放在盘中备用.
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        葱油继续留在锅中,在锅中放入蚝油10克,生抽15克,糖8克,料酒15克,胡椒粉少许,鸡精少许,水40克,煮开.
    </div>
    <div class="practice">
        <div class="recipeStep_num">9</div>
        将海参放入锅中,煮3分钟，
        随后将海参盛出来,放在一边备用.
    </div>
    <div class="practice">
        <div class="recipeStep_num">10</div>
        锅中加入淀粉水(淀粉+水调开)勾芡,淀粉水共调50克,加入锅时可一勺一勺的添加,边添加边观察状态,不要一次性加入.
        当汤汁粘稠到可以微微挂在勺子上一层的时候,这时候勾芡就做好了.
    </div>
    <div class="practice">
        <div class="recipeStep_num">11</div>
        将海参和葱段摆盘,可在旁放上少许绿色青菜点缀，将勾好的芡汁淋在海参上面,就完成了
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/a3231fc9812b3d488487be795b4c2e71/0/0/w_19rrb6b9a5.swf-albumId=641344209-tvId=641344209-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
