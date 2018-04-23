<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome-4.7.0/css/font-awesome.css" >
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/regist.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/buttons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/head.css">
</head>
<body>

<script type="text/javascript">

    var xmlHttp;

    function createXMLHttpRequest() {
        //表示当前浏览器不是ie,如ns,firefox
        if(window.XMLHttpRequest) {
            xmlHttp = new XMLHttpRequest();
        } else if (window.ActiveXObject) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
    }

    function validate(field) {
        var username = document.getElementById('username').value;
        //判断用户名是否为空
        if (username.length != 0) {

            //创建Ajax核心对象XMLHttpRequest
            createXMLHttpRequest();
            console.log(field);
            var url='${pageContext.request.contextPath}/customer/check.do';
            xmlHttp.open("post",url,true);
            xmlHttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
            xmlHttp.onreadystatechange=callback;
            xmlHttp.send("username="+username);
        } else {
            document.getElementById("spanUserId").innerHTML = "";
        }
    }

    //发送请求之后，返回的状体
    function callback() {
        //alert(xmlHttp.readyState);
        //Ajax引擎状态为成功
        if (xmlHttp.readyState == 4) {
            console.log("1111");
            //HTTP协议状态为成功
            if (xmlHttp.status == 200) {
                if (xmlHttp.responseText != "") {
                    //设置请返回的消息信息
                    document.getElementById("spanUserId").innerHTML = "<font color='red'>" + xmlHttp.responseText + "</font>"
                }else {
                    document.getElementById("spanUserId").innerHTML = "";
                }
            }else {
                alert("请求失败，错误码=" + xmlHttp.status);
            }
        }else{

        }
    }

</script>

<div class="regist_s">
    <form class="regist_form"  action="${pageContext.request.contextPath}/customer/regist.do" method="post">
        <h2 >用户注册</h2>
        <label class="regist_lable" >姓名：</label>
        <div class="regist_input">
            <div class="fa_font">
                <i class="fa fa-user-o"></i>
            </div>
            <input type="text" name="name" class="text_input"  >
        </div>

        <label class="regist_lable">用户名：</label>
        <div class="regist_input">
            <div class="fa_font">
                <i class="fa fa-user-circle"></i>
            </div>
            <input type="text" name="username" class="text_input" id="username"onblur="validate(this)">
            <span id="spanUserId"></span>
        </div>

        <label class="regist_lable">密码：</label>
        <div class="regist_input">
            <div class="fa_font">
                <i class="fa fa-keyboard-o "></i>
            </div>
            <input type="password" name="password" class="text_input">
        </div>

        <label class="regist_lable" >确认密码：</label>
        <div class="regist_input">
            <div class="fa_font">
                <i class="fa fa-keyboard-o "></i>
            </div>
            <input type="password" name="confirm" class="text_input">
        </div>

        <label class="regist_lable">地址：</label>
        <div class="regist_input">
            <div class="fa_font">
                <i class="fa fa-address-card-o"></i>
            </div>
            <input type="text" name="address" class="text_input">
        </div>

        <label class="regist_lable">电话：</label>
        <div class="regist_input">
            <div class="fa_font">
                <i class="fa fa-phone"></i>
            </div>
            <input type="text" name="tel" class="text_input">
        </div>

        <div class="regist_reset_btn">
            <button type="reset" name="reset" class=" button button-caution button-rounded button-small">重置</button>
        </div>
        <div class="regist_regist_btn">
            <button type="submit" name="regist" class="button button-caution button-rounded button-small">注册</button>
        </div>
        <br>
        <div class="regist_mes">
            ${ sessionScope.registSuccess } <!-- 先显示 -->
            <c:remove var="registSuccess" scope="session" /> <!-- 显示后立即从 session 中删除 -->
        </div>

    </form>
</div>

</body>
</html>