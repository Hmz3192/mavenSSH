<%--
  Created by IntelliJ IDEA.
  User: ThinKPad
  Date: 2018/1/5
  Time: 23:34
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
    <title>BRILLIANT Free Bootstrap Admin Template</title>
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
            <a class="navbar-brand" href="index.html"><strong><i class="icon fa fa-plane"></i> Love&Peace</strong></a>

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
                        <a href="book.html">预定管理</a>
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
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
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
                    <s:a namespace="/back"   action="Back_toOperator"></s><i class="fa fa-dashboard"></i> 入住登记</s:a>
                </li>
                <li>
                    <a href="#"><i class="glyphicon glyphicon-list-alt"></i><span class="fa arrow"></span> 客户管理</a>
                    <ul class="nav nav-second-level">
                        <li>
                            <s:a action="Back_toBook"   namespace="/back">预定管理</s:a>
                        </li>
                        <li>
                            <s:a action="Back_toCustomer"   namespace="/back">客户管理</s:a>
                        </li>
                        <li>
                            <s:a action="Back_tochart" class="active-menu" namespace="/back">业务统计</s:a>

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
                业务统计
            </h1>
            <ol class="breadcrumb">
                <li><a href="#">主页</a></li>
                <li><a href="#">控制面板</a></li>
                <li class="active">数据</li>
            </ol>

        </div>
        <div id="page-inner">

            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="board">
                        <div class="panel panel-primary">
                            <div class="number">
                                <h3>
                                    <h3>44,023</h3>
                                    <small>每日访问量</small>
                                </h3>
                            </div>
                            <div class="icon">
                                <i class="fa fa-eye fa-5x red"></i>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="board">
                        <div class="panel panel-primary">
                            <div class="number">
                                <h3>
                                    <h3>50</h3>
                                    <small>成交量</small>
                                </h3>
                            </div>
                            <div class="icon">
                                <i class="fa fa-shopping-cart fa-5x blue"></i>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="board">
                        <div class="panel panel-primary">
                            <div class="number">
                                <h3>
                                    <h3>210</h3>
                                    <small>入住人数</small>
                                </h3>
                            </div>
                            <div class="icon">
                                <i class="fa fa-comments fa-5x green"></i>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="board">
                        <div class="panel panel-primary">
                            <div class="number">
                                <h3>
                                    <h3>89,645</h3>
                                    <small>每日盈利</small>
                                </h3>
                            </div>
                            <div class="icon">
                                <i class="fa fa-user fa-5x yellow"></i>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <div class="panel panel-default chartJs">
                        <div class="panel-heading">
                            <div class="card-title">
                                <div class="title">线形图</div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <canvas id="line-chart" class="chart"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="panel panel-default chartJs">
                        <div class="panel-heading">
                            <div class="card-title">
                                <div class="title">条形图</div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <canvas id="bar-chart" class="chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-6 col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-body easypiechart-panel">
                            <h4>盈利</h4>
                            <div class="easypiechart" id="easypiechart-blue" data-percent="82" ><span class="percent">82%</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-body easypiechart-panel">
                            <h4>销售量</h4>
                            <div class="easypiechart" id="easypiechart-orange" data-percent="55" ><span class="percent">55%</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-body easypiechart-panel">
                            <h4>客户</h4>
                            <div class="easypiechart" id="easypiechart-teal" data-percent="84" ><span class="percent">84%</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-body easypiechart-panel">
                            <h4>访问数量</h4>
                            <div class="easypiechart" id="easypiechart-red" data-percent="46" ><span class="percent">46%</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.row-->

            <div class="copyrights">原网址 <a href="http://www.cssmoban.com/" >企业网站模板</a></div>

            <div class="row">
                <div class="col-md-5">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            线形图
                        </div>
                        <div class="panel-body">
                            <div id="morris-line-chart"></div>
                        </div>
                    </div>
                </div>

                <div class="col-md-7">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            条形图案例
                        </div>
                        <div class="panel-body">
                            <div id="morris-bar-chart"></div>
                        </div>

                    </div>
                </div>

            </div>



            <div class="row">
                <div class="col-md-9 col-sm-12 col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            面积图
                        </div>
                        <div class="panel-body">
                            <div id="morris-area-chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            圆环图案例
                        </div>
                        <div class="panel-body">
                            <div id="morris-donut-chart"></div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-12">

                </div>
            </div>
            <!-- /. ROW  -->






            <!-- /. ROW  -->


            <footer><p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>


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
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/Chart.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/chartjs.js"></script>

</body>

</html>
