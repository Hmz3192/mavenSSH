<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css">
</head>
<body>
<div class="page">
    <div class="loginwarrp">
        <div class="logo">操作员登陆</div>
        <div class="login_form">
            <form action="${pageContext.request.contextPath }/back/Operator_login" method="post"  >
                <li class="login-item">
                    <span>用户名：</span>
                    <input type="text" name="account" class="login_input">
                </li>
                <li class="login-item">
                    <span>密　码：</span>
                    <input type="password" name="password" class="login_input">
                </li>
                <%--<li class="login-item verify">--%>
                    <%--<span>验证码：</span>--%>
                    <%--<input type="text" name="CheckCode" class="login_input verify_input">--%>
                <%--</li>--%>
                <%--<img src="images/verify.PNG" border="0" class="verifyimg" />--%>
                <div class="clearfix"></div>
                <li class="login-sub">
                    <input type="submit" name="Submit" value="登录" />
                    <%--<s:submit value="登录" ></s:submit>--%>
                </li>
            </form>
        </div>
    </div>
</div>
<%--<s:actionmessage/>--%>
</body>
</html>