<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css">
    <script language="javascript" type="text/javascript">

        var code;
        function createCode() {
            code = "";
            var codeLength = 4; //验证码的长度
            var checkCode = document.getElementById("checkCode");
            var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
                'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
                'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
            for (var i = 0; i < codeLength; i++)
            {
                var charNum = Math.floor(Math.random() * 52);
                code += codeChars[charNum];
            }
            if (checkCode)
            {
                checkCode.className = "code";
                checkCode.innerHTML = code;
            }
        }
        function validateCode() {
            var inputCode = document.getElementById("inputCode").value;
            if (inputCode.length <= 0)
            {
                alert("请输入验证码！");
            }
            else if (inputCode.toUpperCase() != code.toUpperCase())
            {
                alert("验证码输入有误！");
                createCode();
            }
            else{
                var username = document.getElementById('username').value;
                var password = document.getElementById('password').value;
                window.location.href="login.do?username="+username+"&password"+password;
            }
        }


    </script>
</head>
<body onload="createCode()">

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/page/head.jsp" flush="true"/>

<div>
    <div class="row col-lg-8 col-lg-offset-2 col-xs-8 col-xs-offset-2 distance">
        <div class="head">
            <a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/image/index/logo12.png"></a>
            <span>登录</span>
        </div>

        <div class="text" id="divID">
                <form action="${pageContext.request.contextPath}/customer/login.do" id="form1" runat="server" onsubmit="validateCode()" method="post">
                    <div class="reg-box">
                        <input id="username"  class="textbox" name="username" placeholder="请输入用户名" type="text">
                        <input id="password" class="textbox" name="password" placeholder="请输入密码" type="password" >

                            <div class="verify">
                            <table border="0" cellspacing="5" cellpadding="5" >
                                <tr>
                                    <td><input  type="text"   id="inputCode" /></td>
                                </tr>
                                <tr>
                                    <td></td><td> <div class="code" id="checkCode" onclick="createCode()" ></div></td>
                                    <td><a  href="#" onclick="createCode()">看不清换一张</a></td>
                               <!-- </tr>
                                    <td><input id="Button1"  type="button" value="确定" /></td>
                                </tr>-->
                            </table>
                        </div>

                        <label><input id="auto_login_next" value="auto" class="checkbox" type="checkbox"> 下次自动登录</label>
                        <a href="" class="forgetpassword">忘记密码？</a>


                    </div>
                    <div class="submitbox" >
                       <a href="${pageContext.request.contextPath}/customer/login.do"><input class="submit" onclick="validateCode();" value="登录" type="submit"></a>
                    </div>
                </form>
        </div>


    </div>

    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/page/foot.jsp" flush="true"/>


</div>
</body>
</html>
