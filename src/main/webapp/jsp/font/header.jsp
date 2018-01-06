<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2018/1/6
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap-maizi.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/animate.css"/>

</head>
<body>


<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <!--小屏幕导航按钮和Logo-->
        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <s:a href="Font_toIndex" namespace="/font" class="navbar-brand">Love&Peace 酒店官网</s:a>
        </div>
        <!--小屏幕导航按钮和Logo-->
        <!--导航-->
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><s:a href="Font_toIndex" namespace="/font">首页</s:a></li>
                <li><s:a href="Font_toIndex" namespace="/font">浏览</s:a></li>
                <li><s:a href="Font_toIndex" namespace="/font">预定</s:a></li>
                <li><a href="#contact">联系我们</a></li>
            </ul>
        </div>

        <!--导航-->
    </div>
</nav>
</body>
</html>
