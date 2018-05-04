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
                    <p>
                        佛跳墙，又名满坛香、福寿全，是福建福州的当地名菜，属闽菜系。相传，它是在清道光年间由福州聚春园菜馆老板郑春发研制出来的。佛跳墙富含营养，可促进发育，美容，延缓衰老，增强免疫力，乃进补佳品。
                        制作这道美食，工序十分繁琐。佛跳墙的原料有十几种之多，鲍鱼、海参、鱼唇、牦牛皮胶、杏鲍菇、蹄筋、花菇、墨鱼、瑶柱、鹌鹑蛋等。要充分体现每一种食材的口味和特点需要先将这十几种食材分别独立制作成一道菜，再汇聚到一起，加入高汤和绍兴酒，文火煨制十几个小时以上，这种味道才能真正达到醇厚的特点。 [1]
                        1965年和1980年分别在广州南园和香港，以烹制佛跳墙为主的福州菜引起轰动，在世界各地掀起了佛跳墙热。各地华侨开设的餐馆，多用自称正宗的佛跳墙菜，招徕顾客。佛跳墙还接待过西哈努克亲王、美国总统里根、英国女王伊丽莎白等国家元首。
                    </p>
                </li>
            </ul>
        </fieldset>
    </div >


    <p class="topic">食材明细</p>
    <fieldset class="ingredients">
        <legend>主料</legend>
        <ul>
            <li>海参 <p> </p></li>
            <li> 鲍鱼<p> </p></li>
            <li>鱼翅 <p> </p></li>
            <li>鱼唇 <p> </p></li>
            <li>干贝 <p> </p></li>
            <li> 蛏子<p> </p></li>
        </ul>
    </fieldset>
    <fieldset class="ingredients">
        <legend>配料</legend>
        <ul>
            <li> 蛏鲜冬笋片子<p>10克 </p></li>
            <li> 水发香菇<p>15克 </p></li>
            <li> 熟鸡肉<p>20克 </p></li>
            <li> 老姜两片<p>5克 </p></li>
            <li> 上汤<p>150ml </p></li>
            <li> 盐<p>1克 </p></li>
            <li> 白胡椒粉<p>少许 </p></li>
        </ul>
    </fieldset>


    <p class="topic">${comcuisine}的做法步骤</p>
    <div class="practice">
        <div class="recipeStep_num">1</div>
        将水发鱼翅去沙，剔整排在竹箅（音 bi 一种竹制蒸用工具，或圆或方）上，放进沸水锅中加葱段30克、姜片15克 、绍酒100克煮10分钟，支其腥味取出，拣去葱、姜，汁不用，将箅拿出放进碗里，鱼翅上摆放猪肥膘肉，加绍酒50克，上笼屉用旺火蒸2小时取出，拣去肥膘肉，滗（音 bi 过滤的意思）去蒸汁。
    </div>
    <div class="practice">
        <div class="recipeStep_num">2</div>
        鱼唇切成长2厘米、宽4.5厘米的块，放进沸水锅中，加葱段30克、绍酒100克、姜片15克煮10分钟去腥捞出，拣去葱、姜。
    </div>
    <div class="practice">
        <div class="recipeStep_num">3</div>
        金钱鲍放进笼屉，用旺火蒸取烂取出，洗净后每个片成两片，剞上十字花刀，盛 入小盆，加
    </div>
    <div class="practice">
        <div class="recipeStep_num">4</div>
        鸡、鸭分别剁去头、颈、脚。猪蹄尖剔壳，拔净毛，洗净。羊肘刮洗干净。以上四料各切12块，与净鸭肫一并下沸水锅氽一下，去掉血水捞起。猪肚里外翻洗干净，用沸水氽两次，去掉浊味后，切成12块，下锅中，加同有汤250克烧沸，加绍酒85克氽一下捞起，汤汁不用。
    </div>
    <div class="practice">
        <div class="recipeStep_num">5</div>
        将水发刺参洗净，每只切为两片。水发猪蹄筋洗净，切成2寸长的段。净火腿腱肉加清水150克，上笼屉用旺火蒸30分钟取出，滗去蒸汁，切成厚约1厘米的片。冬笋放沸水锅中氽熟捞出，每条直切成四块，用力轻轻拍扁。锅置旺 火上，熟猪油放锅中烧至七成热时，将鸽蛋、冬笋块下锅炸约2分钟捞起。随后，将鱼高鱼肚下锅，炸至手可折断时，倒进漏勺沥去油，然后放入清水中浸透取出，切成长4.5厘米、宽2.5厘米的块。
    </div>

    <div class="practice">
        <div class="recipeStep_num">6</div>
        锅中留余油50克，用旺火烧至七成热时，将葱段35克、姜片45克下锅炒出香味 后，放入鸡、鸭、羊肘、猪蹄尖、鸭肫、猪肚块炒几下，加入酱油75克、味精10克、冰糖75克、绍酒2150克、骨汤500克、桂皮，加盖煮20分钟后，拣去葱、姜、桂皮，起锅捞出各料盛于盆，汤汁待用。
    </div>

    <div class="practice">
        <div class="recipeStep_num">7</div>
        .取一个绍兴酒坛洗净，加入清水500克，放在微火上烧热，倒净坛中水，坛底放 一个小竹箅，先将煮过的鸡、鸭、羊、肘、猪蹄尖、鸭肫、猪肚块及花冬菇、冬笋块放入，再把鱼翅、火腿片、干贝、鲍鱼片用纱布包成长方形，摆在鸡、鸭等料上，然后倒入煮鸡、鸭等料的汤汁，用荷叶在坛口上封盖着，并倒扣压上一只小碗。装好后，将酒坛置于木炭炉上，用小火煨2小时后启盖，速将刺参、蹄筋、鱼唇、鱼高肚放入坛内，即刻封好坛口，再煨一小时取出，上菜时，将坛口菜胡倒在大盆内，纱布包打开，鸽蛋放在最上面。同时，跟上蓑衣萝卜一碟、火腿拌豆芽一碟、冬菇炒豆苗一碟、油辣芥一碟以及银丝卷、芝麻烧饼佐食。
    </div>

    <p class="topic">${comcuisine}的教学视频</p>

    <div class="video">
        <embed src="http://player.video.qiyi.com/c56cf27ac2d0fee67b525f3f24fb8f7a/0/0/w_19rtgorbx1.swf-albumId=4560665209-tvId=4560665209-isPurchase=0-cnId=21" allowFullScreen="true" quality="high" width="480" height="350" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
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
