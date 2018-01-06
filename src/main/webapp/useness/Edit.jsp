<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/reset.css">
<link rel="stylesheet" type="text/css" href="../css/public.css">
<link rel="stylesheet" type="text/css" href="../css/content.css">
</head>

<body marginwidth="0" marginheight="0">


<div class="container">
		<div class="public-nav">您当前的位置：<a href="">首页</a>><a href="">编辑学生信息</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>增加学生信息
				</h3>
			</div>
			<div class="public-content-cont">
			<form action="${pageContext.request.contextPath }/User_update" method="post">
				<div class="form-group">
					<label for="">ID:</label>
					<input class="form-input-txt" readonly="readonly" type="text" name="id" value='<s:property value="#session.user.userId"/>' />
				</div>
				<div class="form-group">
					<label for="">姓名:</label>
					<input class="form-input-txt" type="text" name="name" value='<s:property value="#session.user.account"/>' />
				</div>
				<div class="form-group">
					<label for="">学号:</label>
					<input class="form-input-txt" type="text" name="number" value='<s:property value="#session.user.phone"/>' />
				</div>
				<div class="form-group">
					<label for="">密码:</label>
					<input class="form-input-txt" type="text" name="password" value='<s:property value="#session.user.password"/>' />
				</div>
				<div class="form-group">
					<label for="">介绍:</label>
					<input class="form-input-txt" type="text" name="mes" value='<s:property value="#session.user.idCard"/>' />
				</div>
			
		
				<div class="form-group" style="margin-left:150px;">
					<input type="submit" class="sub-btn" value="提  交" />
					<input type="reset" class="sub-btn" value="重  置" />
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>