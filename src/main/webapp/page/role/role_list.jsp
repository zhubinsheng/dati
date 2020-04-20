<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线出题测试系统-用户试卷列表</title>
		<!-- 引入相关的css/js -->
		<%@ include file="../../include/base.jsp" %>
		<script type="text/javascript">
			var roleGrid = null;
			var roleStore = null;
			
			$(function(){
				$("#queryBtn").click(function(){
					roleStore.load();
				});
			});
			
			Ext.onReady(function(){
				var pluginExpanded = true;
				
				/*****************定义数据模型*****************/
			    Ext.define('roleModel', {
			        extend: 'Ext.data.Model',
			        fields: [
			            'id',
			            'role_name'
			        ],
			        idProperty: 'id'
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
			    roleStore = Ext.create('Ext.data.Store', {
			        pageSize: 10,
			        model: 'roleModel',
			        remoteSort: true,
			        proxy: {
			            type: 'ajax',
			            getMethod: function(){ return 'POST'; },
			            url: '<%=path%>/roleAction!getRoleList',
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
			    
			    var treeStore = Ext.create('Ext.data.TreeStore', {
	    			model:'treeModel',
	    			autoLoad: true,
	    			proxy: {
	    		         type: 'ajax',
	    		         url: '<%=path%>/menuAction!getAllMenu'
	    		    },
	    		    reader : {
	    		          type : 'json'
	    		    },
	    		    root: {
	    		         text: '所有菜单-[ctrl/shift+左键]多选',
	    		         id: '00',
	    		         checked : false,
	    		         expanded: true
	    		    }
	    		});
			    
			    /*****************加载数据前附加查询参数*****************/
			    roleStore.on('beforeload', function (store, options) {
			    	
			    	var query = $("#query").val();
			    	var subjectID = $("#subjectID").val();
			    	
					var new_params = {
						query	  	 : query
					};  
			    	Ext.apply(store.proxy.extraParams, new_params);
			    });
			    
			    /*****************加载数据*****************/
			    roleStore.load();
	
			    /*****************顶部工具栏*****************/
			    var tbar = Ext.create("Ext.toolbar.Toolbar", {
			    	items: [
			    		{text: '添加角色', 	iconCls: 'Add', 			id: 'add', 			handler: tbarFn}, 
			    			'-',
			    		{text: '删除角色', 	iconCls: 'Cross', 			id: 'del', 			handler: tbarFn},
			    			'-',
			    		{text: '编辑角色', 	iconCls: 'Cogedit', 		id: 'edit', 		handler: tbarFn},
			    			'-',
			    		{text: "刷新", 		iconCls: "Arrowrefresh", 	id: 'refresh', 		handler: tbarFn}
			    	]
			    });
			    
			    function tbarFn(btn,pressed){
			    	if (btn.id == 'add'){
						
			    		//创建树
			    		var treelocal = Ext.create('Ext.tree.Panel', {
			    		    height: 300,
			    		    multiSelect: true,
			    		    store: treeStore,
			    		    viewConfig: {
			    		    	onCheckboxChange: function(e, t) {
			    		    		var item = e.getTarget(this.getItemSelector(), this.getTargetEl()),
			    		    			record;
			    		    		if (item) {
			    		    			record = this.getRecord(item);
			    		    			var check = !record.get('checked');
			    		    			record.set('checked', check);
			    		    			if (check) {
			    		    				record.bubble(function(parentNode) {
			    		    					parentNode.set('checked', true);
			    		    				});
			    		    				record.cascadeBy(function(node) {
			    		    					node.set('checked', true);
			    		    					node.expand(false, true);
			    		    				});
			    		    			} else {
			    		    				record.bubble(function(parentNode) {
			    		    					parentNode.set('checked', false);
			    		    				});
			    		    				record.cascadeBy(function(node) {
			    		    					node.set('checked', false);
			    		    				});
			    		    			}
			    		    		}
			    		    	}
			    		    },
			    		    listeners : {
			    		    	"beforerender" : function (){
			    		    		//取消选中
			    		    		treelocal.getRootNode().set("checked",false);
			    		    		treelocal.getRootNode().eachChild(function (child) {
							    		if (!child.data.leaf){
							    			child.set('checked', false);
							    			child.eachChild(function(c){
							    				c.set('checked', false);
							    			});
							    		}
							    	});
			    		    	}
			    		    }
			    		});
			    		
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
								    fieldLabel: '角色名',
								    name: 'role_name',
								    xtype : 'textfield',
								    emptyText :'请输入角色名'
								},treelocal
			    			],
			    			buttons: [{
			    				text: '保存',
					            handler : function(){
					            	
					            	var role_name = addPanel.down('textfield[name=role_name]').getValue();
					            	
					            	var records = treelocal.getView().getChecked(),
				                    menu_ids   = [];
				                    
				                    Ext.Array.each(records, function(rec){
				                    	if (rec.get('id') != "00"){
				                        	menu_ids.push("'" + rec.get('id') + "'");
				                    	}
				                    });
				                    
				                    if (role_name == "" || menu_ids.length < 0){
				                    	Ext.MessageBox.alert("操作提示","请将信息补全！");
				                    	return ;
				                    }
				                    
				                    var data = {
					            		'role_name'	: role_name,
					            		'menu_ids' 	: menu_ids.join(',')
					            	}
					            	
					            	var url = '<%=path%>/roleAction!addRole';
					            	
					            	$.ajax({
					            		url : url,
					            		data : data,
					            		type : 'POST',
					            		dataType : 'json',
					            		success : function(jsonStr){
					            			if (jsonStr.flag){
					            				Ext.MessageBox.alert("操作提示","操作成功！",function(){
					            					//刷新后关闭对话框
					            					roleStore.load();
					            					
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
			                title : '添加角色',
			                width : 430,
			                height : 425,
			                constrain : true,
			                closable : false,
			                layout : 'fit',
			                items : addPanel
			            }).show();
			    		
			    	}else if (btn.id == 'del'){
			    		
			    		var treeNode = roleGrid.getSelectionModel().getSelection();
			    		if (treeNode == null || treeNode.length <= 0){
			    			Ext.MessageBox.alert("操作提示","您还未选择试题，请至少选择一个试题!");
			    			return ;
			    		}
			    		
			    		Ext.Msg.show({
				    		title:"操作提示",
				    		modal:true,
				    		msg:'确认删除当前选中的角色？',
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
						    			"idStr" : idStr
						    		};
						    		
						    		$.ajax({
						    			url : '<%=path%>/roleAction!delRole',
						    			data : data,
						    			type : 'POST',
						    			dataType : 'json',
						    			success : function(jsonStr){
						    				if(jsonStr.flag){
						    					Ext.MessageBox.alert("操作提示","操作成功!",function(){
						    						roleStore.load();
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
			    		
			    	}else if (btn.id == 'edit'){
			    		
			    		//获取选中数据
			    		var row = roleGrid.getSelectionModel().getLastSelected();
			    		if (row == null){
			    			Ext.MessageBox.alert("操作提示","您还未选择数据，请选择一个数据!");
			    			return ;
			    		}
			    		
			    		//创建树
			    		var treelocal = Ext.create('Ext.tree.Panel', {
			    		    height: 300,
			    		    multiSelect: true,
			    		    store: treeStore,
			    		    viewConfig: {
			    		    	onCheckboxChange: function(e, t) {
			    		    		var item = e.getTarget(this.getItemSelector(), this.getTargetEl()),
			    		    			record;
			    		    		if (item) {
			    		    			record = this.getRecord(item);
			    		    			var check = !record.get('checked');
			    		    			record.set('checked', check);
			    		    			if (check) {
			    		    				record.bubble(function(parentNode) {
			    		    					parentNode.set('checked', true);
			    		    				});
			    		    				record.cascadeBy(function(node) {
			    		    					node.set('checked', true);
			    		    					node.expand(false, true);
			    		    				});
			    		    			} else {
			    		    				record.bubble(function(parentNode) {
			    		    					parentNode.set('checked', false);
			    		    				});
			    		    				record.cascadeBy(function(node) {
			    		    					node.set('checked', false);
			    		    				});
			    		    			}
			    		    		}
			    		    	}
			    		    },
			    		    listeners : {
			    		    	"beforerender" : function(treelocal, eOpts ){
			    		    		//取消选中
			    		    		treelocal.getRootNode().set("checked",false);
			    		    		treelocal.getRootNode().eachChild(function (child) {
							    		if (!child.data.leaf){
							    			child.set('checked', false);
							    			child.eachChild(function(c){
							    				c.set('checked', false);
							    			});
							    		}
							    	});
			    		    		
			    		    		//设置选中
			    		    		var url = "<%=path%>/roleAction!getRoleMenu";
			    		    		var data = {
			    		    			"role_id" : row.get("id")
			    		    		}
			    		    		$.ajax({
			    		    			"url" 		: url,
			    		    			"data" 		: data,
			    		    			"type" 		: "POST",
			    		    			"dataType"	: "json",
			    		    			"success"	: function(jsonStr){
			    		    				$.each(jsonStr,function(index,value){
			    		    					var node = treeStore.getNodeById(value.menu_id);
			    		    					node.set('checked', true);
			    		    				});
			    		    				
			    		    				treelocal.expandAll();
			    		    			}
			    		    		});
			    		    		
			    		    	}
			    		    }
			    		});
						
			    		//创建添加对话框表单
			    		var editPanel = Ext.create('Ext.form.Panel', {
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
								    fieldLabel: '角色名',
								    name: 'role_name',
								    xtype : 'textfield',
								    value : row.get("role_name"),
								    emptyText :'请输入角色名'
								},treelocal
			    			],
			    			buttons: [{
			    				text: '保存',
					            handler : function(){
					            	
					            	var role_name = editPanel.down('textfield[name=role_name]').getValue();
					            	
					            	var records = treelocal.getView().getChecked(),
				                    menu_ids   = [];
				                    
				                    Ext.Array.each(records, function(rec){
				                    	if (rec.get('id') != "00"){
				                        	menu_ids.push("'" + rec.get('id') + "'");
				                    	}
				                    });
				                    
				                    if (role_name == "" || menu_ids.length < 0){
				                    	Ext.MessageBox.alert("操作提示","请将信息补全！");
				                    	return ;
				                    }
				                    
					            	var data = {
					            		'role_name'	:	role_name,
					            		'menu_ids' 	:	menu_ids.join(','),
					            		"role_id"	:	row.get("id")
					            	}
					            	
					            	var url = '<%=path%>/roleAction!editRole';
					            	
					            	$.ajax({
					            		url : url,
					            		data : data,
					            		type : 'POST',
					            		dataType : 'json',
					            		success : function(jsonStr){
					            			if (jsonStr.flag){
					            				Ext.MessageBox.alert("操作提示","操作成功！",function(){
					            					//刷新后关闭对话框
					            					roleStore.load();
					            					
					            					var editWindow  = Ext.getCmp("editWindow");
					            					editWindow.close();
					            				});
					            			}else{
					            				Ext.MessageBox.alert("操作提示",
					            						"操作失败！错误原因：<br/><font color='red'>"+jsonStr.msg+"</font>");
					            			}
					            			
					            			roleGrid.getSelectionModel().clearSelections();
								    		roleGrid.getView().refresh();
					            		}
					            	});
					            }
			    			},{
			    				text: '关闭',
			    				handler : function(){
			    					var editWindow  = Ext.getCmp("editWindow");
			    					editWindow.close();
			    					
			    					roleGrid.getSelectionModel().clearSelections();
						    		roleGrid.getView().refresh();
			    				}
			    			}]
			    		});
			    		
			    		//显示编辑对话框
						var editWindow = Ext.create('Ext.Window', {
							id : 'editWindow',
			                title : '编辑角色',
			                width : 430,
			                height : 425,
			                constrain : true,
			                closable : false,
			                layout : 'fit',
			                items : editPanel
			            }).show();
			    		
			    	}else if (btn.id == 'refresh'){
			    		roleStore.load();
			    	}
			    }
			    
			    /*****************创建分页工具栏*****************/
			    var bbar = Ext.create('Ext.PagingToolbar', {
		            store: roleStore,
		            displayInfo: true,
		            displayMsg: '显示{0}-{1}条，共{2}条',
		            emptyMsg: "无数据"
		        });
			    
			    /*****************创建数据表*****************/
			    var selModel = Ext.create('Ext.selection.CheckboxModel', {
			    	mode:"SIMPLE"
			    });
			    
			    roleGrid = Ext.create('Ext.grid.Panel', {
			    	layout: 'fit',
			    	region: "center",
			        store: roleStore,
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
						{text: "角色名", 	width:400,	id: 'role_name',	dataIndex: 'role_name',	align: 'center',	sortable: true, flex:1}
						
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
					items : [queryPanel,roleGrid]
				});
			});	
		
		</script>
	</head>
	<body>
		<form id="queryForm" style="margin:5px;">
			<div class="form-group col-md-12" >
				<div class="input-group">  
					<input id="query" name="query" type="text" class="form-control" placeholder="请输入关键字" / >  
					<span class="input-group-btn">  
						<a href="javascript:void(0);" id="queryBtn" class="btn btn-primary" style="width:80px;">查&nbsp;&nbsp;找</a>
					</span>
				 </div>
			</div>
	  	</form>
	</body>
</html>