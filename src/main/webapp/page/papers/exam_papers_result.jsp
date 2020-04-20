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
		<title>在线出题测试系统-用户试卷列表</title>
		<!-- 引入相关的css/js -->
		<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
		<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=path%>/js/json.js"></script>
		
		<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
		<style type="text/css">
			.bodyFont{
				width:700px;
				text-align:left;
				font-family:微软雅黑;
				font-size:16px;
				margin:0 auto;
			}
			
			.border-both{
				border-left: 1px dotted #d5d5d5;
				border-right: 1px dotted #d5d5d5;
			}
			
			.left_item{
				height: 167px;
			    width: 120px;
			    position: fixed;
			    float: left;
			    margin-top: 3%;
			    margin-left: 5%;
			}
		</style>
		
		<script type="text/javascript">
		
			$(function(){
				
				var radioArray = $("input[type='radio']");
				
				var jsonArray = JSON.parse('${papersMap.result}');
				var rightCount = 0,errorCount = 0;
				
				//答题者的回答结果
				$.each(jsonArray,function(index,value){
					$("input[type='radio'][data-id='"+value.question_id+"'][value='"+value.answer+"']")
					.parent().addClass("active");
				});
				
				//已回答的题目,判断正误
				$(".active>input[type='radio']").each(function(index,elm){
					var id = $(elm).attr("data-id");
					var sel = elm.value;
					var key = $(elm).attr("data-answer");
					var result = (sel == key) ? true : false;
					
					//统计正确错误题目数量
					if(result){
						rightCount++;
					}else{
						errorCount++;
					}
					
					//判断答题结果,显示错题解析
					$("#info-"+id).html("正确答案为“<b>"+key+"</b>”，您的回答"+
							(result?"<font color='green'>正确</font>":"<font color='red'>错误</font>"));
					if (!result){
						$("#resolve-"+id).show();
					}
				});
				
				var totalCount = jsonArray.length;
				$("#rightCount").text(rightCount);
				$("#errorCount").text(errorCount);
				
				//最后的分数为 (正确数量/总的题目数量)*分数
				var score = Math.round((rightCount/totalCount) * 100);
				if(score<60){
					$("#score").attr("color","red").text(score);
				}else{
					$("#score").attr("color","green").text(score);
				}
			});
			
		</script>
	</head>
	<body>
		
		<div class="left_item text-center">
			<ul class="list-group">
			  <li class="list-group-item"><b>信息统计</b></li>
			  <li class="list-group-item">正确：<font color="green" id="rightCount">10</font></li>
			  <li class="list-group-item">错误：<font color="red" id="errorCount">10</font></li>
			  <li class="list-group-item">分数：<font color="green" id="score">100</font></li>
			</ul>
		</div>
		<div class="container border-both">
        
            <div>
                <h2 class="text-center">${papersMap.papersDetail.college}-试卷</h2>
                <div class = "text-center">
                    <span class="col-md-6">考试科目：${papersMap.papersDetail.dic_name}</span>
                    <span class="col-md-6">出卷人:${papersMap.papersDetail.truename}</span>
                </div>
            </div>
            <br/>
            <br/>
            <div class = "bodyFont">
				<form id ="examForm">
				
					<c:forEach varStatus="row" var="papersEml" items="${papersMap.data}">
						<table>
							<tr>
								<td>${papersEml.question}</td>
							</tr>
							<tr>
								<td style="padding-left:30px;">
									<div class="btn-group" data-toggle="buttons">
									  <label class="btn btn-primary">
									    <input type="radio" data-id="${papersEml.id}" data-answer="${papersEml.answer}" 
									    	name="select-${papersEml.id}" value = "A" autocomplete="off"> 选项A
									  </label>
									  <label class="btn btn-primary">
									    <input type="radio" data-id="${papersEml.id}" data-answer="${papersEml.answer}" 
									    	name="select-${papersEml.id}" value = "B" autocomplete="off"> 选项B
									  </label>
									  <label class="btn btn-primary">
									    <input type="radio" data-id="${papersEml.id}" data-answer="${papersEml.answer}" 
									    	name="select-${papersEml.id}" value = "C" autocomplete="off"> 选项C
									  </label>
									  <label class="btn btn-primary">
									    <input type="radio" data-id="${papersEml.id}" data-answer="${papersEml.answer}" 
									    	name="select-${papersEml.id}" value = "D" autocomplete="off"> 选项D
									  </label>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<span id="info-${papersEml.id}" style="padding:30px;line-height: 40px;">
									</span>
									<div id="resolve-${papersEml.id}" style="display: none;font-size: 12px;">
										${papersEml.resolve}
									</div>
								</td>
							</tr>
						</table>
						<br/>
					</c:forEach>
					
					<br/>
					
				</form>
            </div>
        </div>
        
	</body>
</html>