<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2018/1/6
  Time: 10:00
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
    <title>Bootstrap HTML5 Admin Template</title>
    <!-- Bootstrap Styles-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" type="text/css">
    <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${pageContext.request.contextPath }/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

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
            <div id="sideNav" href class="">
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
         <%--   <ul class="nav" id="main-menu">

                <li>
                    <a href="user_list.html" class="active-menu"><i class="glyphicon glyphicon-user"></i>房间类型管理</a>
                </li>
                <li>
                    <a href="room.html"><i class="fa fa-dashboard"></i>房间管理</a>
                </li>
                <li>
                    <a href="operator.html"><i class="fa fa-edit"></i>操作员管理</a>
                </li>

            </ul>--%>

            <ul class="nav" id="main-menu">
                <li>
                    <%--<i class="glyphicon glyphicon-user"></i>房间类型管理--%>
                    <s:a action="RoomType_getAllType" namespace="/back" class="active-menu"><i class="glyphicon glyphicon-user"></i>房间类型管理</s:a>
                </li>
                <li>
                    <s:a action="Room_getAllRoom" namespace="/back" ><i class="fa fa-dashboard"></i>房间管理</s:a>
                    <%--<a href="room.html" class="active-menu"><i class="fa fa-dashboard"></i>房间管理</a>--%>
                </li>
                <li>
                    <s:a action="Operator_queryOperator" namespace="/back"><i class="fa fa-edit"></i>操作员管理</s:a>
                    <%--<a href="operator.html"><i class="fa fa-edit"></i>操作员管理</a>--%>
                </li>
            </ul>
        </div>

    </nav>
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                管理员管理
            </h1>
            <ol class="breadcrumb">
                <li>
                    <%--<a href="#">客房类型</a></li>--%>
                <a href="" role="button" data-toggle="modal" data-target="#add">添加房间类型</a>

                </li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="bs-example" data-example-id="hoverable-table">
                            <s:if test="#session.roomKinds == null || #session.roomKinds.size() == 0">
                                  没有任何信息
                            </s:if>
                            <s:else>
                                <table class="table table-hover table-bordered editable">
                                    <caption>客房类型</caption>
                                    <thead>
                                    <tr>
                                        <th style="width: 20%">#</th>
                                        <th style="width: 30%">房型</th>
                                        <th style="width: 30%">介绍</th>
                                        <th style="width: 20%">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                <s:iterator value="#session.roomKinds" var="type">
                                    <tr>
                                        <td> <s:property value="#type.kindId"/></td>
                                        <td><s:property value="#type.roomKind"/></td>
                                        <td><s:property value="#type.introduction"/></td>
                                        <td> <button  data-toggle="modal" data-target="#edit" onclick="edit(<s:property value="#type"/>)">
                                        <i class="fa fa-edit "></i> Edit</button>
                                            <button class="btn btn-danger"><a href='${pageContext.request.contextPath }/back/RoomType_delete?kindId=<s:property value="#type.kindId"/>' onclick="javascript: return confirm('真的要删除吗？');"><i class="fa fa-pencil"></i> Delete</a></button></td>
                                    </tr>
                                </s:iterator>
                                    </tbody>
                                </table>
                            </s:else>
                                <nav class="pull-right">
                                    <ul class="pagination">
                                        <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2 </a></li>
                                        <li><a href="#">3 </a></li>
                                        <li><a href="#">4 </a></li>
                                        <li><a href="#">5 </a></li>
                                        <li><a href="#">6 </a></li>
                                        <li><a href="#"><span aria-hidden="true">&raquo;</span></a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!-- Advanced Tables -->
                </div>
            </div>
        </div>

        <!-- 编辑Model -->
        <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel4">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">信息编辑</h4>
                    </div>
                    <div class="modal-body">
                        <form action="#">
                            <div class="form-group">
                                <label for="editType">类别</label>
                                <input type="text" id="editType" name="roomKind" class="form-control" >
                            </div>
                            <div class="form-group">
                                <label for="intro">介绍</label>
                                <input type="email" id="intro" name="introduction" class="form-control" >
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
        <!-- 添加Modal -->
        <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel1">添加房间类型</h4>
                    </div>
                    <div class="modal-body">
                        <s:form action="RoomType_addType" namespace="/back" method="POST">
                            <div class="form-group">
                                <label for="roomKind">房型</label>
                                <input type="text" id="roomKind" name="roomKind" class="form-control" placeholder="请输入房型">
                            </div>
                            <div class="form-group">
                                <label for="introduction">介绍</label>
                                <input type="text" id="introduction" name="introduction" class="form-control" placeholder="请输入介绍">
                            </div>
                    </div>
                    <div class="modal-footer">
                        <%--<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>--%>
                        <%--<button type="button" class="btn btn-primary">提交</button>--%>
                        <s:submit type="button" class="btn btn-primary" >提交</s:submit>
                    </div>
                    </s:form>
                </div>
            </div>
        </div>


        <div id="page-inner">
            <footer><p>Copyright &copy; Xuezhongpo</p></footer>
        </div>

    </div>
</div>
<script src="${pageContext.request.contextPath }/assets/js/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>
<script>
    $('edit').modal('hide');
    function edit(obj) {
        $('#editType').val(obj.roomKind).text();
        $('#intro').val(obj.introduction).text();
        $('#edit').modal('show');
    }
</script>
</body>
</html>
