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
                    <p>1.补肺养阴、止肺虚性咳嗽、减少肺气病变。包括肺阴虚之哮喘、气促、久咳、痰中带血、咳血、咯 血、支气管炎、出汗、低潮热。  </p>
                    <p>2. 补虚养胃、止胃寒性、呕吐。胃阴虚引起之反胃、干呕、肠鸣声。 </p>
                    <p>3.凡病后虚弱、痨伤、中气亏损各症，配合官燕作食，能滋阴调中。  </p>
                    <p>4.止汗、气虚、脾虚之多汗、小便频繁、夜尿。  </p>
                    <p>5.使人皮肤光滑、有弹性和光泽，从而减少皱纹。  </p>
                    <p>6.官燕含多种氨基酸，婴幼儿和儿童常吃能长智慧、增加思维、抗敏感、补其先后天之不足。  </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>水发燕窝 <p> 100克</p></li>
            <li>水发刺参 <p>50克 </p></li>
            <li>鱼肚 <p> 50克</p></li>
            <li>鱼皮 <p> 50克</p></li>
            <li>裙边 <p> 50克</p></li>
            <li>干贝 <p> 50克</p></li>
            <li>鲍鱼 <p>适量 </p></li>
            <li>散翅 <p>适量 </p></li>
            <li>大枣 <p>适量 </p></li>
            <li>笋片 <p>适量 </p></li>
            <li>竹笙 <p>适量</p></li>
            <li>菜心 <p>适量 </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li>浓汤 <p>适量</p></li>
            <li>高汤 <p>适量</p></li>
            <li>盐   <p>适量</p></li>
            <li>味精 <p>适量</p></li>
            <li>鸡粉 <p>适量</p></li>
            <li>料酒 <p>适量</p></li>
            <li>葱油 <p>适量</p></li>
        </ul>
    </fieldset>

    <fieldset class="ingredients">
        <legend>口味</legend>
        <ul>
            <li> </li>
            <li> </li>
            <li> </li>
            <li> </li>
        </ul>
    </fieldset>

    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        浸发：把温水注入盛燕窝之碗中，待碗中之燕窝发大至通透即可。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        清洁：把刚发好之燕窝再过水二到三次，使其干净卫生。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        炖调：将清洗好只燕窝与适量冰糖放入炖盅中，
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        再注入温水（大约两钱官燕一碗水量），再慢火烹炖，一般印尼官燕一小时，泰国洞燕二至四小时。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        把各种配料切好，用高汤氽出备用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">6</div>
        锅内加浓汤，加上所有配料，调好口味，淋上葱油，盛入大康顺煲内。
    </div>
    <div class="practice">
        <div class="recipeStep_num">7</div>
        把发好的燕窝用水烫热，单独放一圆盘内，连同康顺煲内的料一块上桌即成。
    </div>
    <div class="practice">
        <div class="recipeStep_num">8</div>
        小诀窍:
        制作关键
        燕窝要发好，毛要去净。
        各种配料要处理好，刀工要整齐。
        上汤质量要好。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>
        <p>教学视频暂无</p>
    <div class="video">

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
