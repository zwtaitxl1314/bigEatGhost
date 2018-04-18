<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>鲁菜</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/lu.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link  rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sinaFaceAndEffec.css" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/page/head.jsp" flush="true"/>

    <div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
        <div class="head_img">
            <img src="${pageContext.request.contextPath}/image/粤菜/阿一鲍鱼.jpg">
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
                <li>老母鸡
                    <p>8只</p>
                </li>
                <li>龙骨<p>10斤</p></li>

                <li>猪精瘦<p>5斤</p></li>
                <li>鸡爪<p>10斤</p></li>
                <li>猪肉皮<p>5斤</p></li>
                <li>猪前肘<p>3-4个</p></li>
                <li>金花火腿<p>2斤</p></li>
                <li>干瑶柱<p>1斤</p></li>
                <li>大海米<p>0.5斤  </p></li>
                <li>章鱼干<p>3两</p></li>
            </ul>
        </fieldset>
        <fieldset class="ingredients">
            <legend>配料</legend>
            <ul>
                <li>清水<p>60斤</p></li>
                <li>鸡油<p>5斤</p></li>
                <li>旧装蚝油<p>123</p></li>
                <li>李锦记老抽<p>1--2两</p></li>
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

        <p class="topic">阿一鲍鱼的做法步骤</p>
        <div class="practice">
            <div class="recipeStep_num">1</div>
            选择原料，酒店做的鲍鱼一般是8头，10头，12头的
            好的鲍鱼在灯光下应该是透亮的。
        </div>
        <div class="practice">
            <div class="recipeStep_num">2</div>
            干鲍的发制过程，用凉的纯净水泡制72个小时，8小时换一次水，够72小时以后空干凉水，加温水泡制48个小时，
            温水的温度在60——70度，4小时换一次水，发制到鲍鱼富有弹性，发起来即可
        </div>
        <div class="practice">
            <div class="recipeStep_num">3</div>
            煲鲍鱼汁，1选料，老母鸡8只，龙骨10斤，猪精瘦5斤，鸡爪10斤，
            猪肉皮5斤，猪前肘3-4个（3斤每个），金花火腿 2斤，干瑶柱1斤，大海米0.5斤，章鱼干3两，清水60斤，鸡油5斤， 调
            料就用（李锦记）旧装蚝油。李锦记老抽1--2两。
        </div>
        <div class="practice">
            <div class="recipeStep_num">4</div>
            把选择好的肉类原料飞水小火炸至金黄，用不锈钢汤桶下面垫上竹荙，放进60斤净水，下入原材料， 鲍鱼用两个竹荙加起来放到原料中间，
            用大火烧开，打去汤上面的泡沫，汤开问见浓汤味改用文火（微小火 ）煲上8个小时（中间火不能灭），取出鲍鱼，打掉杂子。
        </div>
        <div class="practice">
            <div class="recipeStep_num">5</div>
            怎样识别煲出来的鲍鱼好坏，刚煲出来取一根细竹签比牙签细点，扎进鲍鱼里面往上慢慢提起鲍鱼，
            鲍鱼在往上提起的时候，慢慢地掉了下来就说明煲到位了！即可！
        </div>
        <div class="practice">
            <div class="recipeStep_num">6</div>
            保存，1煲好的鲍鱼用净油封存保鲜，2用保鲜膜封存保鲜。 鲍鱼汁用密封保鲜或冻起来
        </div>
        <div class="practice">
            <div class="recipeStep_num">7</div>
            制作成品鲍鱼，用胡萝卜熬制色素，走的时候加蚝油，味精，鸡粉，益鲜素，肉宝王，鲍鱼打欠。
        </div>

        <p class="topic">阿一鲍鱼的教学视频</p>

        <div class="video">
            <embed src="http://player.video.qiyi.com/98f4080341cd68f68f36a84bc82f142b/0/0/w_19rrl7ndp1.swf-albumId=436639609-tvId=436639609-isPurchase=0-cnId=27"
                   allowFullScreen="true" quality="high" width="800" height="500" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash">

            </embed>
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
                                <div class="operator-box-btn"><span class="face-icon"  >☺</span></div>
                                <button  class="submit-btn" ><input type="button"  value="提交评论" ;/></button>
                            </div>
                        </div>
                    </div>
                    <div id="info-show">
                        <ul>
                            <li>
                                <div class="head-face">
                                    <img src="${pageContext.request.contextPath}/image/1.jpg">
                                </div>
                                <div class="reply-cont">
                                   <p class="username">小小红色飞机</p>
                                    <p class="comment-body">'+content+'</p>
                                    <p class="comment-footer">2017年4月11日　回复</p>
                                </div>
                            </li>
                        </ul>
                    </div>
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
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/page/foot.jsp" flush="true"/>
</html>
