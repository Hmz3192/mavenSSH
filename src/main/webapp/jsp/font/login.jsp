<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2017/10/3
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Love&Peace</title>
    <%--<link rel="shortcut icon" href="/static/favicon.ico.png"/>--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css" />
</head>
<body>
    <%--<include file="${pageContext.request.contextPath}/jsp/font/header.jsp" />--%>
    <%@include file="header.jsp"%>
<div class="loginMain">
    <div class="loginCenter" style="margin-top: 100px">
        <img src="${pageContext.request.contextPath}/assets/img/bg.jpg"  style="margin-top: 100px;" class="fl loginBg" />
        <div class="login">
            <ul class="loginUl">
                <li class="active loginUlLi1">登录</li>
                <li class="loginUlLi2">注册</li>
            </ul>

            <div class="loginDiv">
                <s:form action="User_Userlogin" namespace="/font" method="post">
                    <p class="loginTel">
                        <input type="text" placeholder="请输入账号" width="100px"  name="account"/>
                    </p>
                    <p class="loginTel">
                        <input type="password" name="password" placeholder="密码" class="loginPassword" id="password"/>
                    </p>
                    <p>
                        <input type="text" class="inputInt" style="width: 160px" placeholder="验证码" id="picCodeImgLoginInt"/>
                        <%--<input type="text"  id="verificationCodeTempLogin"/>--%>
                        <img src="" class="abcd" id="picCodeImgLogin" onclick="getValidateImg()"/>
                    </p>

                    <div class="cl"></div>
                    <s:submit  class="loginLog" cssStyle="width: 300px"  value="立即登录"></s:submit>
                </s:form>
                <p class="loginMima">
                    <a href="#">忘记密码?</a>
                </p>

            </div>
            <!--注册-->
            <div class="registerDiv" style="display: none;">
                <s:form action="User_addUser" namespace="/font"  method="post">
                    <div id="errorRegister"></div>
                    <p class="loginTel" >
                        <input type="text" placeholder="请输入账号" id="registerUserName" name="account"/>
                    </p>
                    <p class="loginTel" >
                        <input type="password" placeholder="设置密码 : 长度为6~16位字符" id="registerPassword" name="password"/>
                    </p>
                    <p class="loginTel" >
                        <input type="password" placeholder="确认密码" id="repassword"/>
                    </p>
                    <p class="loginTel" >
                        <input type="number" placeholder="联系电话" name="phone"/>
                    </p>
                    <p class="loginTel" >
                        <input type="number" placeholder="身份证号" name="idCard"/>
                    </p>
                    <p style="margin-bottom: 20px; height: 45px;">
                        <input type="text" class="inputInt" style="width: 160px" placeholder="验证码" id="picCode"/>
                        <%--<input type="text"  id="verificationCodeTemp"/>--%>
                        <img src="" class="abcd" id="picCodeImg" onclick="getValidateImg()"/>
                    </p>
                    <div class="cl"></div>
                    <p class="registerCheck">
                        <input type="checkbox" checked="checked"  id="agreeCheck"/>我已阅读并同意
                        <a href="javascript:;">
                            《用户注册协议》
                        </a>
                    </p>
                    <s:submit  class="loginLog" cssStyle="width: 300px"  value="立即注册"></s:submit>
                </s:form>
            </div>
        </div>
    </div>
</div>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/md5.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/common.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/loginall.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/config.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/login.js" ></script>
</html>
