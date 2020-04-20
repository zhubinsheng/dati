<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
		<!-- jQuery -->
		<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
		<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
		
		<!-- css -->
		<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
		
		<style type="text/css">
			body {
				padding: 10px;
			}
			
			.pro_name a{color: #4183c4;}
			.osc_git_title{background-color: #fff;}
			.osc_git_box{background-color: #fff;}
			.osc_git_box{border-color: #E3E9ED;}
			.osc_git_info{color: #666;}
			.osc_git_main a{color: #9B9B9B;}
		</style>
	</head>
	<body>
		<table class="table table-bordered table-hover">
			<tr>
				<th colspan="4" class="text-center"><h3>开发者信息</h3></th>
			</tr>
			<tr>
				<th width="15%">姓名</th>
				<td width="35%">宋建烜</td>
				<th width="15%">性别</th>
				<td width="35%">男</td>
			</tr>
	
			<tr>
				<th width="15%">学院</th>
				<td width="35%">职业技术教育学院</td>
				<th width="15%">专业</th>
				<td width="35%">软件工程</td>
			</tr>
	
			<tr>
				<th width="15%">联系电话</th>
				<td width="35%">18649868046</td>
				<th width="15%">Email</th>
				<td width="35%">1649991905@qq.com</td>
			</tr>
	
			<tr>
				<th width="15%">联系地址</th>
				<td width="35%" colspan="3">福建省福州市闽侯县</td>
			</tr>
	
		</table>
		<hr/>
		<script src='http://git.oschina.net/nn200433/test_on_line/widget_preview'></script>
	</body>
</html>