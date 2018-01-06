<%--
  Created by IntelliJ IDEA.
  User: ZJNU-Hmz
  Date: 2018/1/6
  Time: 9:58
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
            <a class="navbar-brand" href="#"><strong><i class="icon fa fa-plane"></i> Love&Peace</strong></a>
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
          <%--  <ul class="nav" id="main-menu">

                <li>
                    <a href="user_list.html"><i class="glyphicon glyphicon-user"></i>房间类型管理</a>
                </li>
                <li>
                    <a href="room.html" ><i class="fa fa-dashboard"></i>房间管理</a>
                </li>
                <li>
                    <a href="operator.html" class="active-menu"><i class="fa fa-edit"></i>操作员管理</a>
                </li>
            </ul>--%>
              <ul class="nav" id="main-menu">

                  <li>
                      <%--<i class="glyphicon glyphicon-user"></i>房间类型管理--%>
                      <s:a action="RoomType_getAllType" namespace="/back" ><i class="glyphicon glyphicon-user"></i>房间类型管理</s:a>
                  </li>
                  <li>
                      <s:a action="Room_getAllRoom" namespace="/back" ><i class="fa fa-dashboard"></i>房间管理</s:a>
                      <%--<a href="room.html" class="active-menu"><i class="fa fa-dashboard"></i>房间管理</a>--%>
                  </li>
                  <li>
                      <s:a action="Operator_queryOperator" namespace="/back" class="active-menu"><i class="fa fa-edit"></i>操作员管理</s:a>
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
                    <%--<a href="#">操作员管理</a></li>--%>
                <a href="" role="button" data-toggle="modal" data-target="#myModal">添加用户</a>
                </li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="bs-example" data-example-id="hoverable-table">
                                <s:if test="#session.hotelOperators == null || #session.hotelOperators.size() == 0">
                                    没有任何信息
                                </s:if>
                                <s:else>
                                <table class="table table-hover table-bordered editable">
                                    <caption>操作员设置</caption>
                                    <thead>
                                    <tr>
                                        <th style="width: 5%">#</th>
                                        <th style="width: 5%">工号</th>
                                        <th style="width: 15%">姓名</th>
                                        <th style="width: 15%">级别</th>
                                        <th style="width: 15%">身份验证</th>
                                        <th style="width: 15%">联系电话</th>
                                        <th style="width: 25%">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <s:iterator value="#session.hotelOperators" var="Operators">
                                        <s:if test="#Operators.rankValue == 1">
                                            <tr class="danger">
                                        </s:if>
                                        <s:else>
                                            <tr>
                                        </s:else>
                                        <td><s:property value="#Operators.operateId"/></td>
                                        <td><s:property value="#Operators.operateId"/></td>
                                        <td><s:property value="#Operators.account"/></td>
                                        <s:if test="#Operators.rankValue == 0">
                                        <td>普通管理员</td>
                                        </s:if>
                                        <s:else>
                                            <td>超级管理员</td>
                                        </s:else>
                                        <s:if test="#Operators.idCard != null">
                                            <td>已验证</td>
                                        </s:if>
                                        <s:else>
                                            <td>已验证未验证</td>
                                        </s:else>
                                        <td><s:property value="#Operators.phone"/></td>
                                        <td> <button class="btn btn-primary" data-toggle="modal" data-target="#myModal4"><i class="fa fa-edit "></i> Edit</button>
                                            <button class="btn btn-danger"><a href='${pageContext.request.contextPath }/back/Operator_delete?operateId=<s:property value="#Operators.operateId"/>' onclick="javascript: return confirm('真的要删除吗？');"><i class="fa fa-pencil"></i> Delete</a></button></td>
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

        <!-- Model -->
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">添加用户</h4>
                    </div>
                    <div class="modal-body">
                        <s:form action="Operator_addOperator" namespace="/back" method="POST">
                            <div class="form-group">
                                <label for="account">用户名</label>
                                <input type="text" id="account"  name="account" class="form-control" placeholder="用户名">
                            </div>
                            <div class="form-group">
                                <label for="password">用户密码</label>
                                <input type="text" id="password" name="password" class="form-control" placeholder="请输入用户密码">
                            </div>
                            <div class="form-group">
                                <label for="addpassword1">确认用户密码</label>
                                <input type="text" id="addpassword1" class="form-control" placeholder="请确认输入用户密码">
                            </div>
                            <div class="form-group">
                                <label for="phone">联系电话</label>
                                <input type="number" id="phone" name="phone" class="form-control" placeholder="请输入电话">
                            </div>
                            <div class="form-group">
                                <label for="idCard">身份证号</label>
                                <input type="number" id="idCard" name="idCard" class="form-control" placeholder="请输入身份证号">
                            </div>
                            <div class="form-group">
                                <h4 style="color: red">1:超级操作员/0：普通操作员</h4>
                                <label for="rankValue">所属用户组</label>
                                <select id="rankValue" name="rankValue" class="form-control">
                                    <option>0</option>
                                    <option>1</option>
                                </select>
                            </div>
                    </div>
                    <div class="modal-footer">
                        <%--<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>--%>
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

</script>
</body>
</html>

