    <%--
  Created by IntelliJ IDEA.
  User: ThinKPad
  Date: 2018/1/5
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>Love&Peace</title>
    <!-- Bootstrap Styles-->
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="${pageContext.request.contextPath }/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${pageContext.request.contextPath }/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/js/Lightweight-Chart/cssCharts.css">
</head>

<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><strong><i class="icon fa fa-plane"></i> Love&Peace </strong></a>

            <div id="sideNav" href="">
                <i class="fa fa-bars icon"></i>
            </div>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="glyphicon glyphicon-user"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <%--<a href="">预定管理</a>--%>
                        <s:a action="Back_toBook" namespace="/back">预定管理</s:a>
                    </li>
                    <li>
                        <a href="customer.html">客户管理</a>
                    </li>
                    <li>
                        <a href="chart.html">业务统计</a>
                    </li>
                </ul>
                <!-- /.dropdown-messages -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="glyphicon glyphicon-list-alt"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li>
                        <a href="user_list.html">客房管理</a>
                    </li>
                    <li>
                        <a href="room.html">客房类型管理</a>
                    </li>
                    <li>
                        <a href="operator.html">操作员管理</a>
                    </li>
                </ul>
                <!-- /.dropdown-tasks -->
            </li>
            <!-- /.dropdown -->
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> 用户配置</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> 环境</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath }/Back_toBack"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <%--<a class="active-menu" href=""></a>--%>
                        <s:a namespace="/back"  class="active-menu" action="Back_toOperator"></s><i class="fa fa-dashboard"></i> 入住登记</s:a>
                </li>
                <li>
                    <a href="#"><i class="glyphicon glyphicon-list-alt"></i><span class="fa arrow"></span> 客户管理</a>
                    <ul class="nav nav-second-level">
                        <li>
                            <s:a action="User_getBookingUser" namespace="/back">预定管理</s:a>
                        </li>
                        <li>
                            <s:a action="User_getAllUser" namespace="/back">客户管理</s:a>
                        </li>
                        <li>
                            <s:a action="Back_tochart" namespace="/back">业务统计</s:a>

                        </li>
                    </ul>
                </li>


            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
               入住登记
            </h1>
        </div>
        <div id="page-inner">
            <div class="booking-form">
                <div class="panel panel-default">
                    <div class="panel-heading">入住登记</div>
                    <div class="panel-body">
                        <div class="col-md-6">
                            <form action="${pageContext.request.contextPath }/back/Live_liveIn.action" method="POST">
                                <h5>名字</h5>
                                <input type="text" name="userName">
                                <h5>预留电话</h5>
                                <input type="text" name="telephone">
                                <h5>身份证号</h5>
                                <input type="text" name="idCard" class="time">
                                <h5>房间类别</h5>
                                <select  name="type" >
                                    <option>特色标间</option>
                                    <option>精致大床房</option>
                                    <option>个性大床房</option>
                                    <option>商务套间</option>
                                    <option>豪华套间</option>
                                </select>
                                <h5>房号</h5>
                                <select  name="roomNum" >
                                    <option>1-2</option>
                                    <option>1-3</option>
                                    <option>2-1</option>
                                    <option>2-2</option>
                                    <option>2-3</option>
                                </select>
                        </div>
                        <div class="col-md-6">
                                <h5>入住</h5>
                                <select class="arrival" name="inYear">
                                    <option>2015</option>
                                    <option>2016</option>
                                    <option>2017</option>
                                    <option>2018</option>
                                    <option>2019</option>
                                    <option>2020</option>
                                </select>
                                <select class="arrival" name="inMon">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                </select>
                                <select class="arrival" name="inDay">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                    <option>04</option>
                                    <option>05</option>
                                    <option>06</option>
                                    <option>07</option>
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
                                <h5>入住天数</h5>
                                <input min="1" type="number" name="day"  >
                                <h5 class="mem">人数</h5>
                                <input min="1" type="number" id="quantity" >
                                <h5>备注</h5>
                                <textarea value=""></textarea>
                        </div>
                            <%--<submit cssClass="btn btn-primary" >入住</submit>--%>
                            <input type="submit"  style="margin-left: 20px" class="btn btn-primary" value="入住">
                            <%--<button class="btn btn-primary" data-toggle="modal" data-target="#myModal"><i class="fa fa-edit "></i> 结账</button>--%>
                            </form>


                    </div>
                </div>
            </div>
            <div class="booking-form">
                <div class="panel panel-default">
                    <div class="panel-heading">结账</div>
                    <div class="panel-body">
                        <div class="col-md-6">
                            <form action="${pageContext.request.contextPath }/back/Live_liveOut.action" method="post">
                                <h5>名字</h5>
                                <input type="text" name="userName">
                                <h5>房间号</h5>
                                <select class="arrival">
                                    <option>101</option>
                                    <option>102</option>
                                    <option>103</option>
                                    <option>104</option>
                                    <option>105</option>
                                    <option>106</option>
                                    <option>108</option>
                                    <option>109</option>
                                    <option>201</option>
                                    <option>202</option>
                                    <option>203</option>
                                    <option>204</option>
                                    <option>205</option>
                                    <option>206</option>
                                    <option>207</option>
                                    <option>208</option>
                                    <option>209</option>
                                    <option>210</option>
                                    <option>301</option>
                                    <option>302</option>
                                    <option>303</option>
                                    <option>304</option>
                                    <option>305</option>
                                    <option>306</option>
                                    <option>307</option>
                                    <option>308</option>
                                    <option>309</option>
                                    <option>310</option>
                                    <option>#401</option>
                                    <option>#402</option>
                                </select>
                                <h5>房间类型</h5>
                                <select class="arrival">
                                    <option>特色标间</option>
                                    <option>精致大床房</option>
                                    <option>个性大床房</option>
                                    <option>商务套间</option>
                                    <option>豪华套间</option>
                                </select>
                                <h5>房间价格</h5>
                                <select class="arrival">
                                    <option>120</option>
                                    <option>150</option>
                                    <option>180</option>
                                    <option>200</option>
                                </select>
                        </div>
                        <div class="col-md-6">
                                <h5>离开日期</h5>
                                <select class="arrival">
                                    <option>2012</option>
                                    <option>2013</option>
                                    <option>2014</option>
                                    <option>2015</option>
                                    <option>2016</option>
                                    <option>2017</option>
                                    <option>2018</option>
                                    <option>2019</option>
                                    <option>2020</option>
                                </select>
                                <select class="arrival">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                </select>

                                <select class="arrival">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                    <option>04</option>
                                    <option>05</option>
                                    <option>06</option>
                                    <option>07</option>
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
                            <input type="submit" style="margin-top: 10px;margin-left: 10px" class="btn btn-primary" value="结账">
                            </form>
                            <%--<button class="btn btn-primary" style="margin-top: 10px" data-toggle="modal" data-target="#myModal"><i class="fa fa-edit "></i> 结账</button>--%>

                        </div>
                    </div>
                </div>
            </div>
            <footer>
                <p>Copyright &copy; 2018.Xue zhongpo
                </p>
            </footer>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="${pageContext.request.contextPath }/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>

<!-- Metis Menu Js -->
<script src="${pageContext.request.contextPath }/assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="${pageContext.request.contextPath }/assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/morris/morris.js"></script>


<script src="${pageContext.request.contextPath }/assets/js/easypiechart.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/easypiechart-data.js"></script>

<script src="${pageContext.request.contextPath }/assets/js/Lightweight-Chart/jquery.chart.js"></script>

<!-- Custom Js -->
<script src="${pageContext.request.contextPath }/assets/js/custom-scripts.js"></script>


<!-- Chart Js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/chartjs.js"></script>

</body>

</html>