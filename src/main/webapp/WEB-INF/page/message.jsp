<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>个人信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/message.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/css/jquery-3.3.1/jquery-3.3.1.js"></script>
</head>

<body>
<script >

    //页面加载时将input框和保存和取消隐藏
    $(document).ready(function(){
        $("input[name='Modify1']").hide();
        $("input[name='Modify2']").hide();
        $("input[name='Modify3']").hide();
        $("input[name='Modify4']").hide();
        $("div[class='btn2']").hide();
        $("div[class='btn3']").hide();
    });

    //点击编辑显示input框，隐藏编辑，显示保存和取消
    $(function(){
        $("a[rel='edit']").click(function () {
            $(this).parent().parent().find("div[class='btn1']").hide();
            $(this).parent().parent().find("div[class='btn2']").show();
            $(this).parent().parent().find("div[class='btn3']").show();

            $(this).parent().parent().find("span[class='right_text']").hide();
            $(this).parent().parent().find("span[class='username']").show();
            $(this).parent().parent().find("input[name='Modify1']").show();
            $(this).parent().parent().find("input[name='Modify3']").show();
            $(this).parent().parent().find("input[name='Modify4']").show();
        })
    });

    //点击保存后获取input框的值，用ajax发送到后台进行数据库更改操作
    $(function () {
        $("a[rel='update']").click(function () {
            var name = $(this).parent().parent().find("input[name='Modify1']").val();
            var username = $(this).parent().parent().find("input[name='Modify2']").val();
            var add = $(this).parent().parent().find("input[name='Modify3']").val();
            var phone = $(this).parent().parent().find("input[name='Modify4']").val();
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/customer/message.do",
                data: {name: name, username: username,add:add,phone:phone},
            }).done(function (data) {
                if (data == "1") {
                    alert("保存成功！");
                    window.location.reload();
                }
                else
                    alert("保存失败！");
            });
        })
    });

    //点击取消将input框隐藏和保存和取消隐藏，将编辑显示出来
    $(function () {
        $("a[rel='cancel']").click(function () {
            $(this).parent().parent().find("div[class='btn1']").show();
            $(this).parent().parent().find("span[class='right_text']").show();
            $(this).parent().parent().find("div[class='btn2']").hide();
            $(this).parent().parent().find("div[class='btn3']").hide();
            $(this).parent().parent().find("input[name='Modify1']").hide();
            $(this).parent().parent().find("input[name='Modify2']").hide();
            $(this).parent().parent().find("input[name='Modify3']").hide();
            $(this).parent().parent().find("input[name='Modify4']").hide();
        })
    });
</script>

    <div class="row col-lg-6 col-lg-offset-3 col-xs-8 col-xs-offset-2 distance">

        <div class="mes">
            <div class="hengtu">
                <img src="${pageContext.request.contextPath}/image/timg.jpg"  />
            </div>


            <div class="left_mes">
                <img src="${pageContext.request.contextPath}/image/1.jpg">
            </div>

            <div class="right_mes">
                <fieldset class="ingredients">
                    <legend>个人资料</legend>

                    <div class="btn1" >
                        <a href="javascript:void(0)" rel='edit'>
                            <span>编辑</span>
                        </a>
                    </div>

                    <div class="btn2" >
                        <a href="javascript:void(0)" rel='update'>
                            <span>保存</span>
                        </a>
                    </div>

                    <div class="btn3" >
                        <a href="javascript:void(0)" rel='cancel'>
                            <span>取消</span>
                        </a>
                    </div>


                    <div class="text">
                        <span class="left_text" >姓名</span>
                        <span class="right_text" >${user.name}</span>
                        <input name="Modify1" value="${user.name}" type="text" >
                    </div>
                    <div class="text">
                        <span class="left_text" >用户名</span>
                        <span class="right_text username" >${user.username}</span>
                        <input name="Modify2" value="${user.username}" type="text" >
                    </div>
                    <div class="text">
                        <span class="left_text" >地址</span>
                        <span class="right_text" >${user.address}</span>
                        <input name="Modify3" value="${user.address}" type="text" >
                    </div>
                    <div class="text">
                        <span class="left_text" >电话号码</span>
                        <span class="right_text" >${user.mobilePhone}</span>
                        <input name="Modify4" value="${user.mobilePhone}" type="text" >
                    </div>

                </fieldset>
            </div>
        </div>



    </div>

</body>
</html>
