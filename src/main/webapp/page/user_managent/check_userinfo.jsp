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
		</style>
		
		<script type="text/javascript">
			$(function(){
				
				Date.prototype.Format = function (fmt) { //author: meizz 
				    var o = {
				        "M+": this.getMonth() + 1, //月份 
				        "d+": this.getDate(), //日 
				        "h+": this.getHours(), //小时 
				        "m+": this.getMinutes(), //分 
				        "s+": this.getSeconds(), //秒 
				        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
				        "S": this.getMilliseconds() //毫秒 
				    };
				    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
				    for (var k in o)
				    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
				    return fmt;
				}
				
				var birthday = "${userBean.birthday}";
				$("#birthday").text(function(){
					return (new Date(birthday * 1000)).Format("yyyy-MM-dd");
				});
			})
		</script>
	</head>
	<body>
		<form id="validate">
			<table class="table table-bordered table-hover">
				<tr>
					<th colspan="4" class="text-center"><h3>个人信息</h3></th>
				</tr>
				<tr>
					<th width="15%">帐号</th>
					<td width="35%">${userBean.username}</td>
					<th width="15%">姓名</th>
					<td width="35%">${userBean.truename}</td>
				</tr>
				
				<tr>
					<th width="15%">性别</th>
					<td width="35%">${userBean.sex}</td>
					<th width="15%">出生日期</th>
					<td width="35%" id="birthday"></td>
				</tr>
				
				<tr>
					<th width="15%">联系电话</th>
					<td width="35%">${userBean.tel}</td>
					<th width="15%">Email</th>
					<td width="35%">${userBean.email}</td>
				</tr>
	
				<tr>
					<th width="15%">联系地址</th>
					<td width="35%" colspan="3">${userBean.address}</td>
				</tr>
	
				<tr>
					<th width="15%">权限编号</th>
					<td width="35%">${userBean.role}</td>
					<th width="15%">角色编号</th>
					<td width="35%">${userBean.roleid}</td>
				</tr>
	
			</table>
		</form>
	</body>
</html>