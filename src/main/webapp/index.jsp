<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
<head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSTL</title>
</head>
<body>
<h2>Hello World!</h2>
<form action="${pageContext.request.contextPath}/customer/regist.do" method="post">
    <input type="text" name="nickname" placeholder="昵称" >
    <input type="text" name="username" placeholder="用户名" >
    <input type="password" name="password" placeholder="密码" >
    <input type="submit" value="注册" >
</form>

<form action="${pageContext.request.contextPath}/customer/login.do" method="post">
    <input type="text" name="username" placeholder="用户名" >
    <input type="password" name="password" placeholder="密码" >
    <input type="submit" value="登录" >
</form>
</body>
</html>
