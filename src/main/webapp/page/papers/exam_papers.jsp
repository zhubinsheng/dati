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
		</style>
		
		<script type="text/javascript">
            function Func1() {

            }

            window.onload=function(){
                Func1();
            };
			$(function(){
				
				/***************提交按钮****************/
				$("#btn_submit").click(function(){
					
					//var jsonArray = $("#examForm").serializeArray();
                    console.log("提交按钮");
					//总共试题的题目
					var questionTotal = "${papersMap.total}" * 1;
                    console.log(questionTotal);
                    console.error("已回答的题目");
					//已回答的题目
					var radioArray = $(".active>input[type='radio']");
                    console.error(radioArray);
                    console.error(radioArray.length);

                    // var lista=document.getElementsByClassName(".list a")
                    // for(var i=0;i<list.length;i++){
                    //     alert(list[i].innerHTML);
                    // }
                    console.error(" console.error(radioArray2);");
                    //var radioArray2 = $(".active>input[type='text']");
                    var radioArray2 = document.getElementsByClassName("text-info");
                    console.error(radioArray2);
                    console.error(radioArray2.length);
                    console.error(radioArray2[1].attr("data-id"));
                    console.error(radioArray2[1].value);

					// if (radioArray.length != questionTotal){
					// 	alert("您还有未填的题目!");
                    //
					// }else
					    {
						
						if(window.confirm('确定提交试卷？')){
							var temp = [];

                            radioArray2.each(function(index,elm){
								var id = $(elm).attr("data-id");
								var sel = elm.value;
                                console.log(sel);
								var key = $(elm).attr("data-answer");
                                console.log(key);
								var result = (sel == key) ? true : false;
                                console.log(result);
								temp.push({
									"papers_id":"${papersMap.papersDetail.id}",
									"question_id":id,
									"rightkey":key,
									"answer":sel,
									"result":result
								});
								
								//判断答题结果,显示错题解析
								$("#info-"+id).html("正确答案为“<b>"+key+"</b>”，您的回答"+
										(result?"<font color='green'>正确</font>":"<font color='red'>错误</font>"));
								if (!result){
									$("#resolve-"+id).show();
								}
								
							});
							
							var url = "<%=path%>/papersAction!submitPaper";
							var data = {
								"user_id" : "${userInfo.id}",
								"papers_id" : "${papersMap.papersDetail.id}",
								"json" : JSON.stringify(temp)
							};
							
							$.ajax({
								"url" : url,
								"data" : data,
								"type" : "POST",
								"dataType" : "json",
								"success" : function(jsonStr){
									if (jsonStr.flag) {
										alert("提交成功!");
									}else{
										alert("提交失败!失败原因:"+jsonStr.msg);
									}
								}
							});
							
			            	return true;
			            }else{
			            	return false;
						}
					}
					
				});
				
				/***************重置按钮****************/
				$("#btn_reset").click(function(){
					$("label").removeClass("active");
				});
				
			});
			
		</script>
	</head>
	<body>
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
								<%--var radioArray = $(".active>input[type='text']");--%>
								<td style="padding-left:30px;">
									<input class="text-info" type="text" data-id="${papersEml.id}" data-answer="${papersEml.answer}"
										   name="select-${papersEml.id}" autocomplete="off"> 请输入答案
									<div class="btn-group" data-toggle="buttons">

										<label class="btn btn-primary">

										</label>

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
            
            <div style="margin-bottom: 50px;">
				<span class="col-md-6 text-center">
					<a href="javascript:void(0);" id="btn_reset" style="width:100px;" class="btn btn-danger">重置</a>
				</span>
				<span class="col-md-6 text-center">
					<a href="javascript:void(0);" id="btn_submit" style="width:100px;" class="btn btn-success">提交</a>
				</span>
			</div>
        </div>
        
	</body>
</html>