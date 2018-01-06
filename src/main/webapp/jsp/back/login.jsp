<%--
  Created by IntelliJ IDEA.
  User: ThinKPad
  Date: 2018/1/5
  Time: 22:40
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
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->

    <!-- Google Fonts-->>
</head>
<body>
<div id="page-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <s:form class="form-horizontal" action="Admin_login" namespace="/back">
                    <span class="heading">管理员登录</span>
                    <div class="form-group">
                        <input type="text" class="form-control" id="inputEmail3"  name="account" placeholder="账 号">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="form-group help">
                        <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="密　码">
                        <i class="fa fa-lock"></i>
                        <a href="#" class="fa fa-question-circle"></a>
                    </div>
                    <s:submit  cssStyle="width:200px;margin-left: 180px"  Class="btn btn-default btn-lg" name="name" value="登录"></s:submit>

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
    $(function() {
        $(':checkbox[type="checkbox"]').each(function () {
            $(this).click(function () {
                if ($(this).attr('checked')) {
                    $(':checkbox[type="checkbox"]').removeAttr('checked');
                    $(this).attr('checked', 'checked');
                    alert(this.id);
                }
            });
        });


        function display_alert() {
            var myselect = document.getElementById("checkbox1");
            //  var index = myselect.selectedIndex;
            // alert(myselect.options[index].value);
            if (myselect.checked) {
                window.location.href = "index.html";
            } else
                window.location.href = "user_list.html";
        }
    });
</script>

</body>
</html>

