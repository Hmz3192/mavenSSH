<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2018/1/6
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1 , user-scalable=no">
    <title>Love&Peace</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap-maizi.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/animate.css"/>

    <style>
        #xiugai{
            width: 100%;
            background: #9be9c2;
            color: #FFFFFF;
            line-height: 45px;
            text-align: center;
            height: 45px;
            margin:0 auto;
            margin-top:30px;
            margin-bottom: 15px;
            cursor: pointer;
            font-family: "微软雅黑";
            font-size: 16px;
            border: none;
        }

    </style>
</head>
<body>
<!--导航-->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <!--小屏幕导航按钮和Logo-->
        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <s:a href="Font_toIndex" namespace="/" class="navbar-brand">Love&Peace 酒店官网</s:a>

        </div>
        <!--小屏幕导航按钮和Logo-->
        <!--导航-->
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><s:a href="Font_toIndex" namespace="/">首页</s:a></li>
                <li><s:a href="Font_toIndex" namespace="/">浏览</s:a></li>
                <li><s:a href="Font_toIndex" namespace="/">预定</s:a></li>
                <li><a href="#contact">联系我们</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <s:if test="#session.user == null">
                            用户管理
                        </s:if>
                        <s:else>
                            <p style="color: red">
                                <s:property value="#session.user.account"/>
                            </p>
                        </s:else>
                        <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <s:if test="#session.user == null">
                            <li>
                                    <%--<a href="login.html">&nbsp;&nbsp;<strong>登录</strong></a>--%>
                                <s:a namespace="/" action="Font_toLogin">登录</s:a>
                            </li>
                        </s:if>
                        <s:else>
                            <%--<li class="divider"></li>--%>
                            <li>
                                <%--<a href="login.h>?tml">&nbsp;&nbsp;<strong>修改信息</strong></a>--%>
                                    <s:a action="Font_toUser" namespace="/">修改信息</s:a>

                            </li>
                            <li class="divider"></li>
                            <li>
                                <s:a href="User_out" namespace="/">&nbsp;&nbsp;<strong>退出</strong></s:a>

                            </li>
                        </s:else>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
            </ul>
        </div>

        <!--导航-->
    </div>
</nav>
<!--导航-->
<!--room-->
<section id="room">
    <div class="container">
        <div class="row wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
            <div class="col-md-12">
                <!-- Advanced Tables -->
                <div class="panel panel-default">
                    <h3 style="margin-left: 25px">个人信息页面</h3>
                    <div class="panel-body">
                        <form action="User_update" method="post">
                            <div class="form-group">
                                <label for="addname1">姓名</label>
                                <input type="text" id="addname1" class="form-control" name="account" value='<s:property value="#session.user.account"/>'>
                            </div>
                            <div class="form-group">
                                <label for="addpassword">预留电话</label>
                                <input type="text"  id="addpassword" class="form-control"  name="phone"  value='<s:property value="#session.user.phone"/>'>
                            </div>
                            <div class="form-group">
                                <label for="adddate">身份证验证</label>
                                <s:if test="#session.user.account != null">
                                    <input type="text"  disabled="disabled"  id="adddate" class="form-control" value="已验证">
                                </s:if>
                                <s:else>
                                    <input type="text"  disabled="disabled"  id="adddate" class="form-control" value="未验证">
                                </s:else>
                            </div>
                            <div class="form-group">
                                <label for="adddate">VIP</label>
                                <s:if test="#session.user.vip == 1">
                                    <input type="text"   disabled="disabled"  id="adddate" class="form-control" value="超级VIP">
                                </s:if>
                                <s:else>
                                    <input type="text"  disabled="disabled"  id="adddate" class="form-control" value="普通VIP">
                                </s:else>
                            </div>
                            <input type="submit"   value="修改信息"  id="xiugai">
                        </form>
                    </div>
                </div>
                <!-- Advanced Tables -->
            </div>
        </div>
    </div>
</section>



<!--contact-->
<section id="contact">
    <div class="lvjing">
        <div class="container">
            <div class="row">
                <div class="col-md-6 wow fadeInLeft" >
                    <h2>
                        <span class="glyphicon glyphicon-send"></span>
                        &nbsp;
                        联系我们
                    </h2>
                    <p>
                        Love&Peace覆盖全球200多个国家,80万家酒店供您选择,多语言支持,优质服务,全球海量酒店供您选择,7*24小时中文服务,随时随地预订,出差旅行全搞定.
                    </p>
                    <address>
                        <p>
                            <span class="glyphicon glyphicon-home"></span>
                            &nbsp;
                            地址:马尔代夫D5-11
                        </p>
                        <p>
                            <span class="glyphicon glyphicon-phone-alt"></span>
                            &nbsp;
                            联系电话：028-86567913
                        </p>
                        <p>
                            <span class="glyphicon glyphicon-envelope"></span>
                            &nbsp;
                            邮箱:hr@lovepeaceedu.com
                        </p>
                    </address>
                </div>
                <div class="col-md-6 wow fadeInRight">
                    <form action="#" method="post">
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="您的姓名"/>
                        </div>
                        <div class="col-md-6">
                            <input type="email" class="form-control" placeholder="您的邮箱"/>
                        </div>
                        <div class="col-md-12">
                            <input type="text" class="form-control" placeholder="标题"/>
                        </div>
                        <div class="col-md-12">
                            <textarea class="form-control" placeholder="留言内容" rows="4"></textarea>
                        </div>
                        <div class="col-md-8">
                            <input type="submit" class="form-control" value="提交"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!--contact-->

<!--footer-->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p>Copyright &nbsp; @Xuezhongpo</p>
            </div>
        </div>
    </div>
</footer>
<!--footer-->
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/jquery.singlePageNav.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/wow.min.js"></script>
<script>
   /* $(function () {
        $('.nav').singlePageNav({
            offset:70
        });
        /!*小屏幕导航点击关闭菜单*!/
        $('.navbar-collapse a').click(function(){
            $('.navbar-collapse').collapse('hide');
        });
        new WOW().init();
    })*/
</script>
</body>
</html>