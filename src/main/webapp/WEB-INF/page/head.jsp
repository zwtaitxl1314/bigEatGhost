<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ page isELIgnored="false" %>

<script type="text/javascript">
    function logout(){
        location.href="${pageContext.request.contextPath}/customer/unlogin.do" ;
    }
</script>


<div class="header">
    <div class="navigation">
        <a href="${pageContext.request.contextPath}/index.jsp"  class="hd-logo" title="美食餐厅" ><img src="${pageContext.request.contextPath}/image/index/logo1.png"></a>
        <ul class="hd-nav">
            <li><a href="" name="index">网站首页</a></li>
            <li><a href="" name="about">我们提供 </a></li>
            <li><a href="" name="productlist">菜式欣赏 </a></li>
            <li><a href="" name="article">查看更多 </a></li>
            <li><a href="" name="contact">关于我们 </a></li>
            <c:if  test="${ empty user }">
                 <li>
                     <a href="${pageContext.request.contextPath}/customer/login.do">登录</a>
                 </li>
                <li>
                    <a href="${pageContext.request.contextPath}/customer/registJsp.do">注册</a>
                </li>
            </c:if>
            <c:if  test="${ not empty user }">
                <li class="user">
                    欢迎您：<a href="">${user.username}</a>
                </li>
                <li class="nav_showUserMessage_logout">
                    <a href="javascript:void(0)" onclick="logout()">
                        注销
                    </a>
                </li>
            </c:if>
        </ul>
    </div>
</div>

