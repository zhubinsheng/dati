<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%
	String path = request.getContextPath();
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线出题测试系统</title>
		<!-- 引入相关的css/js -->
		<script src="<%=path%>/js/jquery.min.js"></script>
		
		<style type="text/css">
			.container {
				position: absolute;
				top: 50%;
				left: 50%;
				height: 150px;
				width: 800px;
				border: 1px solid #4FB4DE;
				margin: -75px 0px 0px -400px;
			}
			
			.head {
				height: 20px;
				width: 99%;
				background-color: #4FB4DE;
				color: white;
				text-align: center;
				margin: 2px 0px 0px 4px;
				padding-top: 4px;
			}
			
			.aLable {
				font-size: 12px;
				display: inline-block;
				margin-top:10px;
			}
		</style>
		
		<script type="text/javascript">
			window.onload=function(){
				jumpWeb();
			}
			var second=4;
			function jumpWeb(){
				if (second<=1){
					window.location.href="<%=path%>/index.jsp";
				}else{
					second--;
				}
				$("#time").html(second);
				setTimeout(jumpWeb,1000);
			}
		</script>
	</head>
	<body>
		<div class="container">
			<div class="head">
				<b>信息提示</b>
			</div>
			<div style="text-align: center;">
				<br />
				<b style="font-size: 24px;">您还未登录系统,请先登录!</b>
				<br />
				<br />
				<span style="font-size: 15px;"><b id="time">3</b>秒后将为您自动跳转到登录页</span>
				<br />
				<a href="<%=path%>/index.jsp" class="aLable"">如果您的浏览器没有自动跳转,请点击这里</a>
			</div>
		</div>
	</body>
</html>