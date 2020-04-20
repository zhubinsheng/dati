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
		
			body{
				padding: 10px;
			}
			
			.input-submit{
				display: none;
			}
			
			th{
				vertical-align: middle!important;
			}
			
			.form-group{
				margin-bottom: 0px!important;
			}
		</style>
		
		<script type="text/javascript">
			$(function(){
				
				$("#btn-change").click(function(){
					$(".user-info").hide();
					$(".input-submit").show();
				});
				
				
				$("#btn-save").click(function(){
					
					var truename = $("input[name='truename']").val();
					var tel = $("input[name='tel']").val();
					var email = $("input[name='email']").val();
					var address = $("input[name='address']").val();
					
					if (truename == "" || tel == "" || email == "" || address == ""){
						alert("请补全个人信息!");
						return ; 
					}
					
					var pattern = /\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}/;
					if(!pattern.test(email)){
						alert("邮箱地址格式有误!");
						return ; 
					}
					
					pattern = /(13\d|14[57]|15[^4,\D]|17[678]|18\d)\d{8}|170[059]\d{7}/;
					if(!pattern.test(tel)){
						alert("手机号码格式有误!");
						return ; 
					}
					
					if(window.confirm('确定修改信息？')){
						
						var url = "<%=path%>/userAction!updateUserInfo";
						var data = {
							"truename" : truename,
							"tel" : tel,
							"email" : email,
							"address" : address,
							"user_id" : "${userInfo.id}",
						};
						
						$.ajax({
							"url" : url,
							"data" : data,
							"type" : "POST",
							"dataType" : "json",
							"success" : function(jsonStr){
								if (jsonStr.flag){
									alert("个人信息修改成功!");
									window.top.location.reload(true);
								}else{
									alert("个人信息修改失败!失败原因:"+jsonStr.msg);
								}
							}
						});
						
		            	return true;
		            }else{
		            	return false;
					}
					
				});
				
			});
		</script>
		
	</head>
	<body>
		<form id="validate">
			<table class="table table-bordered table-hover">
				<tr><th colspan="4" class="text-center"><h3>个人信息</h3></th></tr>
				<tr>
					<th width="15%">帐号</th>
					<td width="35%">${userInfo.username}</td>
					<th width="15%">姓名</th>
					<td width="35%">
						<div class="user-info">
							${userInfo.truename}
						</div>
						<div class="input-submit">
							<input type="text" class="form-control" name="truename" 
								value="${userInfo.truename}" placeholder="${userInfo.truename}" />
						</div>
					</td>
				</tr>
		
				<tr>
					<th width="15%">权限</th>
					<td width="35%" colspan="3">${userInfo.role}</td>
				</tr>
		
				<tr>
					<th width="15%">联系电话</th>
					<td width="35%">
						<div class="user-info">
							${userInfo.tel}
						</div>
						<div class="input-submit">
							<input type="text" class="form-control" name="tel"
							value="${userInfo.tel}" placeholder="${userInfo.tel}" />
						</div>
					</td>
					<th width="15%">Email</th>
					<td width="35%">
						<div class="user-info">
							${userInfo.email}
						</div>
						<div class="input-submit">
							<input type="text" class="form-control" name="email"
							value="${userInfo.email}"  placeholder="${userInfo.email}" />
						</div>
					</td>
				</tr>
		
				<tr>
					<th width="15%">联系地址</th>
					<td width="35%" colspan="3">
						<div class="user-info">
							${userInfo.address}
						</div>
						
						<div class="input-submit">
	                    	<input type="text" class="form-control" name="address"
	                    	value="${userInfo.address}" placeholder="${userInfo.address}" />
						</div>
					</td>
				</tr>
		
				<tr>
					<th width="15%">添加时间</th>
					<td width="35%">2017年3月16日 16:21:28</td>
					<th width="15%">添加人员帐号</th>
					<td width="35%">测试帐号</td>
				</tr>
				
				<tr>
					<td colspan="4" class="text-center">
						<div class="user-info">
							<button id="btn-change" type="button" class="btn btn-primary col-md-12">修改个人信息</button>
						</div>
						<div class="input-submit">
							<button id="btn-save" type="button" class="btn btn-success col-md-12">保存</button>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>