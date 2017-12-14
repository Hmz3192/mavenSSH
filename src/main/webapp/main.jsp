<%--
  Created by IntelliJ IDEA.
  User: ThinKPad
  Date: 2017/9/8
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/public.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/content.css">
    <script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
</head>
<body>
<div class="public-header-warrp">
    <div class="public-header">
        <div class="content">
            <div class="public-header-logo" ><a href="${pageContext.request.contextPath }/main.jsp"><i>LOGO</i><h3 >学生管理界面</h3></a></div>
            <div class="public-header-admin fr">
                <p class="admin-name">Admin 管理员 您好！</p>
                <div class="public-header-fun fr">
                    <a href="${pageContext.request.contextPath }/User_out" class="public-header-loginout">安全退出</a>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="public-ifame mt20">
    <div class="content">
        <div class="public-ifame-leftnav">
            <div class="public-title-warrp">
                <div class="public-ifame-title ">
                    <a href="">首页</a>
                </div>
            </div>
            <ul class="left-nav-list">
                <li class="public-ifame-item">
                    <a href="javascript:;">系统管理</a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath }/User_queryList" target="content">查看学生信息</a></li>
                        <li><a href="${pageContext.request.contextPath }/add.jsp" target="content">增加学生信息</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="public-ifame-content">
            <iframe name="content" src="${pageContext.request.contextPath }/List.jsp" frameborder="0" id="mainframe" scrolling="yes" marginheight="0" marginwidth="0" width="100%" style="height: 700px;"></iframe>
        </div>
    </div></div>
</table>
</body>
</html>
<style type="text/css">
    input.text {
        text-align: center;
    }
</style>