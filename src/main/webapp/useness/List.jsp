<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/public.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/content.css">
    <script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body marginwidth="0" marginheight="0">
<div class="container">
    <div class="public-nav">您当前的位置：<a href="">首页</a>><a href="">查看学生信息</a></div>
    <div class="public-content">
        <div class="public-content-header">
            <h3>学生信息</h3>
        </div>
        <div class="public-content-cont">
            <s:if test="#session.userList == null || #session.userList.size() == 0">
                没有任何信息
            </s:if>
            <s:else>
                <table class="public-cont-table">
                    <tr>
                        <th style="width:20%">id
                        </td>
                        <th style="width:20%">学号</th>
                        <th style="width:20%">姓名</th>
                        <th style="width:20%">介绍</th>
                        <th style="width:20%">操作</th>

                    </tr>
                    <s:iterator value="#session.userList" var="usr">
                        <tr>
                            <th>
                                <s:property value="#usr.userId"/>
                            </th>
                            <th>
                               <s:property value="#usr.account"/>
                            </th>
                            <th>
                               <s:property value="#usr.phone"/>
                            </th>
                            <th>
                              <s:property value="#usr.idCard"/>
                            </th>
                            <th>
                                <div class="page">
                                    <a class="page-btn" href="<%=path%>/User_edit?id=<s:property value="#usr.userId"/>">编辑</a>
                                    &nbsp;&nbsp;&nbsp;
                                    <a class="page-btn" href='<%=path %>/User_delete?id=<s:property value="#usr.userId"/>' onclick="javascript: return confirm('真的要删除吗？');">删除</a>
                                </div>
                            </th>
                        </tr>
                    </s:iterator>
                </table>
                <input type="hidden" value='<s:property value="#usr.password"/>'>
            </s:else>
        </div>
    </div>
</div>
</div>
</body>
</html>