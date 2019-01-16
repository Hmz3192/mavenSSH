<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>瀑布流页面1</title>
	<script type="text/javascript" src="../common/js/waterfall.js"></script>
	<script type="text/javascript" src="../common/js/jquery-1.8.3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../common/css/loading.css" />
	<style type="text/css">
		.left{
			width:300px;
			height:2000px;
			background-color:#00FFAA;
			float:left;
		}

		.right{
			width:1000px;
			border:1px solid black;
			margin-left:320px;
		}
	</style>
</head>
<body>
<div id="left" class="left"></div>
<div id="right" class="right">
	<h1  style="text-align: center;">学生列表</h1>
	<!-- <div id="a" style="height:100px;background-color:pink;position:fixed;left:72px;top:10px;width:200px; "></div> -->
	<div   style="width:800px;height:150px;background-color:red;">
		<table border="1px solid black" width="800px">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>AGE</th>
			</tr>
			<c:forEach items="${studentList }" var="s">
				<tr>
					<td>${s.id }</td>
					<td>${s.name }</td>
					<td>${s.age }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div style="width:800px;height:150px;background-color:green;margin-top:10px;">
		<table border="1px solid black" width="800px">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>AGE</th>
			</tr>
			<c:forEach items="${studentList }" var="s">
				<tr>
					<td>${s.id }</td>
					<td>${s.name }</td>
					<td>${s.age }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div   style="width:800px;height:150px;background-color:blue;margin-top:10px;">

		<table border="1px solid black" width="800px">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>AGE</th>
			</tr>
			<c:forEach items="${studentList }" var="s">
				<tr>
					<td>${s.id }</td>
					<td>${s.name }</td>
					<td>${s.age }</td>
				</tr>
			</c:forEach>
		</table>
		<span id="waterfallflag"></span>
	</div>
	<!-- 动态loading效果 -->
	<div class="spinner">
		<div class="rect1"></div>
		<div class="rect2"></div>
		<div class="rect3"></div>
		<div class="rect4"></div>
		<div class="rect5"></div>
	</div>
	<!-- 动态加载 -->
	<div id="part1"></div>
</div>

</body>
<script type="text/javascript">
    var flagPos = $("#waterfallflag").offset().top;
    $(window).scroll(function() {
        if ((getScrollTop() + getClientHeight()) > flagPos) {
            $(".spinner").show();
            $.post("waterfall/waterfall", function(data) {
                if (data != null) {
                    setTimeout(function() {
                        $(".spinner").hide("normal");
                        $("#part1").append(data);
                        $("#part1").removeAttr("id");
                    }, 800);
                }
            }, "html");
            flagPos = getScrollHeight();
        }
    });
</script>
</html>