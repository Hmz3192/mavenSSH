<%--
  Created by IntelliJ IDEA.
  User: ThinKPad
  Date: 2018/1/5
  Time: 23:30
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
            <ul class="nav" id="main-menu">

                <li>
                    <%--<a class="active-menu" href=""></a>--%>
                    <s:a namespace="/back"   action="Back_toOperator"></s><i class="fa fa-dashboard"></i> 入住登记</s:a>
                </li>
                <li>
                    <a href="#"><i class="glyphicon glyphicon-list-alt"></i><span class="fa arrow"></span> 客户管理</a>
                    <ul class="nav nav-second-level">
                        <li>
                            <s:a action="User_getBookingUser"   namespace="/back">预定管理</s:a>
                        </li>
                        <li>
                            <s:a action="User_getAllUser"  class="active-menu" namespace="/back">客户管理</s:a>
                        </li>
                        <li>
                            <s:a action="Back_tochart" namespace="/back">业务统计</s:a>

                        </li>
                    </ul>
                </li>


            </ul>

        </div>

    </nav>
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                客户管理
            </h1>
            <ol class="breadcrumb">
                <li><a href="#">主页</a></li>
                <li><a href="#">客户管理</a></li>
            </ol>
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="bs-example" data-example-id="hoverable-table">
                                <s:if test="#session.userSales == null || #session.userSales.size() == 0">
                                     没有任何信息
                                </s:if>
                                <s:else>
                                <table class="table table-hover table-bordered editable">
                                    <caption>客户信息</caption>
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>姓名</th>
                                        <th>房型</th>
                                        <th>房号</th>
                                        <th>入住日期</th>
                                        <th>预计退房日期</th>
                                        <th>费用总计</th>
                                        <th>VIP</th>
                                        <th>入住状态</th>
                                        <th>账单状态</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <s:iterator value="#session.userSales" var="sale">
                                        <s:if test="#sale.vip == 1">
                                            <tr class="danger">
                                        </s:if>
                                        <s:else>
                                            <tr>
                                        </s:else>
                                        <td><s:property value="#sale.id"/></td>
                                        <td><s:property value="#sale.name"/></td>
                                        <td><s:property value="#sale.type"/></td>
                                        <td><s:property value="#sale.roomLocation"/></td>
                                        <td><s:property value="#sale.inDay"/></td>
                                        <td><s:property value="#sale.outDay"/></td>
                                        <td><s:property value="#sale.money"/></td>
                                        <s:if test="#sale.vip == 1">
                                            <td>超级VIP</td>
                                        </s:if>
                                        <s:else>
                                            <td>普通VIP</td>
                                        </s:else>
                                        <td><s:property value="#sale.liveState"/></td>
                                        <td><s:property value="#sale.monenyState"/></td>
                                        <td> <button class="btn btn-primary" data-toggle="modal" data-target="#myModal4"><i class="fa fa-edit "></i> 结账</button>
                                           <%-- <button class="btn btn-danger"><i class="fa fa-pencil"></i> Delete</button></td>--%>
                                    </tr>
                                        </s:iterator>
                                    </tbody>
                                </table>
                                </s:else>
                               <%--     <tr>
                                        <th scope="row">2</th>
                                        <td>特色标间</td>
                                        <td>李先生</td>
                                        <td>12.4</td>
                                        <td>12.5</td>
                                        <td>240</td>
                                        <td> <button class="btn btn-primary" data-toggle="modal" data-target="#myModal4"><i class="fa fa-edit "></i> Edit</button>
                                            <button class="btn btn-danger"><i class="fa fa-pencil"></i> Delete</button></td>
                                    </tr> <tr>
                                        <th scope="row">3</th>
                                        <td>特色标间</td>
                                        <td>李先生</td>
                                        <td>12.4</td>
                                        <td>12.5</td>
                                        <td>240</td>
                                        <td> <button class="btn btn-primary" data-toggle="modal" data-target="#myModal4"><i class="fa fa-edit "></i> Edit</button>
                                            <button class="btn btn-danger"><i class="fa fa-pencil"></i> Delete</button></td>
                                    </tr> <tr>
                                        <th scope="row">4</th>
                                        <td>特色标间</td>
                                        <td>李先生</td>
                                        <td>12.4</td>
                                        <td>12.5</td>
                                        <td>240</td>
                                        <td> <button class="btn btn-primary" data-toggle="modal" data-target="#myModal4"><i class="fa fa-edit "></i> Edit</button>
                                            <button class="btn btn-danger"><i class="fa fa-pencil"></i> Delete</button></td>
                                    </tr> <tr>
                                        <th scope="row">5</th>
                                        <td>特色标间</td>
                                        <td>李先生</td>
                                        <td>12.4</td>
                                        <td>12.5</td>
                                        <td>240</td>
                                        <td> <button class="btn btn-primary" data-toggle="modal" data-target="#myModal4"><i class="fa fa-edit "></i> Edit</button>
                                            <button class="btn btn-danger"><i class="fa fa-pencil"></i> Delete</button></td>
                                    </tr> <tr>
                                        <th scope="row">6</th>
                                        <td>特色标间</td>
                                        <td>李先生</td>
                                        <td>12.4</td>
                                        <td>12.5</td>
                                        <td>240</td>
                                        <td> <button class="btn btn-primary" data-toggle="modal" data-target="#myModal4"><i class="fa fa-edit "></i> Edit</button>
                                            <button class="btn btn-danger"><i class="fa fa-pencil"></i> Delete</button></td>
                                    </tr> <tr>
                                        <th scope="row">7</th>
                                        <td>特色标间</td>
                                        <td>李先生</td>
                                        <td>12.4</td>
                                        <td>12.5</td>
                                        <td>240</td>
                                        <td> <button class="btn btn-primary" data-toggle="modal" data-target="#myModal4"><i class="fa fa-edit "></i> Edit</button>
                                            <button class="btn btn-danger"><i class="fa fa-pencil"></i> Delete</button></td>
                                    </tr> <tr>
                                        <th scope="row">8</th>
                                        <td>特色标间</td>
                                        <td>李先生</td>
                                        <td>12.4</td>
                                        <td>12.5</td>
                                        <td>240</td>
                                        <td> <button class="btn btn-primary" data-toggle="modal" data-target="#myModal4"><i class="fa fa-edit "></i> Edit</button>
                                            <button class="btn btn-danger"><i class="fa fa-pencil"></i> Delete</button></td>--%>

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
                        <form action="#">
                            <div class="form-group">
                                <label for="addname">用户名</label>
                                <input type="text" id="addname" class="form-control" placeholder="用户名">
                            </div>
                            <div class="form-group">
                                <label for="addpassword">用户密码</label>
                                <input type="text" id="addpassword" class="form-control" placeholder="请输入用户密码">
                            </div>
                            <div class="form-group">
                                <label for="addpassword1">确认用户密码</label>
                                <input type="text" id="addpassword1" class="form-control" placeholder="请确认输入用户密码">
                            </div>
                            <div class="form-group">
                                <label for="addemail">请输入用户邮箱</label>
                                <input type="email" id="addemail" class="form-control" placeholder="请输入用户邮箱">
                            </div>
                            <div class="form-group">
                                <label for="addyonghuzu">所属用户组</label>
                                <select id="addyonghuzu" class="form-control">
                                    <option>限制会员</option>
                                    <option>新手上路</option>
                                    <option>组册会员</option>
                                    <option>中级会员</option>
                                    <option>高级会员</option>
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

        <div id="page-inner">
            <footer><p>Copyright &copy; Xuezhongpo</p></footer>
        </div>

    </div>
</div>
<script src="${pageContext.request.contextPath }/assets/js/jquery-1.10.2.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>
<script>
    $(function() {
//$('.edit').handleTable({"cancel" : "<span class='glyphicon glyphicon-remove'></span>"});
        $('.editable').handleTable({
            "handleFirst" : true,
            "cancel" : " <span class='glyphicon glyphicon-remove'></span> ",
            "edit" : " <span class='glyphicon glyphicon-edit'></span> ",
            "add" : " <span class='glyphicon glyphicon-plus'></span> ",
            "save" : " <span class='glyphicon glyphicon-saved'></span> ",
            "confirm" : " <span class='glyphicon glyphicon-ok'></span> ",
            "operatePos" : -1,
            "editableCols" : [1,2,3,4],
            "order": ["add","edit"],
            "saveCallback" : function(data, isSuccess) { //这里可以写ajax内容，用于保存编辑后的内容
//data: 返回的数据
//isSucess: 方法，用于保存数据成功后，将可编辑状态变为不可编辑状态
                var flag = true; //ajax请求成功（保存数据成功），才回调isSuccess函数（修改保存状态为编辑状态）
                if(flag) {
                    isSuccess();
                    alert(data + " 保存成功");
                } else {
                    alert(data + " 保存失败");
                }
                return true;
            },
            "addCallback" : function(data,isSuccess) {
                var flag = true;
                if(flag) {
                    isSuccess();
                    alert(data + " 增加成功");
                } else {
                    alert(data + " 增加失败");
                }
            },
            "delCallback" : function(isSuccess) {
                var flag = true;
                if(flag) {
                    isSuccess();
                    alert("删除成功");
                } else {
                    alert("删除失败");
                }
            }
        });
    });
</script>
</body>
</html>

