<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2018/1/6
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Love&Peace </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FREEHTML5" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />




    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap-maizi.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/animate.css"/>

    <!-- <link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700italic,900,700,900italic' rel='stylesheet' type='text/css'> -->

    <!-- Stylesheets -->
    <!-- Dropdown Menu -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/superfish.css">
    <!-- Owl Slider -->
    <!-- <link rel="stylesheet" href="css/owl.carousel.css"> -->
    <!-- <link rel="stylesheet" href="css/owl.theme.default.min.css"> -->
    <!-- Date Picker -->
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap-datepicker.min.css">--%>
    <!-- CS Select -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/cs-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/cs-skin-border.css">

    <!-- Themify Icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/themify-icons.css">
    <!-- Flat Icon -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/flaticon.css">
    <!-- Icomoon -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/icomoon.css">
    <!-- Flexslider  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/flexslider.css">

    <!-- Style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/style.css">

    <!-- Modernizr JS -->
    <script src="${pageContext.request.contextPath }/assets/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]><script src="js/respond.min.js"></script><![endif]-->

</head>
<body>
<div id="fh5co-wrapper">
    <div id="fh5co-page">
        <div id="fh5co-header">
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
                                            <s:a namespace="/font" action="Font_toLogin">登录</s:a>
                                        </li>
                                    </s:if>
                                    <s:else>
                                        <%--<li class="divider"></li>--%>
                                        <li>
                                            <a href="login.html">&nbsp;&nbsp;<strong>修改信息</strong></a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <s:a href="User_out" namespace="/font">&nbsp;&nbsp;<strong>退出</strong></s:a>

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

        </div>
        <!-- end:fh5co-header -->


        <div id="fh5co-hotel-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="hotel-content">
                            <div class="hotel-grid" style="background-image: url(${pageContext.request.contextPath }/assets/img/image-1.jpg);">
                                <div class="price"><small>折扣价</small><span>¥120/晚</span></div>
                                <a class="book-now text-center btn btn-primary " href="#"data-toggle="modal" data-target="#myModal1"><i class="ti-calendar"></i> 现在预定</a>
                            </div>
                            <div class="desc">
                                <h3><a href="#">特色标间</a></h3>
                                <p>Love&Peace酒店让每位客人都能享受到安静的休憩空间。房间内32寸液晶电视、品牌空调、网络数字电视信号、电信专线光纤宽带、酒店WiFi全覆盖。24小时淋浴服务等一应俱全。</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="hotel-content">
                            <div class="hotel-grid" style="background-image: url(${pageContext.request.contextPath }/assets/img/image-2.jpg);">
                                <div class="price"><small>折扣价</small><span>¥150/晚</span></div>
                                <a class="book-now text-center btn btn-primary " href="#"data-toggle="modal" data-target="#myModal1"><i class="ti-calendar"></i> 现在预定</a>
                            </div>
                            <div class="desc">
                                <h3><a href="#">精致大床房</a></h3>
                                <p>Love&Peace酒店让每位客人都能享受到安静的休憩空间。房间内32寸液晶电视、品牌空调、网络数字电视信号、电信专线光纤宽带、酒店WiFi全覆盖。24小时淋浴服务等一应俱全。</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="hotel-content">
                            <div class="hotel-grid" style="background-image: url(${pageContext.request.contextPath }/assets/img/image-3.jpg);">
                                <div class="price"><small>折扣价</small><span>¥180/晚</span></div>
                                <a class="book-now text-center btn btn-primary " href="#"data-toggle="modal" data-target="#myModal1"><i class="ti-calendar"></i> 现在预定</a>
                            </div>
                            <div class="desc">
                                <h3><a href="#">个性大床房</a></h3>
                                <p>Love&Peace酒店让每位客人都能享受到安静的休憩空间。房间内32寸液晶电视、品牌空调、网络数字电视信号、电信专线光纤宽带、酒店WiFi全覆盖。24小时淋浴服务等一应俱全。</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="hotel-content">
                            <div class="hotel-grid" style="background-image: url(${pageContext.request.contextPath }/assets/img/image-4.jpg);">
                                <div class="price"><small>折扣价</small><span>¥180/晚</span></div>
                                <a class="book-now text-center btn btn-primary " href="#"data-toggle="modal" data-target="#myModal1"><i class="ti-calendar"></i> 现在预定</a>
                            </div>
                            <div class="desc">
                                <h3><a href="#">商务套间</a></h3>
                                <p>Love&Peace酒店让每位客人都能享受到安静的休憩空间。房间内32寸液晶电视、品牌空调、网络数字电视信号、电信专线光纤宽带、酒店WiFi全覆盖。24小时淋浴服务等一应俱全。</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="hotel-content">
                            <div class="hotel-grid" style="background-image: url(${pageContext.request.contextPath }/assets/img/image-5.jpg);">
                                <div class="price"><small>折扣价</small><span>¥200/晚</span></div>
                                <a class="book-now text-center btn btn-primary " href="#"data-toggle="modal" data-target="#myModal1"><i class="ti-calendar"></i> 现在预定</a>
                            </div>
                            <div class="desc">
                                <h3><a href="#">豪华套间</a></h3>
                                <p>Love&Peace酒店让每位客人都能享受到安静的休憩空间。房间内32寸液晶电视、品牌空调、网络数字电视信号、电信专线光纤宽带、酒店WiFi全覆盖。24小时淋浴服务等一应俱全。</p>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>

        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel1">预定房间</h4>
                    </div>
                    <div class="modal-body">
                        <form action="#">
                            <div class="form-group">
                                <label for="addname1">姓名</label>
                                <input type="text" id="addname1" class="form-control" placeholder="姓名">
                            </div>
                            <div class="form-group">
                                <label for="addpassword">电话</label>
                                <input type="text" id="addpassword" class="form-control" placeholder="请输入电话">
                            </div>
                            <div class="form-group">
                                <label for="adddate">预定日期</label>
                                <select id="adddate2" class="form-control">
                                    <option>Jan</option>
                                    <option>Feb</option>
                                    <option>Mar</option>
                                    <option>Apr</option>
                                    <option>May</option>
                                    <option>June</option>
                                    <option>July</option>
                                    <option>Aug</option>
                                    <option>Sep</option>
                                    <option>Oct</option>
                                    <option>Nov</option>
                                    <option>Dec</option>
                                </select>
                                <select id="adddate" class="form-control">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                    <option>04</option>
                                    <option>05</option>
                                    <option>06</option>
                                    <option>08</option>
                                    <option>09</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                    <option>13</option>
                                    <option>14</option>
                                    <option>15</option>
                                    <option>16</option>
                                    <option>17</option>
                                    <option>18</option>
                                    <option>19</option>
                                    <option>20</option>
                                    <option>21</option>
                                    <option>22</option>
                                    <option>23</option>
                                    <option>24</option>
                                    <option>25</option>
                                    <option>26</option>
                                    <option>27</option>
                                    <option>28</option>
                                    <option>29</option>
                                    <option>30</option>
                                    <option>31</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="addemail">预定天数</label>
                                <input type="email" id="addemail" class="form-control" placeholder="请输入预定天数">
                            </div>
                            <div class="form-group">
                                <label for="addyonghuzu">预定房型</label>
                                <select id="addyonghuzu" class="form-control">
                                    <option>特色标间</option>
                                    <option>精致大床房</option>
                                    <option>个性大床房</option>
                                    <option>商务套间</option>
                                    <option>豪华套间</option>
                                </select>
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
                        <div class="col-md-6 wow fadeInLeft" >
                            <h2>
                                <span class="glyphicon glyphicon-send"></span>
                                &nbsp;
                                联系我们
                            </h2>

                            Love&Peace覆盖全球200多个国家,80万家酒店供您选择,多语言支持,优质服务,全球海量酒店供您选择,7*24小时中文服务,随时随地预订,出差旅行全搞定.

                            <address>

                                <span class="glyphicon glyphicon-home"></span>
                                &nbsp;
                                地址:马尔代夫D5-11
                                <br>


                                <span class="glyphicon glyphicon-phone-alt"></span>
                                &nbsp;
                                联系电话：028-86567913
                                <br>

                                <span class="glyphicon glyphicon-envelope"></span>
                                &nbsp;
                                邮箱:hr@lovepeaceedu.com
                                <br>

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
    </div>
    <!-- END fh5co-page -->

</div>
<!-- END fh5co-wrapper -->

<!-- Javascripts -->
<script src="${pageContext.request.contextPath }/assets/js/jquery-2.1.4.min.js"></script>
<!-- Dropdown Menu -->
<script src="${pageContext.request.contextPath }/assets/js/hoverIntent.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/superfish.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="${pageContext.request.contextPath }/assets/js/jquery.waypoints.min.js"></script>
<!-- Counters -->
<script src="${pageContext.request.contextPath }/assets/js/jquery.countTo.js"></script>
<!-- Stellar Parallax -->
<script src="${pageContext.request.contextPath }/assets/js/jquery.stellar.min.js"></script>
<!-- Owl Slider -->
<!-- // <script src="js/owl.carousel.min.js"></script> -->
<!-- Date Picker -->
<script src="${pageContext.request.contextPath }/assets/js/bootstrap-datepicker.min.js"></script>
<!-- CS Select -->
<script src="${pageContext.request.contextPath }/assets/js/classie.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/selectFx.js"></script>
<!-- Flexslider -->
<script src="${pageContext.request.contextPath }/assets/js/jquery.flexslider-min.js"></script>

<script src="${pageContext.request.contextPath }/assets/js/custom.js"></script>

</body>
</html>