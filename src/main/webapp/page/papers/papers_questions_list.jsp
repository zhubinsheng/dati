<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线出题测试系统-试题列表</title>
		<!-- 引入相关的css/js -->
		<%@ include file="../../include/base.jsp" %>
		<script type="text/javascript" src="<%=path%>/js/ext-4.2.1/plugins/Ext.ux.PreviewPlugin.js"></script>
		<script type="text/javascript">
			var questionsGrid = null;
			var questionsStore = null;
			var isShowThisPapersQuestions = true;
			var pageSize = 10;
		
			$(function(){
				
				$.ajax({
					url  : '<%=path%>/questionAction!getQuestionSubjectNameList',
					type : 'PSOT',
					dataType : 'json',
					success : function(jsonStr){
						$("#subjectID").empty();
						var options = '<option value="-1">请选择学科</option>';
						$.each(jsonStr,function(index,item){
							options += '<option value="'+item.dic_value+'">'+item.dic_name+'</option>';
						});
						$("#subjectID").append(options);
					},
					error: function(){
						console.log("未知错误!");
					}
				});
				
				$.ajax({
					url  : '<%=path%>/questionAction!getQuestionKnowledgeList',
					type : 'PSOT',
					dataType : 'json',
					success : function(jsonStr){
						$("#knowledgeID").empty();
						var options = '<option value="-1">请选择知识</option>';
						$.each(jsonStr,function(index,item){
							options += '<option value="'+item.dic_value+'">'+item.dic_name+'</option>';
						});
						$("#knowledgeID").append(options);
					}
				});
				
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
							var options = '<option value="-1">请选择知识</option>';
							$.each(jsonStr,function(index,item){
								options += '<option value="'+item.dic_value+'">'+item.dic_name+'</option>';
							});
							$("#knowledgeID").append(options);
						}
					});
				});
				
				$("#queryBtn").click(function(){
					questionsStore.load();
				});
				
			});
		
			Ext.onReady(function(){
				var pluginExpanded = true;
				
				/*****************定义数据模型*****************/
			    Ext.define('questionsModel', {
			        extend: 'Ext.data.Model',
			        fields: [
			            'id',
			            'subject_name',
						'knowledge',
						'source_name',
			            'question',
			            'answer',
						'resolve'
			        ],
			        idProperty: 'id'
			    });
	
			    /*****************创建数据源*****************/
			    questionsStore = Ext.create('Ext.data.Store', {
			        pageSize: pageSize,
			        model: 'questionsModel',
			        remoteSort: true,
			        proxy: {
			            type: 'ajax',
			            getMethod: function(){ return 'POST'; },
			            url: '<%=path%>/papersAction!getPaperQuestionsList?papers_id=${papers_id}',
			            reader: {
			            	type: 'json',
			                root: 'root',
			                totalProperty: 'totalCount'
			            },
			            simpleSortMode: true
			        },
			        sorters: [{
			            property: 'id',
			            direction: 'DESC'
			        }]
			    });
			    
			    /*****************加载数据前附加查询参数*****************/
			    questionsStore.on('beforeload', function (store, options) {
			    	
			    	var query = $("#query").val();
			    	var subjectID = $("#subjectID").val();
			    	var knowledgeID = $("#knowledgeID").val();
			    	
					var new_params = {
						query	  	 				: query,
						knowledge 	 				: knowledgeID,
						subject_name 				: subjectID,
						isShowThisPapersQuestions	: isShowThisPapersQuestions
					};  
			    	Ext.apply(store.proxy.extraParams, new_params);
			    });
			    
			    /*****************加载数据*****************/
			    questionsStore.load();
	
			    /*****************顶部工具栏*****************/
			    var tbar = Ext.create("Ext.toolbar.Toolbar", {
			    	items: [
			    		{text: '添加至此试卷', 	iconCls: 'Add', 			id: 'add', 			handler: tbarFn}, 
			    			'-',
			    		{text: '删除试题', 	iconCls: 'Cross', 			id: 'del', 			handler: tbarFn},
			    			'-',
			    		{text: "刷新", 		iconCls: "Arrowrefresh", 	id: 'refresh', 		handler: tbarFn},
			    			'-',
			    		{
			    			text: '展开/隐藏 试题预览',
							iconCls: 'Folderexplore',
							id: 'showPreview',
							pressed: pluginExpanded,
							enableToggle: true,
							toggleHandler: tbarFn
						},{
							id:"isThisPapers",
					    	xtype:"checkbox", 
					    	boxLabel : '非此试卷',
					        name: 'isThisPapers',
					        handler:function(obj,ischecked){
					        	if (ischecked){
					        		isShowThisPapersQuestions = false;
					        	}else{
					        		isShowThisPapersQuestions = true;
					        	}
					        	questionsStore.load({
					                params : {
					                    start : 0,
					                    limit : pageSize
					                }
					            });
					        }
						}
			    	]
			    });
			    
			    function tbarFn(btn,pressed){
			    	if (btn.id == 'add'){
			    		
			    		//获取节点数据
			    		var treeNode = questionsGrid.getSelectionModel().getSelection();
			    		if (treeNode == null || treeNode.length <= 0){
			    			Ext.MessageBox.alert("操作提示","您还未选择试题，请至少选择一个试题!");
			    			return ;
			    		}
			    		
			    		//判断选中试题是否为该卷子下的试题
			    		if (isShowThisPapersQuestions){
			    			Ext.MessageBox.alert("操作提示","您选择的试题是该卷子底下的试题,无法再次添加,请重新选择!");
			    			return ;
			    		}
			    		
			    		Ext.Msg.show({
				    		title:"操作提示",
				    		modal:true,
				    		msg:'确认添加当前选中的试题？',
				    		icon:Ext.Msg.QUESTION,
				    		fn:function (btn,text){
				    			if(btn=="ok"){
				    				var idStr = "";
						    		Ext.Array.forEach(treeNode, function(item,index){
						    			if (idStr == ""){
						    				idStr = item.get("id");
						    			}else{
						    				idStr += ","+item.get("id");
						    			}
						    		});
						    		
						    		var data = {
						    			ids 		: idStr,
						    			papers_id	: '${papers_id}'
						    		};
						    		
						    		$.ajax({
						    			url : '<%=path%>/papersAction!addQuestionsToPapers',
						    			data : data,
						    			type : 'POST',
						    			dataType : 'json',
						    			success : function(jsonStr){
						    				if(jsonStr.flag){
						    					Ext.MessageBox.alert("操作提示","操作成功!",function(){
						    						questionsStore.load();
						    					});
						    				}else{
						    					Ext.MessageBox.alert("操作提示","操作失败!原因:"+jsonStr.msg);
						    				}
						    			}
						    		});
				    			}
				    		},
				    		buttons:Ext.Msg.OKCANCEL
				    	});
			    		
			    	}else if (btn.id == 'del'){
			    		
			    		//获取节点数据
			    		var treeNode = questionsGrid.getSelectionModel().getSelection();
			    		if (treeNode == null || treeNode.length <= 0){
			    			Ext.MessageBox.alert("操作提示","您还未选择试题，请至少选择一个试题!");
			    			return ;
			    		}
			    		
			    		//判断选中试题是否为该卷子下的试题
			    		if (!isShowThisPapersQuestions){
			    			Ext.MessageBox.alert("操作提示","您选择的试题不是该卷子底下的试题,请重新选择!");
			    			return ;
			    		}
			    		
			    		Ext.Msg.show({
				    		title:"操作提示",
				    		modal:true,
				    		msg:'确认删除当前选中的试题？',
				    		icon:Ext.Msg.QUESTION,
				    		fn:function (btn,text){
				    			if(btn=="ok"){
				    				var idStr = "";
						    		Ext.Array.forEach(treeNode, function(item,index){
						    			if (idStr == ""){
						    				idStr = "'"+item.get("id")+"'";
						    			}else{
						    				idStr += ",'"+item.get("id")+"'";
						    			}
						    		});
						    		
						    		var data = {
						    			ids 		: idStr,
						    			papers_id	: '${papers_id}'
						    		};
						    		
						    		$.ajax({
						    			url : '<%=path%>/papersAction!delPapersQuestions',
						    			data : data,
						    			type : 'POST',
						    			dataType : 'json',
						    			success : function(jsonStr){
						    				if(jsonStr.flag){
						    					Ext.MessageBox.alert("操作提示","操作成功!",function(){
						    						questionsStore.load();
						    					});
						    				}else{
						    					Ext.MessageBox.alert("操作提示","操作失败!原因:"+jsonStr.msg);
						    				}
						    			}
						    		});
				    			}
				    		},
				    		buttons:Ext.Msg.OKCANCEL
				    	});
			    		
			    	}else if (btn.id == 'refresh'){
			    		
			    		questionsStore.load();
			    		
			    	}else if (btn.id == 'showPreview'){
			    		
			    		var preview = Ext.getCmp('gv').getPlugin('preview');
	                    preview.toggleExpanded(pressed);
	                    
			    	}
			    }
			    
			    /*****************创建分页工具栏*****************/
			    var bbar = Ext.create('Ext.PagingToolbar', {
		            store: questionsStore,
		            displayInfo: true,
		            displayMsg: '显示{0}-{1}条，共{2}条',
		            emptyMsg: "无数据"
		        });
			    
			    /*****************创建数据表*****************/
			    var selModel = Ext.create('Ext.selection.CheckboxModel', {
			    	mode:"SIMPLE"
			    });
			    
			    questionsGrid = Ext.create('Ext.grid.Panel', {
			    	layout: 'fit',
			    	region: "center",
			        store: questionsStore,
			        columnLines: true,
			        rowLines: true,
			        selModel:selModel,
			        loadMask: true,
			        viewConfig: {
			            id: 'gv',
			            forceFit: true,
			            trackOver: false,
			            stripeRows: false,
			            plugins: [{
			                ptype: 'preview',
			                bodyField: 'question',
			                expanded: true,
			                pluginId: 'preview'
			            }]
			        },
			        columns:[
						{xtype: "rownumberer", width: 30, align: "center"},
						{
							text: "ID",
							id: 'id',
							dataIndex: 'id',
							align: 'center',
							sortable: false,
							hidden: true
						},
						{text: "试题", 	width:400,	id: 'question',		dataIndex: 'question',		align: 'center',	sortable: false, flex:1},
						{text: "分析", 	width:200,	id: 'resolve',		dataIndex: 'resolve',		align: 'center',	sortable: false},
						{text: "答案", 	width:80,	id: 'answer',		dataIndex: 'answer',		align: 'center',	sortable: true},
						{text: "来源", 	width:160,	id: 'source_name',	dataIndex: 'source_name',	align: 'center',	sortable: true},
						{text: "归属学科",	width:100,	id: 'subject_name',	dataIndex: 'subject_name',	align: 'center',	sortable: true},
						{text: "归属分类",	width:100,	id: 'knowledge',	dataIndex: 'knowledge',		align: 'center',	sortable: true}
					],
					tbar:tbar,
			        bbar: bbar
			    });
				
			    /*****************查询面板*****************/
			    var queryPanel = Ext.create('Ext.form.Panel', {
			    	id : 				"searchForm",
					region:				"north",
					layout:				"fit",
					contentEl:			"queryForm"
			    });
			    
			    /*****************渲染表格*****************/
			    var viewport= new Ext.Viewport({
					layout : 'border',
					items : [queryPanel,questionsGrid]
				});
			});	
		
		</script>
	</head>
	<body>
		<form id="queryForm" style="margin:5px;">
			<div class="form-group col-md-6" >
				<div class="input-group">  
					<input id="query" name="query" type="text" class="form-control" placeholder="请输入关键字" / >  
					<span class="input-group-btn">  
						<a href="javascript:void(0);" id="queryBtn" class="btn btn-primary" style="width:80px;">查&nbsp;&nbsp;找</a>
					</span>
				 </div>
			</div>
			
			<div class="form-group col-md-3">
				<select id="subjectID" class="form-control">
				</select>
			</div>
			
			<div class="form-group col-md-3">
				<select id="knowledgeID" class="form-control">
				</select>
			</div>
	  	</form>
	</body>
</html>