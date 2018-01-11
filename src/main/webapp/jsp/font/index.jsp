<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2018/1/6
  Time: 18:46
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
                <li><a href="#home">首页</a></li>
                <li><a href="#look">浏览</a></li>
                <li><a href="#course">预定</a></li>
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
                            <%--<a href="login.html">&nbsp;&nbsp;<strong>修改信息</strong></a>--%>
                            <s:a action="Font_toUser"  namespace="/">修改信息</s:a>
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
<!--home-->
<section id="home">
    <div class="lvjing">
        <div class="container">
            <div class="row wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <h1>人生就是旅行<br/>
                        每一段的风景都是不同的主题</h1>
                    <p>
                        趁年轻去看看外面的世界，<br/>
                        用青春在旅途留下不悔的印记 / 守护并陪伴着Ta成长，<br/>
                        一点一滴中尽享天伦之乐 / 遇见质朴的乡村田野，<br/>
                        寻回那份久违的初心<br/>
                        Love&Peace 愿伴你走过人生的每一段风景、每一个主题<br/>
                    </p>
                    <img src="${pageContext.request.contextPath }/assets/img/hotel1.jpg" class="img-responsive"
                         alt="php"/>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
    </div>
</section>
<!--home-->
<!--look-->
<section id="look">
    <div class="container">
        <div class="row wow fadeInUp" data-wow-duration="0.5s">
            <div class="col-md-6">
                <img src="${pageContext.request.contextPath }/assets/img/hotel2.jpg" class="img-responsive" alt=""/>
            </div>
            <div class="col-md-6">
                <h2>酒店信息</h2>
                <p><h4>Love&Peace国际酒店提供国际一流服务、顶级豪华设施及美馔佳酿,为宾客打造难忘的至尊下榻体验。</br>
                </br>
                酒店集团酒店预订已建立覆盖全国家分店的经济型快捷连锁酒店网络,完善的酒店预订系统,让您预订酒店客房更加轻松快捷,是您出差、旅游好选择。
            </h4></p>
            </div>
        </div>
    </div>
</section>
<!--look-->
<!--room-->
<section id="room">
    <div class="container">
        <div class="col-md-6 wow fadeInLeft">
            <h2>客房信息</h2>
            <p><span class="glyphicon glyphicon-grain mai-icon"></span> 酒店客房区域拥有标准间、商务套房、豪华套房、行政套房、总统套房、别墅等不同房型共计300余间。
            </p>
            <p><span class="glyphicon glyphicon-grain mai-icon"></span>客房设施：欢迎礼品 电吹风 电水壶 有线/卫星电视接收 独立卫生间 国内长途电话
                分体式（中央）空调 电视 衣柜 免费洗漱用品 拖鞋 免费瓶装水 雨伞 24小时热水 宽带上网接口 客房Wifi覆盖 免费茶包</p>
        </div>
        <div class="col-md-6 wow fadeInRight">
            <img src="${pageContext.request.contextPath }/assets/img/hotel3.jpg" class="img-responsive" alt=""/>
        </div>
    </div>
</section>
<!--html5-->
<!--course-->
<section id="course">
    <div class="container">
        <div class="row wow fadeIn" data-wow-delay="0.5">
            <div class="col-md-12">
                <h2>客房预订</h2>
            </div>
            <div class="col-md-4">
                <s:if test='#session.order !=null || #session.order.size() != 0'>
                    <div class="course" >
                    </s:if>
                         <s:else>
                        <div class="course">
                        </s:else>

                    <img src="${pageContext.request.contextPath }/assets/img/1.png"  style="margin-left: 20px" class="img-responsive" alt=""/>
                    <%--<a href="order.html" class="btn btn-primary" target="_blank" role="button">--%>
                        <s:a action="Room_getAllRoomInFont"  class="btn btn-primary" cssStyle="margin-left: 20px" namespace="/">预定客房</s:a>
                </div>
            </div>
                    <div class="col-md-4">
                    <s:if test='#session.order !=null || #session.order.size() != 0'>
                        <div class="course" style="margin-left: 50px">
                    </s:if>
                     <s:else>
                        <div class="course">
                    </s:else>

                    <img src="${pageContext.request.contextPath }/assets/img/2.png"  style="margin-left: 20px" class="img-responsive" alt=""/>
                    <s:a action="Font_toUser" class="btn btn-primary" cssStyle="margin-left: 20px" namespace="/">修改信息</s:a>
                </div>
            </div>


            <s:if test="#session.order !=null || #session.order.size() != 0">
            <div class="col-md-4">
                <div class="course" style="margin-left: 100px">
                    <img src="${pageContext.request.contextPath }/assets/img/3.png"  style="margin-left:20px" class="img-responsive" alt=""/>
                    <s:a class="btn btn-primary"  role="button" action="Live_deleteBooking"  cssStyle="margin-left: 20px" namespace="/" onclick="javascript: return confirm('真的要删除吗？');">
                        清除预定
                    </s:a>
                </div>
            </div>
            </s:if>
        </div>
    </div>
</section>
<!--course-->

<!-- Model1 -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel1">删除预定</h4>
            </div>
            <div class="modal-body">
                <form action="#">
                    <div class="form-group">
                        <label for="addname1">姓名</label>
                        <input type="text" id="addname1" class="form-control" value="张先生">
                    </div>
                    <div class="form-group">
                        <label for="addpassword">预留电话</label>
                        <input type="text" id="addpassword" class="form-control" value="17857090000">
                    </div>
                    <div class="form-group">
                        <label for="adddate">入住日期</label>
                        <input type="text" id="adddate" class="form-control" value="12/3">
                    </div>
                    <div class="form-group">
                        <label for="addtype">预定房型</label>
                        <input type="text" id="addtype" class="form-control" value="商务套房">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交</button>
            </div>
        </div>
    </div>
</div>
<!--contact-->
<section id="contact">
    <div class="lvjing">
        <div class="container">
            <div class="row">
                <div class="col-md-6 wow fadeInLeft">
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
    $(function () {
      /*  $('.nav').singlePageNav({
            offset: 70
        });*/
//        小屏幕导航点击关闭菜单
        $('.navbar-collapse a').click(function () {
            $('.navbar-collapse').collapse('hide');
        });
        new WOW().init();
    })
</script>
</body>
</html>
