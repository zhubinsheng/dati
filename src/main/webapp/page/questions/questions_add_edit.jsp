<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线出题测试系统-试题添加编辑</title>
		<!-- 引入相关的css/js -->
		<%@ include file="../../include/base.jsp" %>
		<!-- 百度编辑器 -->
		<script type="text/javascript" src="<%=path%>/ueditor1.4.3.3/ueditor.config.js"></script>
		<script type="text/javascript" src="<%=path%>/ueditor1.4.3.3/ueditor.all.min.js"></script>
		<script type="text/javascript" src="<%=path%>/ueditor1.4.3.3/lang/zh-cn/zh-cn.js"></script>
		
		<style>
			body {
				width:100%;
				height:auto;
			}
			
			.divCss{
				margin:0 auto;
				width:800px;
				height:auto;
			}
			
			.sDivCss{
				margin:0 auto;
				width:542px;
				height:auto;
			}
			
			.align {
				text-align:center;
				width:100px;
			}
			
			.empty {
				height:20px;
			}
			
			p {
				margin-top:5px;
				margin-bottom:0px;
				color:#696767;
			}
			
			.emptyCls {
				margin-top: 5px;
			}
			
			.left {
				float:left;
				width:100px;
				margin-left: 100px;
			}
			
			.right {
				float: right;
				width:100px;
				margin-right: 100px;
			}
		</style>
		
		<script type="text/javascript">
			$(function(){
				
				var UEDITOR_CONFIG = {
					autoHeightEnabled : false,
					elementPathEnabled : false,
					toolbars : [ [ 'source', '|', 'undo', 'redo', '|', 'fontfamily',
							'fontsize', 'forecolor', '|', 'bold', 'italic',
							'underline', 'strikethrough', '|', 'justifyleft',
							'justifyright', 'justifycenter', 'justifyjustify', '|',
							'autotypeset', 'link', 'insertvideo', 'music',
							'simpleupload', 'insertimage', 'inserttable', 'attachment', ] ]
				};
				var ue = UE.getEditor('myEditor',UEDITOR_CONFIG);
				
				$("#subjectID").change(function(){
					var data = {
						key : $(this).val()
					}
					$.ajax({
						url 	 : '<%=path%>/dicAction!getSubDictOfOneKey',
						data 	 : data,
						type 	 : 'POST',
						dataType : 'json',
						success  : function(jsonStr){
							$("#knowledgeID").empty();
							var options = '<option value="-1">===========================请选择学科===========================</option>';
							$.each(jsonStr,function(index,item){
								options += '<option value="'+item.dic_value+'">'+item.dic_name+'</option>';
							});
							$("#knowledgeID").append(options);
						}
					});
				});
				
				//获取学科信息,并设置编辑时选项的默认值
				var subject_name = "${empty questionBean.subject_name ? '' : questionBean.subject_name}";
				$("#subjectID option[value='"+subject_name+"']").attr("selected","selected");
				var knowledge = "${empty questionBean.knowledge ? '' : questionBean.knowledge}";
				$("#knowledgeID option[value='"+knowledge+"']").attr("selected","selected");
				
				
				
				//保存试题
				$("#save").click(function(){
					
					var id = $("#id").val().trim();
					var subjectID = $("#subjectID").val().trim();
					var knowledgeID = $("#knowledgeID").val().trim();
					var question = ue.getContent().trim();
					var resolve = $("#resolve").val().trim();
					var answer = $("#answer").val().trim();
					var source_name = $("#source_name").val().trim();
					
					if (subjectID == '-1' || knowledgeID == '-1' || question == '' || resolve == '' || answer == '' || source_name == ''){
						Ext.MessageBox.alert("操作提示","请将信息补充完整！");
						return ;
					}
					
					var data = {
						id	: id ,
						subjectID : subjectID ,
						knowledgeID : knowledgeID,
						question : question ,
						resolve : resolve ,
						answer : answer ,
						source_name : source_name
					};
					
					$.ajax({
						url 	 : '<%=path%>/questionAction!saveQuestion',
						data 	 : data,
						type 	 : 'POST',
						dataType : 'json',
						success  : function(jsonStr){
							if(jsonStr.flag){
								Ext.MessageBox.alert("操作提示","操作成功!",function(){
									if(id == ""){
										$("#subjectID option[value='-1']").attr("selected","selected");
										$("#knowledgeID option[value='-1']").attr("selected","selected");
										ue.setContent("");
										$("#resolve").val("");
										$("#answer").val("");
										$("#source_name").val("");
									}
								});
							}else{
								Ext.MessageBox.alert("操作提示","操作失败!原因:"+jsonStr.msg);
							}
						}
					});
					
				});
				
				$("#cancel").click(function(){
					var addWindow = window.parent.Ext.getCmp("addWindow");
					var editWindow = window.parent.Ext.getCmp("editWindow");
					
					if (addWindow != null){
						addWindow.close();
					}
					
					if (editWindow != null){
						editWindow.close();
					}
				});
				
			});
		</script>
	</head>
	<body>
		<div class = "divCss">
			<div class="sDivCss">
				<br/>
				<div>
					 <s:select id = "subjectID" cssClass="form-control" list = "#request.subjectList" 
					 	listKey="dic_value" listValue="dic_name" 
					 	headerKey="-1" headerValue="===========================请选择学科===========================">
					 </s:select>
				</div>
				<div class="emptyCls">
					<s:select id = "knowledgeID" cssClass="form-control" list = "#request.knowledgeList" 
						listKey="dic_value" listValue="dic_name" 
					 	headerKey="-1" headerValue="===========================请选择学科===========================">
					 </s:select>
				</div>
				<div>
					<p>试&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题：</p>
					<input type="hidden" id="id" value='${empty id ? "" : id}'/>
					<!--style给定宽度可以影响编辑器的最终宽度-->
					<script type="text/plain" id="myEditor" style="width:540px;height:200px;">
    					${empty questionBean.question ? '' : questionBean.question}
					</script>
				</div>
				<div>
					<p>试题分析：</p>
					<textarea id="resolve" class="form-control" rows="3" 
						placeholder="请输入试题分析" >${empty questionBean.resolve ? "" : questionBean.resolve}</textarea>
				</div>
				<div>
					<p>答&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;案：</p>
					<input id="answer" class="form-control" type = "text" placeholder="请输入答案" 
						value='${empty questionBean.answer ? "" : questionBean.answer}' />
				</div>
				<div>
					<p>试题来源：</p>
					<input id="source_name" class="form-control" type = "text" placeholder="请输入试题来源" 
						value='${empty questionBean.source_name ? "" : questionBean.source_name}' />
				</div>
				<div class="emptyCls">
					<a href="javascript:void(0);" id="save"   type="button" class="btn btn-success left">保&nbsp;&nbsp;存</a>		
					<a href="javascript:void(0);" id="cancel" type="button" class="btn btn-danger right">关&nbsp;&nbsp;闭</a>		
				</div>
				<br/>
				<br/>
			</div>
		</div>
	</body>
</html>