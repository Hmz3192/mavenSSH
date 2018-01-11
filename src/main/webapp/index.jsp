<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->

    <script>
        function singn(cb) {
            for (var j = 0; j < 2; j++) {
                if (eval("document.form1.check[" + j + "].checked")) {
                    document.form1.check[j].checked = false;
                    if (j == cb) {
                        document.form1.check[j].checked = true;
                    }
                }
            }
        }
    </script>
</head>
<body>
<div id="page-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <s:form class="form-horizontal" action="Admin_login" name="form1" namespace="/back">
                    <span class="heading">登录</span>
                    <div class="form-group">
                        <input type="text" class="form-control" id="inputEmail3"  name="account" placeholder="账 号">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="form-group help">
                        <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="密　码">
                        <i class="fa fa-lock"></i>
                        <a href="#" class="fa fa-question-circle"></a>
                    </div>
                    <div class="main-checkbox" style="margin-left: 50px">
                        <input type="checkbox"  id="checkbox1" name="checkbox" value="工作人员" onClick="javascript:singn(0)"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">工作人员</span>

                    <div class="main-checkbox">
                        <input type="checkbox"  id="checkbox2"  name="checkbox" value="管理员"  onClick="javascript:singn(1)"/>
                        <label for="checkbox2"></label>
                    </div>
                    <span class="text">管理员</span>

                    <s:submit  cssStyle="width:100px;margin-left: 180px"  Class="btn btn-default btn-lg" name="name" value="登录"></s:submit>
                    <!--
                    <input type="button" class="loginlog btn-primary" value="立即登录" onclick="display_alert()"/>
                    <select id="select">
                    <option value="1">工作人员</option>
                    <option value="2">管理员</option>
                    </select>


                    <div style="line-height:1.5em;padding: 5px 0;font-size: 14px;">
                    <ul class="mui-table-view">
                    <li class="mui-input-row"><input type="checkbox" name="quesA" id="quesA" value=""/>A.我比失恋还难受</li>
                    <li class="mui-input-row"><input type="checkbox" name="quesB" id="quesB" value="" />B.科比的退役是可惜，但是很快会有新人代替他</li>
                    <li class="mui-input-row"><input type="checkbox" name="quesC" id="quesC" value="" />C.科比就是矫情，退役还搞这么大的排场</li>
                    <li class="mui-input-row"><input type="checkbox" name="quesD" id="quesD" value="" />D.其他，_________________</li>
                    </ul>
                    </div>
                    -->
                </s:form>
            </div>
        </div>
    </div>
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<!-- jQuery Js -->
<script src="${pageContext.request.contextPath }/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="${pageContext.request.contextPath }/assets/js/jquery.metisMenu.js"></script>
<!-- Custom Js -->
<script src="${pageContext.request.contextPath }/assets/js/custom-scripts.js"></script>
<script type="text/javascript">

</script>

</body>
</html>