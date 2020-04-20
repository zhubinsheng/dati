<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>菜单管理</title>
		<!-- 引入相关的css/js -->
		<%@ include file="../../include/base.jsp" %>
		<script type="text/javascript">
			Ext.onReady(function(){
				
				Ext.define('treeModel', {
			        extend: 'Ext.data.Model',
			        idProperty: 'id',
			        fields: [{
			            name: "id",
			            convert: undefined
			        }, {
			            name: "menu_name",
			            convert: undefined
			        }, {
			            name: "menu_href",
			            convert: undefined
			        }, {
			            name: "grade",
			            convert: undefined
			        },  {
			            name: "isleaf",
			            convert: undefined
			        }, {
			            name: "parent_id",
			            convert: undefined
			        }, {
			            name: "text",
			            convert: undefined
			        }, {
			            name: "leaf",
			            convert: undefined
			        }, {
			            name: "checked",
			            convert: undefined
			        }, {
			            name: "iconCls",
			            convert: undefined
			        }]
			    });
				
				/***************树表数据***************/
			    var treeStore = Ext.create('Ext.data.TreeStore', {
			        model: 'treeModel',
			        proxy: {
			            type: 'ajax',
			            reader: 'json',
			            url: '<%=path%>/menuAction!getMenuList'
			        },
			        lazyFill: true
			    });
				
			    /***************工具栏***************/
			    var tbar = Ext.create("Ext.toolbar.Toolbar", {
			    	items: [
			    		{
			    			text: '添加菜单',
			    			iconCls: 'Add',
			    			id : 'add',
			    			handler : tbarFn
			    		}, '-',
			    		{
			    			text: '删除菜单',
			    			iconCls: 'Cross',
			    			id : 'del',
			    			handler : tbarFn
			    		}, '-',
			    		{
			    			text: '修改菜单',
			    			iconCls: 'Cogedit',
			    			id : 'edit',
			    			handler : tbarFn
			    		}, '-',
			    		{
			    			text: "刷新",
			    			iconCls: "Arrowrefresh",
			    			id : 'refresh',
			    			handler : tbarFn
			    		}, '-',
			    		{
			    			text: '展开所有',
			    			iconCls: 'Folderexplore',
			    			id : 'expandAll',
			    			handler : tbarFn
			    		}, '-',
			    		{
			    			text: '折叠所有',
			    			iconCls: 'Folderhome',
			    			id : 'closeAll',
			    			handler : tbarFn
			    		}
			    	]
			    });
			    
			    /***************创建树表***************/
			    var treeGrid = Ext.create('Ext.tree.Panel', {
			        width : window.innerWidth,
			        height : window.innerHeight,
			        renderTo : Ext.getBody(),
			        tbar : tbar,
			        loadMask : true,
			        useArrows : true,
			        rootVisible : false,
			        store : treeStore,
			        animate : false,
			        plugins : [{
			            ptype : 'bufferedrenderer'
			        }],
			        columns : [{
			            xtype : 'treecolumn',		//设置显示为树状的列
			            text : '菜单名',
			            flex : 2,
			            dataIndex : 'menu_name',
			            sortable : true
			        },{
			            text : '链接',
			            flex : 2,
			            dataIndex : 'menu_href',
			            sortable : true
			        },{
			            text : '级别',
			            flex : 1,
			            dataIndex : 'grade'
			        },{
			            text : 'ID',
			            flex : 1,
			            dataIndex : 'id'
			        },{
			        	text : '父ID',
			        	flex : 1,
			        	dataIndex : 'parent_id'
			        }]
			    });
			    
			    /***************工具栏事件***************/
			    function tbarFn(event){
			    	if (event.id == 'add'){
			    		/***************添加对话框***************/
			    		var comboStore=Ext.create('Ext.data.Store',{
							fields:['key','value'],
							data:[{
								"key" 	: "parentTreeNode",
								"value" : "添加父节点",
							},{
								"key" 	: "subTreeNode",
								"value" : "添加子节点",
							}]
						});
			    		
			    		var leafComboStore=Ext.create('Ext.data.Store',{
							fields:['key','value'],
							data:[{
								"key" 	: "1",
								"value" : "是",
							},{
								"key" 	: "0",
								"value" : "否",
							}]
						});
			    		
			    		Ext.define('parentComboModel', {
			    		    extend: 'Ext.data.Model',
			    		    fields: [
			    		        {type: 'string', name: 'id'},
			    		        {type: 'string', name: 'menu_name'},
			    		        {type: 'string', name: 'menu_href'},
			    		        {type: 'string', name: 'grade'},
			    		        {type: 'string', name: 'isleaf'},
			    		        {type: 'string', name: 'parent_id'}
			    		    ]
			    		});
			    		
			    		var parentComboStore = Ext.create('Ext.data.Store', {
							model: 'parentComboModel',
							proxy: {
								type: 'ajax',
								url: '<%=path%>/menuAction!getAllParentMenuList',
								reader:'json'
							},
							autoLoad: true
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
			                    xtype: "combo",
			                    fieldLabel: '操&nbsp;&nbsp;&nbsp;&nbsp;作',
			                    name: 'operate',
			                    store: comboStore,
			                    queryMode: 'local',
			                    displayField : 'value',
			                    valueField : 'key',
			                    emptyText: '请选择操作方式',
			                    allowBlank: false,
			                    listeners:{
			                    	'select':function(combo,records,eOpts){
			                    		var key = records[0].get("key");
			                    		if (key == 'subTreeNode'){
			                    			addPanel.down('textfield[name=parent_name]').setValue("");
			                    			addPanel.down('textfield[name=parent_id]').setValue("");
			                    			
			                    			addPanel.down('textfield[name=parent_name]').setDisabled(false);
			                    			addPanel.down('textfield[name=parent_id]').setDisabled(false);
			                    		}else{
			                    			addPanel.down('textfield[name=parent_name]').setValue("无");
			                    			addPanel.down('textfield[name=parent_id]').setValue("0");
			                    			addPanel.down('textfield[name=grade]').setValue("0");
			                    			
			                    			addPanel.down('textfield[name=parent_name]').setDisabled(true);
			                    			addPanel.down('textfield[name=parent_id]').setDisabled(true);
			                    			
			                    			$.ajax({
			                    				url 	 : '<%=path%>/menuAction!getMaxIDForTreeNode',
			                    				type	 : 'POST',
			                    				dataType : 'json',
			                    				success	 : function(jsonStr){
			                    					addPanel.down('textfield[name=id]').setValue(jsonStr.maxId);
			                    				}
			                    			});
			                    		}
			                    	}
		                    	}
					        },{
			                    xtype: "combo",
			                    fieldLabel: '父菜单',
			                    name: 'parent_name',
			                    store: parentComboStore,
			                    displayField : 'menu_name',
			                    valueField : 'id',
			                    emptyText: '请选择父菜单',
			                    allowBlank: false,
			                    disabled : true,
			                    listeners:{
			                    	'select':function(combo,records,eOpts){
			                    		//获取选中节点的信息
			                    		addPanel.down('textfield[name=parent_id]').setValue(records[0].get("id"));
			                    		addPanel.down('textfield[name=grade]').setValue(records[0].get("grade") * 1 + 1);
			                    		addPanel.down('textfield[name=iconCls]').setValue(records[0].get("iconCls"));
			                    		
			                    		var data = {
			                    			"id" : records[0].get("id")
			                    		};
			                    		//查询该父节点下子节点的Max(id)
			                    		$.ajax({
			                    			url 	 : '<%=path%>/menuAction!getMaxIDForTreeNode',
			                    			data 	 : data,
			                    			type 	 : 'POST',
			                    			dataType : 'json',
			                    			success  : function(jsonStr){
			                    				addPanel.down('textfield[name=id]').setValue(jsonStr.maxId);
			                    			}
			                    		});
			                    	}
		                    	}
					        },{
					            fieldLabel: '父&nbsp;&nbsp;&nbsp;&nbsp;ID',
					            name: 'parent_id',
					            xtype : 'textfield',
					            emptyText :'请输入父ID',
					            readOnly : true,
					            disabled : true
					        },{
					            fieldLabel: '&nbsp;&nbsp;&nbsp;&nbsp;ID&nbsp;&nbsp;&nbsp;',
					            name: 'id',
					            xtype : 'textfield',
					            readOnly : true,
					            emptyText :'请输入ID'
					        },{
					            fieldLabel: '菜单名',
					            name: 'menu_name',
					            xtype : 'textfield',
					            emptyText :'请输入菜单名',
					            allowBlank: false
					        }, {
					            fieldLabel: '链&nbsp;&nbsp;&nbsp;&nbsp;接',
					            name: 'menu_href',
					            xtype : 'textfield',
					            emptyText :'请输入菜单链接',
					            allowBlank: false
					        }, {
					            fieldLabel: '级&nbsp;&nbsp;&nbsp;&nbsp;别',
					            name: 'grade',
					            xtype : 'textfield',
					            readOnly : true,
					            allowBlank: false,
					            emptyText :'请输入级别'
					        },{
					        	xtype: "combo",
					        	fieldLabel: '根节点',
					        	name: 'isleaf',
					        	store: leafComboStore,
					        	queryMode: 'local',
					        	displayField : 'value',
					        	valueField : 'key',
					        	emptyText: '请选择节点显示方式',
					        	allowBlank: false
					        },{
					            fieldLabel: '图&nbsp;&nbsp;&nbsp;&nbsp;标',
					            name: 'iconCls',
					            xtype : 'textfield',
					            emptyText :'请输入图标样式',
					            allowBlank: false
					        }],
					        buttons: [{
					            text: '保存',
					            handler : function(){
					            	var parent_id = addPanel.down('textfield[name=parent_id]').getValue();
					            	var id = addPanel.down('textfield[name=id]').getValue();
					            	var menu_name = addPanel.down('textfield[name=menu_name]').getValue();
					            	var menu_href = addPanel.down('textfield[name=menu_href]').getValue();
					            	var grade = addPanel.down('textfield[name=grade]').getValue();
					            	var iconCls = addPanel.down('textfield[name=iconCls]').getValue();
					            	var isleaf = addPanel.down('textfield[name=isleaf]').getValue();
					            	
					            	if (parent_id == "" || id == "" 
					            			|| menu_name == "" || menu_href == "" || grade == "" 
					            			|| isleaf == ""){
					            		Ext.MessageBox.alert("操作提示","信息填写不完整,请重试！");
					            		return ; 
					            	}
					            	
					            	var data = {
					            		'parent_id'   : parent_id,
					            		'id'		  : id,
					            		'menu_name'	  : menu_name,
					            		'menu_href'	  : menu_href,
					            		'grade'		  : grade,
					            		'iconCls'	  : iconCls,
					            		'isleaf'	  : isleaf
					            	};
					            	
					            	$.ajax({
					            		url 	 : '<%=path%>/menuAction!addMenu',
					            		data 	 : data,
					            		type 	 : 'POST',
					            		dataType : 'json',
					            		success  : function(jsonStr){
					            			if (jsonStr.flag){
					            				Ext.MessageBox.alert("操作提示","操作成功！",function(){
					            					//刷新后关闭对话框
					            					treeStore.load();
					            					
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
			                title : '添加节点',
			                width : 430,
			                height : 370,
			                constrain : true,
			                closable : false,
			                layout : 'fit',
			                items : addPanel
			            }).show();
						
			    	}else if(event.id == 'del'){
			    		//获取节点数据
				    	var treeNode = treeGrid.getSelectionModel().getLastSelected();
				    	if (treeNode == null){
				    		Ext.MessageBox.alert("操作提示","您还未选择菜单，请选择一个菜单!");
				    		return ;
				    	}
			    		
				    	var isleaf = treeNode.get("isleaf");
				    	var id = treeNode.get("id");
				    	var parent_id = treeNode.get("parent_id");
				    	var data = {
				    		'id' 		: id,
				    		'isleaf' 	: isleaf
				    	};
				    	
				    	Ext.Msg.show({
				    		title:"操作提示",
				    		modal:true,
				    		msg:'确认删除当前选中的菜单？',
				    		icon:Ext.Msg.QUESTION,
				    		fn:function (btn,text){
				    			if(btn=="ok"){
					    			$.ajax({
							    		url 	 : '<%=path%>/menuAction!delMenu',
							    		data 	 : data,
							    		type 	 : 'POST',
							    		dataType : 'json',
							    		success  : function(jsonStr){
							    			if (jsonStr.flag){
							    				Ext.MessageBox.alert("操作提示","操作成功！",function(){
							    					treeStore.load();
							    				});
							    			}else{
							    				Ext.MessageBox.alert("操作提示",
					            						"操作失败！错误原因：<br/><font color='red'>"+jsonStr.msg+"</font>");
							    			}
							    		}
							    	});
				    			}
				    		},
				    		buttons:Ext.Msg.OKCANCEL
				    	});
			    	}else if(event.id == 'edit'){
			    		//获取节点数据
				    	var treeNode = treeGrid.getSelectionModel().getLastSelected();
				    	if (treeNode == null){
				    		Ext.MessageBox.alert("操作提示","您还未选择菜单，请选择一个菜单!");
				    		return ;
				    	}
				    	
				    	//判断是否是叶子节点
			    		var isleaf = treeNode.get("isleaf");
			    		if ("0" == isleaf){
			    			return ;
			    		}
			    		
			    		/***************编辑对话框***************/
			    		//创建编辑对话框表单
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
					            fieldLabel: '父&nbsp;&nbsp;&nbsp;&nbsp;ID',
					            name: 'parent_id',
					            value : treeNode.get("parent_id"),
					            xtype : 'textfield',
					            readOnly : true,
					            emptyText :'请输入父ID'
					        },{
					            fieldLabel: '&nbsp;&nbsp;&nbsp;&nbsp;ID&nbsp;&nbsp;&nbsp;',
					            name: 'id',
					            value : treeNode.get("id"),
					            xtype : 'textfield',
					            readOnly : true,
					            emptyText :'请输入ID'
					        },{
					            fieldLabel: '菜单名',
					            name: 'menu_name',
					            value : treeNode.get("menu_name"),
					            xtype : 'textfield',
					            emptyText :'请输入菜单名'
					        }, {
					            fieldLabel: '链&nbsp;&nbsp;&nbsp;&nbsp;接',
					            name: 'menu_href',
					            value : treeNode.get("menu_href"),
					            xtype : 'textfield',
					            emptyText :'请输入菜单链接'
					        }, {
					            fieldLabel: '级&nbsp;&nbsp;&nbsp;&nbsp;别',
					            name: 'grade',
					            value : treeNode.get("grade"),
					            xtype : 'textfield',
					            readOnly : true,
					            emptyText :'请输入级别'
					        }, {
					            fieldLabel: '样&nbsp;&nbsp;&nbsp;&nbsp;式',
					            name: 'iconCls',
					            value : treeNode.get("iconCls"),
					            xtype : 'textfield',
					            emptyText :'请输入样式'
					        }],
					        buttons: [{
					            text: '保存',
					            handler : function(){
					            	var id = editPanel.down("textfield[name=id]").getValue();
					            	var menu_name = editPanel.down("textfield[name=menu_name]").getValue();
					            	var menu_href = editPanel.down("textfield[name=menu_href]").getValue();
					            	var iconCls = editPanel.down("textfield[name=iconCls]").getValue();
					            	
					            	if (id == "" || menu_name == "" || menu_href == ""){
					            		Ext.MessageBox.alert("操作提示","信息填写不完整，请重试！");
					            		return ;
					            	}
					            	
					            	var data = {
					            		'id'		:	id,
					            		'menu_name'	:	menu_name,
					            		'menu_href'	:	menu_href,
					            		'iconCls'	:	iconCls
					            	};
					            	$.ajax({
					            		url			:	'<%=path%>/menuAction!updateMenu',
					            		data 		:	data,
					            		type 		:	'POST',
					            		dataType	:	'json',
					            		async		:	false,
					                    cache		:	false,
					            		success		: 	function(jsonStr){
					            			if (jsonStr.flag){
					            				Ext.MessageBox.alert("操作提示","操作成功！",function(){
					            					//刷新后关闭对话框
					            					treeStore.load();
					            					var editWindow  = Ext.getCmp("editWindow");
					            					editWindow.close();
					            				});
					            			}else{
					            				Ext.MessageBox.alert("操作提示",
					            						"操作失败！错误原因：<br/><font color='red'>"+jsonStr.msg+"</font>");
					            			}
					            			
					            			treeGrid.getSelectionModel().clearSelections();
											treeGrid.getView().refresh();
					            		},
					            		error 		:	function(jsonStr){
					            			Ext.MessageBox.alert("操作提示","操作失败！错误原因：未知错误");
					            		}
					            	});
					            }
					        },{
					            text: '关闭',
								handler : function(){
									
									treeGrid.getSelectionModel().clearSelections();
									treeGrid.getView().refresh();
									
					            	var editWindow  = Ext.getCmp("editWindow");
					            	editWindow.close();
					            }
					        }]
					    });
			    		
			    		//显示编辑对话框
						var editWindow = Ext.create('Ext.Window', {
							id : 'editWindow',
			                title : '编辑节点',
			                width : 430,
			                height : 300,
			                constrain : true,
			                closable : false,
			                layout : 'fit',
			                items : editPanel
			            }).show();
			    	}else if(event.id == 'refresh'){
			    		//刷新数据
			    		treeStore.load();
			    	}else if(event.id == 'expandAll'){
			    		//展开所有节点
			    		treeGrid.expandAll();
			    	}else if(event.id == 'closeAll'){
			    		//折叠所有节点
			    		treeGrid.collapseAll();
			    	}
			    }
			    
			    Ext.EventManager.onWindowResize(function(width ,height){
			    	treeGrid.setWidth(width);
			    	treeGrid.setHeight(height);
			    });
			});
		</script>
	</head>
	<body>
	
	</body>
</html>