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
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>无标题文档</title>
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/top.css"/>
		<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
		<script type="text/javascript" src="<%=path%>/js/json.js"></script>
		<script type="text/javascript">
			$(function(){
				var url = "<%=path%>/papersAction!getAllWaitPaperCount"
				$.ajax({
					'url' : url,
					'data' : {"user_id":"${userInfo.id}"},
					'type' : 'POST',
					'dataType' : 'json',
					'success' : function(jsonStr){
						$("#msg").text(jsonStr.waitCount);
					}
				});
				
				$("#logOut").click(function(){
					if(window.confirm("确认退出系统?")){
						var url = "<%=path%>/loginAction!logOut";
						$.post(url,function(jsonStr){
							//var obj = JSON.parse(jsonStr);
							if (jsonStr.flag){
								window.top.location.href="<%=path%>/index.jsp";
							}else{
								alert("系统登出失败,请重试!");
							}
						},"json");
						return true;
					}else{
						return false;
					}
				});
			});
		</script>
	</head>
	<body>
		<div class="topleft">
			<a href="javascript:void(0);"></a>
		</div>
		<div class="topright">
			<ul>
				<li>
					<span> 
						<img src="<%=path%>/images/help.png" title="帮助" class="helpimg" />
					</span> 
					<a href="javascript:void(0);">帮助</a>
				</li>
				<li>
					<a href="javascript:void(0);">关于</a>
				</li>
				<li>
					<a href="javascript:void(0);" id="logOut">退出</a>
				</li>
			</ul>
			<div class="user">
				<span>${userInfo.truename}</span> <i>待考</i> <b id="msg">5</b>
			</div>
		</div>
	</body>
</html>
