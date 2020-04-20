<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>数据字典</title>
		<!-- 引入相关的css/js -->
		<%@ include file="../../include/base.jsp" %>
		<script type="text/javascript">
			Ext.onReady(function(){
				
				Ext.define('Post', {
			        extend: 'Ext.data.Model',
			        idProperty: 'id',
			        fields: [{
			            name: "id",
			            convert: undefined
			        }, {
			            name: "dic_name",
			            convert: undefined
			        }, {
			            name: "dic_value",
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
			            name: "parent_name",
			            convert: undefined
			        }, {
			            name: "sort",
			            convert: undefined
			        }]
			    });
				
				/***************树表数据***************/
			    var store = Ext.create('Ext.data.TreeStore', {
			        model: 'Post',
			        proxy: {
			            type: 'ajax',
			            reader: 'json',
			            url: '<%=path%>/dicAction!getDicList'
			        },
			        lazyFill: true
			    });
				
			    /***************工具栏***************/
			    var tbar = Ext.create("Ext.toolbar.Toolbar", {
			    	items: [
			    		{
			    			text: '添加节点',
			    			iconCls: 'Add',
			    			id : 'add',
			    			handler : tbarFn
			    		}, '-',
			    		{
			    			text: '删除节点',
			    			iconCls: 'Cross',
			    			id : 'del',
			    			handler : tbarFn
			    		}, '-',
			    		{
			    			text: '修改节点',
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
			    var treePanel = Ext.create('Ext.tree.Panel', {
			        width : window.innerWidth,
			        height : window.innerHeight,
			        renderTo : Ext.getBody(),
			        tbar : tbar,
			        //collapsible : true,
			        loadMask : true,
			        useArrows : true,
			        rootVisible : false,
			        store : store,
			        animate : false,
			        plugins : [{
			            ptype : 'bufferedrenderer'
			        }],
			        columns : [{
			            xtype : 'treecolumn',		//设置显示为树状的列
			            text : '字典名',
			            flex : 2.5,
			            dataIndex : 'dic_name',
			            sortable : true
			        },{
			            text : '字典值',
			            flex : 1,
			            dataIndex : 'dic_value',
			            sortable : true
			        },{
			            text : '级别',
			            flex : 2,
			            dataIndex : 'grade'
			        },{
			            text : 'ID',
			            flex : 2,
			            dataIndex : 'id'
			        },{
			        	text : '父ID',
			        	flex : 2,
			        	dataIndex : 'parent_id'
			        },{
			        	text : '分类',
			        	flex : 2,
			        	dataIndex : 'sort'
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
			    		        {type: 'string', name: 'dic_name'},
			    		        {type: 'string', name: 'dic_value'},
			    		        {type: 'string', name: 'grade'},
			    		        {type: 'string', name: 'parent_id'},
			    		        {type: 'string', name: 'sort'},
			    		        {type: 'string', name: 'isleaf'}
			    		    ]
			    		});
			    		
			    		var parentComboStore = Ext.create('Ext.data.Store', {
							model: 'parentComboModel',
							proxy: {
								type: 'ajax',
								url: '<%=path%>/dicAction!getDicParentNodeList',
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
			                    				url 	 : '<%=path%>/dicAction!getMaxTreeNodeForID',
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
			                    fieldLabel: '父节点',
			                    name: 'parent_name',
			                    store: parentComboStore,
			                    displayField : 'dic_name',
			                    valueField : 'dic_value',
			                    emptyText: '请选择父节点',
			                    allowBlank: false,
			                    disabled : true,
			                    listeners:{
			                    	'select':function(combo,records,eOpts){
			                    		//获取选中节点的信息
			                    		addPanel.down('textfield[name=parent_id]').setValue(records[0].get("id"));
			                    		addPanel.down('textfield[name=grade]').setValue(records[0].get("grade") * 1 + 1);
			                    		addPanel.down('textfield[name=sort]').setValue(records[0].get("sort"));
			                    		
			                    		var data = {
			                    			"id" : records[0].get("id")
			                    		};
			                    		//查询该父节点下子节点的Max(id)
			                    		$.ajax({
			                    			url 	 : '<%=path%>/dicAction!getMaxTreeNodeForID',
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
					            fieldLabel: '字典名',
					            name: 'dic_name',
					            xtype : 'textfield',
					            emptyText :'请输入字典名',
					            allowBlank: false
					        }, {
					            fieldLabel: '字典值',
					            name: 'dic_value',
					            xtype : 'textfield',
					            emptyText :'请输入字典值',
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
					            fieldLabel: '分&nbsp;&nbsp;&nbsp;&nbsp;类',
					            name: 'sort',
					            xtype : 'textfield',
					            emptyText :'请输入分类',
					            allowBlank: false
					        }],
					        buttons: [{
					            text: '保存',
					            handler : function(){
					            	var parent_id = addPanel.down('textfield[name=parent_id]').getValue();
					            	var parent_name = addPanel.down('textfield[name=parent_name]').getValue();
					            	var id = addPanel.down('textfield[name=id]').getValue();
					            	var dic_name = addPanel.down('textfield[name=dic_name]').getValue();
					            	var dic_value = addPanel.down('textfield[name=dic_value]').getValue();
					            	var grade = addPanel.down('textfield[name=grade]').getValue();
					            	var sort = addPanel.down('textfield[name=sort]').getValue();
					            	var isleaf = addPanel.down('textfield[name=isleaf]').getValue();
					            	
					            	if (parent_id == "" || parent_name == "" || id == "" 
					            			|| dic_name == "" || dic_value == "" || grade == "" 
					            			|| sort == "" || isleaf == ""){
					            		Ext.MessageBox.alert("操作提示","信息填写不完整,请重试！");
					            		return ; 
					            	}
					            	
					            	var data = {
					            		'parent_id'   : parent_id,
					            		'parent_name' : parent_name,
					            		'id'		  : id,
					            		'dic_name'	  : dic_name,
					            		'dic_value'	  : dic_value,
					            		'grade'		  : grade,
					            		'sort'		  : sort,
					            		'isleaf'	  : isleaf
					            	};
					            	
					            	$.ajax({
					            		url 	 : '<%=path%>/dicAction!addParentNode',
					            		data 	 : data,
					            		type 	 : 'POST',
					            		dataType : 'json',
					            		success  : function(jsonStr){
					            			if (jsonStr.flag){
					            				Ext.MessageBox.alert("操作提示","操作成功！",function(){
					            					//刷新后关闭对话框
					            					store.load();
					            					
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
				    	var treeNode = treePanel.getSelectionModel().getLastSelected();
				    	if (treeNode == null){
				    		Ext.MessageBox.alert("操作提示","您还未选择节点，请选择一个节点!");
				    		return ;
				    	}
			    		
				    	var isleaf = treeNode.get("isleaf");
				    	var id = treeNode.get("id");
				    	var parent_id = treeNode.get("parent_id");
				    	var data = {
				    		'id' 		: id,
				    		'parent_id' : parent_id,
				    		'isleaf' 	: isleaf
				    	};
				    	
				    	
				    	Ext.Msg.show({
				    		title:"操作提示",
				    		modal:true,
				    		msg:'确认删除当前选中节点？',
				    		icon:Ext.Msg.QUESTION,
				    		fn:function (btn,text){
				    			if(btn=="ok"){
					    			$.ajax({
							    		url 	 : '<%=path%>/dicAction!delTreeNode',
							    		data 	 : data,
							    		type 	 : 'POST',
							    		dataType : 'json',
							    		success  : function(jsonStr){
							    			if (jsonStr.flag){
							    				Ext.MessageBox.alert("操作提示","操作成功！");
							    				store.load();
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
				    	var treeNode = treePanel.getSelectionModel().getLastSelected();
				    	if (treeNode == null){
				    		Ext.MessageBox.alert("操作提示","您还未选择节点，请选择一个节点!");
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
					            fieldLabel: '父节点',
					            name: 'parent_name',
					            value : treeNode.get("parent_name"),
					            xtype : 'textfield',
					            readOnly : true,
					            emptyText :'请输入父节点'
					        },{
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
					            fieldLabel: '字典名',
					            name: 'dic_name',
					            value : treeNode.get("dic_name"),
					            xtype : 'textfield',
					            emptyText :'请输入字典名'
					        }, {
					            fieldLabel: '字典值',
					            name: 'dic_value',
					            value : treeNode.get("dic_value"),
					            xtype : 'textfield',
					            emptyText :'请输入字典值'
					        }, {
					            fieldLabel: '级&nbsp;&nbsp;&nbsp;&nbsp;别',
					            name: 'grade',
					            value : treeNode.get("grade"),
					            xtype : 'textfield',
					            readOnly : true,
					            emptyText :'请输入级别'
					        }, {
					            fieldLabel: '分&nbsp;&nbsp;&nbsp;&nbsp;类',
					            name: 'sort',
					            value : treeNode.get("sort"),
					            xtype : 'textfield',
					            readOnly : true,
					            emptyText :'请输入分类'
					        }],
					        buttons: [{
					            text: '保存',
					            handler : function(){
					            	var id = editPanel.down("textfield[name=id]").getValue();
					            	var dic_name = editPanel.down("textfield[name=dic_name]").getValue();
					            	var dic_value = editPanel.down("textfield[name=dic_value]").getValue();
					            	
					            	if (id == "" || dic_name == "" || dic_value == ""){
					            		Ext.MessageBox.alert("操作提示","信息填写不完整，请重试！");
					            		return ;
					            	}
					            	
					            	var data = {
					            		'id'		:	id,
					            		'dic_name'	:	dic_name,
					            		'dic_value'	:	dic_value
					            	};
					            	$.ajax({
					            		url			:	'<%=path%>/dicAction!updateDict',
					            		data 		:	data,
					            		type 		:	'POST',
					            		dataType	:	'json',
					            		async		:	false,
					                    cache		:	false,
					            		success		: 	function(jsonStr){
					            			if (jsonStr.flag){
					            				Ext.MessageBox.alert("操作提示","操作成功！",function(){
					            					//刷新后关闭对话框
					            					store.load();
					            					var editWindow  = Ext.getCmp("editWindow");
					            					editWindow.close();
					            				});
					            			}else{
					            				Ext.MessageBox.alert("操作提示",
					            						"操作失败！错误原因：<br/><font color='red'>"+jsonStr.msg+"</font>");
					            			}
					            			
					            			treePanel.getSelectionModel().clearSelections();
											treePanel.getView().refresh();
					            		},
					            		error 		:	function(jsonStr){
					            			Ext.MessageBox.alert("操作提示","操作失败！错误原因：未知错误");
					            		}
					            	});
					            }
					        },{
					            text: '关闭',
								handler : function(){
									
									treePanel.getSelectionModel().clearSelections();
									treePanel.getView().refresh();
									
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
			    		store.load();
			    	}else if(event.id == 'expandAll'){
			    		//展开所有节点
			    		treePanel.expandAll();
			    	}else if(event.id == 'closeAll'){
			    		//折叠所有节点
			    		treePanel.collapseAll();
			    	}
			    }
			    
			    Ext.EventManager.onWindowResize(function(width ,height){
			    	treePanel.setWidth(width);
			    	treePanel.setHeight(height);
			    });
			});
		</script>
	</head>
	<body>
	
	</body>
</html>