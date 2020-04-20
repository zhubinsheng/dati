<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线出题测试系统-用户试卷列表</title>
		<!-- 引入相关的css/js -->
		<%@ include file="../../include/base.jsp" %>
		<script type="text/javascript">
			var papersGrid = null;
			var papersStore = null;
			
			$(function(){
				
				$.ajax({
					url  : '<%=path%>/questionAction!getQuestionSubjectNameList',
					type : 'PSOT',
					dataType : 'json',
					success : function(jsonStr){
						$("#subjectID").empty();
						var options = '<option value="-1">请选择类型</option>';
						$.each(jsonStr,function(index,item){
							options += '<option value="'+item.dic_value+'">'+item.dic_name+'</option>';
						});
						$("#subjectID").append(options);
					}
				});
				
				$("#queryBtn").click(function(){
					papersStore.load();
				});
			});
			
			Ext.onReady(function(){
				var pluginExpanded = true;
				
				/*****************定义数据模型*****************/
			    Ext.define('papersModel', {
			        extend: 'Ext.data.Model',
			        fields: [
			            'id',
			            'papers_name',
						'dic_name',
						'dic_value',
			            'college',
			            'user_id',
						'truename'
			        ],
			        idProperty: 'id'
			    });
				
			    Ext.define('dicModel', {
	    		    extend: 'Ext.data.Model',
	    		    fields: [
	    		        {type: 'string', name: 'dic_name'},
	    		        {type: 'string', name: 'dic_value'}
	    		    ]
	    		});
			    
			    Ext.define('treeModel', {
	    		    extend: 'Ext.data.Model',
	    		    fields: [
	    		        {name: 'id'			,type: 'string'},
	    		        {name: 'text'		,type: 'string'},
	    		        {name: 'leaf'		,type: 'boolean'}
	    		    ]
	    		});
	
			    /*****************创建数据源*****************/
			    papersStore = Ext.create('Ext.data.Store', {
			        pageSize: 10,
			        model: 'papersModel',
			        remoteSort: true,
			        proxy: {
			            type: 'ajax',
			            getMethod: function(){ return 'POST'; },
			            url: '<%=path%>/papersAction!getPapersList',
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
			    
			    var dicStore = Ext.create('Ext.data.Store', {
					model: 'dicModel',
					proxy: {
						type: 'ajax',
						url: '<%=path%>/dicAction!getSubDictOfOneKey?key=systml',
						reader:'json'
					},
					autoLoad: true
	    	    });
			    
			    
			    var treeStore = Ext.create('Ext.data.TreeStore', {
	    			model:'treeModel',
	    			autoLoad: true,
	    			proxy: {
	    		         type: 'ajax',
	    		         url: '<%=path%>/userAction!getAllRoleOfStuUserInfo'
	    		    },
	    		    reader : {
	    		          type : 'json'
	    		    },
	    		    root: {
	    		         text: '所有学生-[ctrl/shift+左键]多选',
	    		         id: '00',
	    		         expanded: true
	    		    }
	    		});
			    
			    /*****************加载数据前附加查询参数*****************/
			    papersStore.on('beforeload', function (store, options) {
			    	
			    	var query = $("#query").val();
			    	var subjectID = $("#subjectID").val();
			    	
					var new_params = {
						query	  	 : query,
						subject_name : subjectID
					};  
			    	Ext.apply(store.proxy.extraParams, new_params);
			    });
			    
			    /*****************加载数据*****************/
			    papersStore.load();
	
			    /*****************顶部工具栏*****************/
			    var tbar = Ext.create("Ext.toolbar.Toolbar", {
			    	items: [
			    		{text: '添加试卷', 	iconCls: 'Add', 			id: 'add', 			handler: tbarFn}, 
			    			'-',
			    		{text: '删除试卷', 	iconCls: 'Cross', 			id: 'del', 			handler: tbarFn},
			    			'-',
			    		{text: '编辑试卷', 	iconCls: 'Cogedit', 		id: 'edit', 		handler: tbarFn},
			    			'-',
			    		{text: '预览试卷', 	iconCls: 'Book', 			id: 'preview', 		handler: tbarFn},
			    			'-',
			    		{text: '分发试卷', 	iconCls: 'Groupgo', 		id: 'handOut', 		handler: tbarFn},
			    			'-',
			    		{text: "刷新", 		iconCls: "Arrowrefresh", 	id: 'refresh', 		handler: tbarFn}
			    	]
			    });
			    
			    function tbarFn(btn,pressed){
			    	if (btn.id == 'add'){
						
			    		//创建添加对话框表单
			    		var addPanel = Ext.create('Ext.form.Panel', {
			    			bodyStyle:'padding:5px 5px 0',
			    			width: 420,
			    			fieldDefaults: {
			    				msgTarget: 'side',
			    				labelWidth: 75
			    			},
			    			defaultType: 'textfield',
			    			defaults: {
			    				anchor: '100%'
			    			},
			    			items: [{
								    fieldLabel: '卷&nbsp;&nbsp;&nbsp;名',
								    name: 'papers_name',
								    xtype : 'textfield',
								    emptyText :'请输入试卷名字'
								},{
								    fieldLabel: '出卷人',
								    name: 'papers_ppl',
								    xtype : 'textfield',
								    emptyText :'请输入出卷人',
								    value : '${userInfo.truename}',
								    readOnly : true
								},{
								    fieldLabel: '院&nbsp;&nbsp;&nbsp;校',
								    name: 'college',
								    xtype : 'textfield',
								    emptyText :'请输入院/校'
								},{
				                    xtype: "combo",
				                    fieldLabel: '类&nbsp;&nbsp;&nbsp;型',
				                    name: 'papers_dic_value',
				                    store: dicStore,
				                    displayField : 'dic_name',
				                    valueField : 'dic_value',
				                    emptyText: '请选择试卷类型',
				                    allowBlank: false,
				                    listeners:{
				                    	'select':function(combo,records,eOpts){
				                    		
				                    	}
			                    	}
						        }
			    			],
			    			buttons: [{
			    				text: '保存',
					            handler : function(){
					            	
					            	var papers_name = addPanel.down('textfield[name=papers_name]').getValue();
					            	var papers_ppl = '${userInfo.id}';
					            	var college = addPanel.down('textfield[name=college]').getValue();
					            	var papers_dic_value = addPanel.down('textfield[name=papers_dic_value]').getValue();
					            	
					            	if(papers_name == "" || papers_ppl == "" || college == "" || papers_dic_value == "" ){
					            		Ext.MessageBox.alert("操作提示","请将试卷信息补充完整！");
					            		return ;
					            	}
					            	
					            	var data = {
					            		'papers_name' 	   : papers_name,
					            		'papers_ppl'  	   : papers_ppl,
					            		'college' 	  	   : college,
					            		'papers_dic_value' : papers_dic_value
					            	}
					            	
					            	var url = '<%=path%>/papersAction!addPapers';
					            	
					            	$.ajax({
					            		url : url,
					            		data : data,
					            		type : 'POST',
					            		dataType : 'json',
					            		success : function(jsonStr){
					            			if (jsonStr.flag){
					            				Ext.MessageBox.alert("操作提示","操作成功！",function(){
					            					//刷新后关闭对话框
					            					papersStore.load();
					            					
					            					var addWindow  = Ext.getCmp("addWindow");
										            addWindow.close();
					            				});
					            			}else{
					            				Ext.MessageBox.alert("操作提示",
					            						"操作失败！错误原因：<br/><font color='red'>"+jsonStr.msg+"</font>");
					            			}
					            		}
					            	});
					            }
			    			},{
			    				text: '关闭',
			    				handler : function(){
			    					var addWindow  = Ext.getCmp("addWindow");
			    					addWindow.close();
			    				}
			    			}]
			    		});
			    		
			    		//显示添加对话框
						var addWindow = Ext.create('Ext.Window', {
							id : 'addWindow',
			                title : '添加卷子',
			                width : 430,
			                height : 215,
			                constrain : true,
			                closable : false,
			                layout : 'fit',
			                items : addPanel
			            }).show();
			    		
			    	}else if (btn.id == 'del'){
			    		
			    		var treeNode = papersGrid.getSelectionModel().getSelection();
			    		if (treeNode == null || treeNode.length <= 0){
			    			Ext.MessageBox.alert("操作提示","您还未选择试卷，请至少选择一份试卷!");
			    			return ;
			    		}
			    		
			    		Ext.Msg.show({
				    		title:"操作提示",
				    		modal:true,
				    		msg:'确认删除当前选中的试卷？',
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
						    			ids : idStr
						    		};
						    		
						    		$.ajax({
						    			url : '<%=path%>/papersAction!delPapers',
						    			data : data,
						    			type : 'POST',
						    			dataType : 'json',
						    			success : function(jsonStr){
						    				if(jsonStr.flag){
						    					Ext.MessageBox.alert("操作提示","操作成功!",function(){
						    						papersStore.load();
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
			    		
			    		papersGrid.getSelectionModel().clearSelections();
			    		papersGrid.getView().refresh();
			    	}else if (btn.id == 'edit'){
			    		
			    		//获取选中数据
			    		var row = papersGrid.getSelectionModel().getLastSelected();
			    		if (row == null){
			    			Ext.MessageBox.alert("操作提示","您还未选择试卷，请选择一份试卷!");
			    			return ;
			    		}
			    		
			    		//显示编辑对话框
			    		var url = "<%=path%>/papersAction!getPaperQuestionsPage?papers_id=" + row.get("id");
			    		
			    		var editWindow = Ext.create('Ext.Window', {
			    			id : 'editWindow',
			    			title : '编辑试卷',
			    			maximized:true,
			    			constrain : true,
			    			closable : true,
			    			html:"<iframe scrolling='yes' width='100%' height='100%'  frameborder='0' src='" + url + "'></iframe>"
			    		}).show();
			    		
			    		papersGrid.getSelectionModel().clearSelections();
			    		papersGrid.getView().refresh();
			    	}else if (btn.id == 'preview'){
			    		
			    		//获取选中数据
			    		var row = papersGrid.getSelectionModel().getLastSelected();
			    		if (row == null){
			    			Ext.MessageBox.alert("操作提示","您还未选择试卷，请选择一份试卷!");
			    			return ;
			    		}
			    		
			    		var url = "<%=path%>/papersAction!previewPapersPage?papers_id=" + row.get("id");
			    		
			    		var previewWindow = Ext.create('Ext.Window', {
			    			id : 'previewWindow',
			    			title : '预览试卷',
			    			maximized:true,
			    			constrain : true,
			    			closable : true,
			    			html:"<iframe scrolling='yes' width='100%' height='100%'  frameborder='0' src='" + url + "'></iframe>"
			    		}).show();
			    		
			    		papersGrid.getSelectionModel().clearSelections();
			    		papersGrid.getView().refresh();
			    		
			    	}else if (btn.id == 'handOut'){
						
			    		//获取选中数据
			    		var row = papersGrid.getSelectionModel().getLastSelected();
			    		if (row == null) {
			    		    Ext.MessageBox.alert("操作提示", "您还未选择卷子，请选择一份卷子!");
			    		    return;
			    		}

			    		//创建树
			    		var treelocal = Ext.create('Ext.tree.Panel', {
			    		    height: 400,
			    		    multiSelect: true,
			    		    store: treeStore
			    		});

			    		var win = new Ext.Window({
			    			id : 'win',
			    		    title: '分发试卷',
			    		    width: 400,
			    		    height: 400,
			    		    resizable: true,
			    		    modal: true,
			    		    closable: true,
			    		    maximizable: true,
			    		    minimizable: true,
			    		    items: treelocal,
			    		    buttons: [{
			    		        xtype: "button",
			    		        text: "确定",
			    		        handler: function() {

			    		            var treeNode = treelocal.getSelectionModel().getSelection();
			    		            if (treeNode == null || treeNode.length <= 0) {
			    		                Ext.MessageBox.alert("操作提示", "您还未选择用户，请至少选择一个用户!");
			    		                return;
			    		            }

			    		            var idStr = "";
			    		            Ext.Array.forEach(treeNode,
			    		            function(item, index) {
			    		                if (idStr == "") {
			    		                    idStr = "'" + item.get("id") + "'";
			    		                } else {
			    		                    idStr += ",'" + item.get("id") + "'";
			    		                }
			    		            });

			    		            var data = {
			    		                "papers_id": row.get("id"),
			    		                "user_ids": idStr
			    		            }

			    		            var url = "<%=path%>/papersAction!handOutPapers";

			    		            Ext.Msg.show({
			    		                title: "操作提示",
			    		                modal: true,
			    		                msg: '确认分发给当前选中用户？',
			    		                icon: Ext.Msg.QUESTION,
			    		                fn: function(btn, text) {
			    		                    if (btn == "ok") {
			    		                        $.ajax({
			    		                            url: url,
			    		                            data: data,
			    		                            type: 'POST',
			    		                            dataType: 'json',
			    		                            success: function(jsonStr) {
			    		                                if (jsonStr.flag) {
			    		                                    Ext.MessageBox.alert("操作提示", "操作成功!",
			    		                                    function() {
			    		                                        var win = Ext.getCmp("win");
			    		                                        win.close();
			    		                                    });
			    		                                } else {
			    		                                    Ext.MessageBox.alert("操作提示", "操作失败!失败原因:" + jsonStr.msg);
			    		                                }
			    		                            }
			    		                        });
			    		                    }
			    		                },
			    		                buttons: Ext.Msg.OKCANCEL
			    		            });
			    		        }
			    		    },{
			    		        xtype: "button",
			    		        text: "取消",
			    		        handler: function() {
			    		            this.up("window").close();
			    		        }
			    		    }]
			    		}).show();
			    		
			    	}else if (btn.id == 'refresh'){
			    		papersStore.load();
			    	}
			    }
			    
			    /*****************创建分页工具栏*****************/
			    var bbar = Ext.create('Ext.PagingToolbar', {
		            store: papersStore,
		            displayInfo: true,
		            displayMsg: '显示{0}-{1}条，共{2}条',
		            emptyMsg: "无数据"
		        });
			    
			    /*****************创建数据表*****************/
			    var selModel = Ext.create('Ext.selection.CheckboxModel', {
			    	mode:"SIMPLE"
			    });
			    
			    papersGrid = Ext.create('Ext.grid.Panel', {
			    	layout: 'fit',
			    	region: "center",
			        store: papersStore,
			        columnLines: true,
			        rowLines: true,
			        selModel:selModel,
			        loadMask: true,
			        viewConfig: {
			            forceFit: true,
			            trackOver: false,
			            stripeRows: false
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
						{text: "卷名", 	width:400,	id: 'papers_name',	dataIndex: 'papers_name',	align: 'center',	sortable: true, flex:1},
						{text: "出卷人", 	width:100,	id: 'truename',		dataIndex: 'truename',		align: 'center',	sortable: false},
						{text: "院校", 	width:150,	id: 'college',		dataIndex: 'college',		align: 'center',	sortable: true},
						{text: "类型",	width:100,	id: 'dic_name',		dataIndex: 'dic_name',		align: 'center',	sortable: false}
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
					items : [queryPanel,papersGrid]
				});
			});	
		
		</script>
	</head>
	<body>
		<form id="queryForm" style="margin:5px;">
			<div class="form-group col-md-6" >
				<div class="input-group">  
					<input id="query" name="query" type="text" class="form-control" placeholder="请输入关键字【卷名/出卷人/院校】" / >  
					<span class="input-group-btn">  
						<a href="javascript:void(0);" id="queryBtn" class="btn btn-primary" style="width:80px;">查&nbsp;&nbsp;找</a>
					</span>
				 </div>
			</div>
			
			<div class="form-group col-md-6">
				<select id="subjectID" class="form-control">
				</select>
			</div>
			
	  	</form>
	</body>
</html>