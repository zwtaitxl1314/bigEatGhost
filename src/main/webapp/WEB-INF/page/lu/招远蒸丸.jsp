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
                    <p> 相传，招远蒸丸已有百余年历史，主要流行于招远北部乡村。招远蒸丸的主料是猪肉，比例为肥、瘦各半。做法是瘦肉剁成泥，肥肉切薄片，两面剞直刀，成筷子头大小的丁。辅料有鸡蛋、白菜心、葱、香菜及精盐、味精、胡椒粉等调料。与其他丸子的辅料不同的是，招远蒸丸的辅料中一定要有两种海味：鹿角菜（一种状似鹿角的海藻）和海米，大概主要是为了解腻和口感。除了瘦肉成茸，肥肉切丁外，其余辅料均切碎剁细，加调味品后放入容器内，顺一个方向搅合，以便使丸子上浆、有劲。然后挤成核桃大小的丸子码放盘中，入锅，大火蒸10分钟左右即可。火大肉老，影响口感。丸子蒸好后盛入大汤碗，然后做汤。锅里加清汤烧开，撇去浮末，然后加精盐、醋、味精、胡椒粉调味，将汤浇入碗中，然后加葱丝、香菜段，淋香油后即可上桌。</p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>瘦猪肉<p>300克 </p></li>
            <li>肥膘肉 <p>300克 </p></li>
            <li>海米 <p>8克 </p></li>
            <li> 水发冬菇<p>8克 </p></li>
            <li>白菜心 <p>150克 </p></li>
            <li>香菜 <p>75克 </p></li>
            <li>鸡蛋 <p>3个 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>香油 <p> 10克</p></li>
            <li>胡椒面 <p>1克 </p></li>
            <li>精盐<p>13克  </p></li>
            <li>味精 <p>3克 </p></li>
            <li>醋 <p>4克 </p></li>
            <li>葱 <p>60克 </p></li>
            <li>姜 <p>20克 </p></li>
            <li>鸡汤 <p>450克 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将瘦肉剁碎成泥，放入小盆内，加入鸡蛋搅匀。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        肥膘肉切成厚0.2厘米的片，两面交叉打上刀纹，再切成0.3厘米见方的丁。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        海米、白菜心、水发冬菇、姜均切成末。 葱30克切末、30克切丝，得菜一半切段、一半切末。
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        将肥肉丁与配料末、葱姜末、味精、精盐、胡椒面放入瘦肉泥盆内搅匀，做成直径1.5厘米大小的丸子，分别装入10个小汤盘内，上笼蒸熟取出。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        将鸡汤倒入锅内，加精盐、醋，烧开撇去浮沫，淋上香油，撒上葱丝、香菜段，倒入盛丸子的盘内即成。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        制作关键：丸子上笼蒸时，注意不要蒸老，以保持丸子的鲜嫩特点。
    </div>

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
