<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线出题测试系统-用户试卷列表</title>
		<!-- 引入相关的css/js -->
		<%@ include file="../../include/base.jsp" %>
		<script type="text/javascript">
			var userGrid = null;
			var userStore = null;
			
			$(function(){
				$("#queryBtn").click(function(){
					userStore.load();
				});
			});
			
			Ext.onReady(function(){
				var pluginExpanded = true;
				
				/*****************定义数据模型*****************/
			    Ext.define('userModel', {
			        extend: 'Ext.data.Model',
			        fields: [
			            'id',
			            'username',
						'password',
						'role',
			            'sex',
			            'birthday',
						'classname',
						'truename',
						'address',
						'email',
						'tel',
						'roleid'
			        ],
			        idProperty: 'id'
			    });
				
			    Ext.define('roleModel', {
	    		    extend: 'Ext.data.Model',
	    		    fields: [
	    		        {type: 'string', name: 'id'},
	    		        {type: 'string', name: 'role_name'}
	    		    ]
	    		});
			    
			    /*****************创建数据源*****************/
			    userStore = Ext.create('Ext.data.Store', {
			        pageSize: 10,
			        model: 'userModel',
			        remoteSort: true,
			        proxy: {
			            type: 'ajax',
			            getMethod: function(){ return 'POST'; },
			            url: '<%=path%>/userAction!getUserList',
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
			    
			    var roleStore = Ext.create('Ext.data.Store', {
					model: 'roleModel',
					proxy: {
						type: 'ajax',
						url: '<%=path%>/roleAction!getAllRoleList',
						reader:'json'
					},
					autoLoad: true
	    	    });
			    
			    /*****************加载数据前附加查询参数*****************/
			    userStore.on('beforeload', function (store, options) {
			    	
			    	var query = $("#query").val();
			    	var subjectID = $("#subjectID").val();
			    	
					var new_params = {
						query	  	 : query,
						subject_name : subjectID
					};  
			    	Ext.apply(store.proxy.extraParams, new_params);
			    });
			    
			    /*****************加载数据*****************/
			    userStore.load();
	
			    /*****************顶部工具栏*****************/
			    var tbar = Ext.create("Ext.toolbar.Toolbar", {
			    	items: [
			    		{text: '添加用户', 	iconCls: 'Add', 			id: 'add', 			handler: tbarFn}, 
			    			'-',
			    		{text: '删除用户', 	iconCls: 'Cross', 			id: 'del', 			handler: tbarFn},
			    			'-',
			    		{text: '编辑用户', 	iconCls: 'Cogedit', 		id: 'edit', 		handler: tbarFn},
			    			'-',
			    		{text: '查看用户信息', 	iconCls: 'Book', 			id: 'preview', 		handler: tbarFn},
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
								    fieldLabel: '用户名',
								    name: 'username',
								    xtype : 'textfield',
								    emptyText :'请输入用户名'
								},{
								    fieldLabel: '密&nbsp;&nbsp;&nbsp;码',
								    name: 'password',
								    xtype : 'textfield',
								    emptyText :'请输入密码'
								},{
								    fieldLabel: '权&nbsp;&nbsp;&nbsp;限',
								    id : 'roleRadio',
								    xtype: 'radiogroup',
						            items: [
						                {boxLabel: '管理员',	name: 'role',	inputValue: 'admin'},
						                {boxLabel: '教师', 	name: 'role',	inputValue: 'teacher'},
						                {boxLabel: '学生',	name: 'role',	inputValue: 'stu',	checked: true}
						            ]
								},{
								    fieldLabel: '性&nbsp;&nbsp;&nbsp;别',
								    id : 'sexRadio',
								    xtype: 'radiogroup',
						            items: [
						                {boxLabel: '男',	name: 'sex',	inputValue: '男',	checked: true},
						                {boxLabel: '女',	name: 'sex',	inputValue: '女'},
						            ]
								},{
								    fieldLabel: '出生日',
								    name: 'birthday',
								    xtype : 'datefield',
								    format: 'Y-m-d',
								    emptyText :'请输入出生日期'
								},{
								    fieldLabel: '姓&nbsp;&nbsp;&nbsp;名',
								    name: 'truename',
								    xtype : 'textfield',
								    emptyText :'请输入真实姓名'
								},{
								    fieldLabel: '邮&nbsp;&nbsp;&nbsp;箱',
								    name: 'email',
								    xtype : 'textfield',
								    emptyText :'请输入邮箱'
								},{
								    fieldLabel: '手机号',
								    name: 'tel',
								    xtype : 'textfield',
								    emptyText :'请输入手机号'
								},{
								    fieldLabel: '地&nbsp;&nbsp;&nbsp;址',
								    name: 'address',
								    xtype : 'textfield',
								    emptyText :'请输入住址'
								},{
				                    xtype: "combo",
				                    fieldLabel: '角&nbsp;&nbsp;&nbsp;色',
				                    name: 'roleid',
				                    store: roleStore,
				                    displayField : 'role_name',
				                    valueField : 'id',
				                    emptyText: '请选择角色',
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
					            	
					            	var username = addPanel.down('textfield[name=username]').getValue();
					            	var password = addPanel.down('textfield[name=password]').getValue();
					            	var role = Ext.getCmp('roleRadio').getValue().role;
					            	var sex = Ext.getCmp('sexRadio').getValue().sex;
					            	var birthday = addPanel.down('textfield[name=birthday]').getValue();
					            	var truename = addPanel.down('textfield[name=truename]').getValue();
					            	var email = addPanel.down('textfield[name=email]').getValue();
					            	var tel = addPanel.down('textfield[name=tel]').getValue();
					            	var address = addPanel.down('textfield[name=address]').getValue();
					            	var roleid = addPanel.down('textfield[name=roleid]').getValue();
					            	
					            	if(	(username == null || username == "") || 
					            			(password == null || password == "") ||
					            			(role == null || role == "") ||
					            			(sex == null || sex == "") ||
					            			(birthday == null || birthday == "") ||
					            			(truename == null || truename == "") ||
					            			(email == null || email == "") ||
					            			(tel == null || tel == "") ||
					            			(address == null || address == "") ||
					            			(roleid == null || roleid == "")
					            	){
					            		Ext.MessageBox.alert("操作提示","请将信息补充完整!");
					            		return ;
					            	};
					            	
					            	var data ={
					            		"username" : username,
					            		"password" : password,
					            		"role" : role,
					            		"sex" : sex,
					            		"birthday" : (birthday.getTime()/1000).toString(),
					            		"truename" : truename,
					            		"email" : email,
					            		"tel" : tel,
					            		"address" : address,
					            		"roleid" : roleid,
					            		"classname" : 10
					            	}
					            	
									var url = '<%=path%>/userAction!addUser';
					            	$.ajax({
					            		url : url,
					            		data : data,
					            		type : 'POST',
					            		dataType : 'json',
					            		success : function(jsonStr){
					            			if (jsonStr.flag){
					            				Ext.MessageBox.alert("操作提示","操作成功！",function(){
					            					//刷新后关闭对话框
					            					userStore.load();
					            					
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
			                title : '添加用户',
			                width : 430,
			                height : 400,
			                constrain : true,
			                closable : false,
			                layout : 'fit',
			                items : addPanel
			            }).show();
			    		
			    	}else if (btn.id == 'del'){
			    		
			    		var treeNode = userGrid.getSelectionModel().getSelection();
			    		if (treeNode == null || treeNode.length <= 0){
			    			Ext.MessageBox.alert("操作提示","您还未选择用户，请至少选择一个用户!");
			    			return ;
			    		}
			    		
			    		Ext.Msg.show({
				    		title:"操作提示",
				    		modal:true,
				    		msg:'确认删除当前选中的用户？',
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
						    			idStr : idStr
						    		};
						    		
						    		$.ajax({
						    			url : '<%=path%>/userAction!delUsers',
						    			data : data,
						    			type : 'POST',
						    			dataType : 'json',
						    			success : function(jsonStr){
						    				if(jsonStr.flag){
						    					Ext.MessageBox.alert("操作提示","操作成功!",function(){
						    						userStore.load();
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
			    		var row = userGrid.getSelectionModel().getLastSelected();
			    		if (row == null){
			    			Ext.MessageBox.alert("操作提示","您还未选择用户，请选择一个用户!");
			    			return ;
			    		}
			    		
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
			    					fieldLabel: '用户名',
			    					name: 'username',
			    					xtype : 'textfield',
			    					value : row.get("username"),
			    					emptyText :'请输入用户名'
			    				},{
			    					fieldLabel: '密&nbsp;&nbsp;&nbsp;码',
			    					name: 'password',
			    					xtype : 'textfield',
			    					value : row.get("password"),
			    					emptyText :'请输入密码'
			    				},{
			    					fieldLabel: '权&nbsp;&nbsp;&nbsp;限',
			    					id : 'roleRadio',
			    					xtype: 'radiogroup',
			    					items: [
			    						{boxLabel: '管理员',	name: 'role',	inputValue: 'admin'},
			    						{boxLabel: '教师', 	name: 'role',	inputValue: 'teacher'},
			    						{boxLabel: '学生',	name: 'role',	inputValue: 'stu'}
			    					],
			    					listeners:{
			    						'beforerender': function(radioGroup) {
			    							var role =  row.get("role");
			    							if (role != ""){
			    								radioGroup.setValue({
				    								role : row.get("role")
				    							});
			    							}
			    						}
			    					}
			    				},{
			    					fieldLabel: '性&nbsp;&nbsp;&nbsp;别',
			    					id : 'sexRadio',
			    					xtype: 'radiogroup',
			    					items: [
			    						{boxLabel: '男',	name: 'sex',	inputValue: '男',	checked: true},
			    						{boxLabel: '女',	name: 'sex',	inputValue: '女'},
			    					],
			    					listeners:{
			    						'beforerender' : function(radioGroup) {
			    							radioGroup.setValue({
			    								sex : row.get("sex")
			    							});
			    						}
			    					}
			    				},{
			    					fieldLabel: '出生日',
			    					name: 'birthday',
			    					value : new Date(row.get("birthday") * 1000),
			    					xtype : 'datefield',
			    					format: 'Y-m-d',
			    					emptyText :'请输入出生日期'
			    				},{
			    					fieldLabel: '姓&nbsp;&nbsp;&nbsp;名',
			    					name: 'truename',
			    					value : row.get("truename"),
			    					xtype : 'textfield',
			    					emptyText :'请输入真实姓名'
			    				},{
			    					fieldLabel: '邮&nbsp;&nbsp;&nbsp;箱',
			    					name: 'email',
			    					value : row.get("email"),
			    					xtype : 'textfield',
			    					emptyText :'请输入邮箱'
			    				},{
			    					fieldLabel: '手机号',
			    					name: 'tel',
			    					value : row.get("tel"),
			    					xtype : 'textfield',
			    					emptyText :'请输入手机号'
			    				},{
			    					fieldLabel: '地&nbsp;&nbsp;&nbsp;址',
			    					name: 'address',
			    					value : row.get("address"),
			    					xtype : 'textfield',
			    					emptyText :'请输入住址'
			    				},{
			    					xtype: "combo",
			    					fieldLabel: '角&nbsp;&nbsp;&nbsp;色',
			    					name: 'roleid',
			    					store: roleStore,
			    					displayField : 'role_name',
			    					valueField : 'id',
			    					emptyText: '请选择角色',
			    					allowBlank: false,
			    					listeners:{
			    						afterRender: function(combo) {
			    							var roleid =  row.get("roleid").toString();
			    							if (roleid != ""){
				    							var role_name = roleStore.getById(roleid).get("role_name");
				    							combo.setValue(role_name);
			    							}
			    						}
			    					}
			    				}
			    			],
			    			buttons: [{
			    				text: '保存',
			    				handler : function(){
			    					
			    					var username = editPanel.down('textfield[name=username]').getValue();
			    					var password = editPanel.down('textfield[name=password]').getValue();
			    					var role = Ext.getCmp('roleRadio').getValue().role;
			    					var sex = Ext.getCmp('sexRadio').getValue().sex;
			    					var birthday = editPanel.down('textfield[name=birthday]').getValue();
			    					var truename = editPanel.down('textfield[name=truename]').getValue();
			    					var email = editPanel.down('textfield[name=email]').getValue();
			    					var tel = editPanel.down('textfield[name=tel]').getValue();
			    					var address = editPanel.down('textfield[name=address]').getValue();
			    					var roleid = editPanel.down('textfield[name=roleid]').getValue();
			    					
			    					if(	(username == null || username == "") || 
			    							(password == null || password == "") ||
			    							(role == null || role == "") ||
			    							(sex == null || sex == "") ||
			    							(birthday == null || birthday == "") ||
			    							(truename == null || truename == "") ||
			    							(email == null || email == "") ||
			    							(tel == null || tel == "") ||
			    							(address == null || address == "") ||
			    							(roleid == null || roleid == "")
			    					){
			    						Ext.MessageBox.alert("操作提示","请将信息补充完整!");
			    						return ;
			    					};
			    					
			    					var data ={
			    						"username" : username,
			    						"password" : password,
			    						"role" : role,
			    						"sex" : sex,
			    						"birthday" : (birthday.getTime()/1000).toString(),
			    						"truename" : truename,
			    						"email" : email,
			    						"tel" : tel,
			    						"address" : address,
			    						"roleid" : roleid,
			    						"classname" : 10,
			    						"id" : row.get("id")
			    					}
			    					
			    					var url = '<%=path%>/userAction!editUser';
			    					$.ajax({
			    						url : url,
			    						data : data,
			    						type : 'POST',
			    						dataType : 'json',
			    						success : function(jsonStr){
			    							if (jsonStr.flag){
			    								Ext.MessageBox.alert("操作提示","操作成功！",function(){
			    									//刷新后关闭对话框
			    									userStore.load();
			    									
			    									var editWindow  = Ext.getCmp("editWindow");
			    									editWindow.close();
			    								});
			    							}else{
			    								Ext.MessageBox.alert("操作提示",
			    										"操作失败！错误原因：<br/><font color='red'>"+jsonStr.msg+"</font>");
			    							}
			    							
			    							userGrid.getSelectionModel().clearSelections();
			    				    		userGrid.getView().refresh();
			    						}
			    					});
			    				}
			    			},{
			    				text: '关闭',
			    				handler : function(){
			    					userGrid.getSelectionModel().clearSelections();
						    		userGrid.getView().refresh();
			    					
			    					var editWindow  = Ext.getCmp("editWindow");
			    					editWindow.close();
			    				}
			    			}]
			    		});

			    		//显示编辑对话框
			    		var editWindow = Ext.create('Ext.Window', {
			    			id : 'editWindow',
			    			title : '编辑用户',
			    			width : 430,
			    			height : 400,
			    			constrain : true,
			    			closable : false,
			    			layout : 'fit',
			    			items : editPanel
			    		}).show();

			    		
			    	}else if (btn.id == 'preview'){
			    		
			    		//获取选中数据
			    		var row = userGrid.getSelectionModel().getLastSelected();
			    		if (row == null){
			    			Ext.MessageBox.alert("操作提示","您还未选择用户，请选择一个用户!");
			    			return ;
			    		}
			    		
			    		var url = "<%=path%>/userAction!checkUserInfo?id=" + row.get("id");
			    		
			    		var previewWindow = Ext.create('Ext.Window', {
			    			id : 'previewWindow',
			    			title : '用户信息',
			    			maximized:true,
			    			constrain : true,
			    			closable : true,
			    			html:"<iframe scrolling='yes' width='100%' height='100%'  frameborder='0' src='" + url + "'></iframe>"
			    		}).show();
			    		
			    		userGrid.getSelectionModel().clearSelections();
			    		userGrid.getView().refresh();
			    	}else if (btn.id == 'refresh'){
			    		userStore.load();
			    	}
			    }
			    
			    /*****************创建分页工具栏*****************/
			    var bbar = Ext.create('Ext.PagingToolbar', {
		            store: userStore,
		            displayInfo: true,
		            displayMsg: '显示{0}-{1}条，共{2}条',
		            emptyMsg: "无数据"
		        });
			    
			    /*****************创建数据表*****************/
			    var selModel = Ext.create('Ext.selection.CheckboxModel', {
			    	mode:"SIMPLE"
			    });
			    
			    userGrid = Ext.create('Ext.grid.Panel', {
			    	layout: 'fit',
			    	region: "center",
			        store: userStore,
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
						{text: "ID",		id: 'id',			dataIndex: 'id',		hidden: true},
						{text: "username",	id: 'username',		dataIndex: 'username',	hidden: true},
						{text: "password",	id: 'password',		dataIndex: 'password',	hidden: true},
						{text: "role",		id: 'role',			dataIndex: 'role',		hidden: true},
						{text: "birthday",	id: 'birthday',		dataIndex: 'birthday',	hidden: true},
						{text: "classname",	id: 'classname',	dataIndex: 'classname',	hidden: true},
						{text: "roleid",	id: 'roleid',		dataIndex: 'roleid',	hidden: true},
						{text: "用户", 	width:400,	id: 'truename',		dataIndex: 'truename',		align: 'center',	sortable: true,flex:1},
						{text: "性别", 	width:100,	id: 'sex',			dataIndex: 'sex',			align: 'center',	sortable: true},
						{text: "邮箱", 	width:200,	id: 'email',		dataIndex: 'email',			align: 'center',	sortable: true},
						{text: "电话",	width:200,	id: 'tel',			dataIndex: 'tel',			align: 'center',	sortable: true}
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
					items : [queryPanel,userGrid]
				});
			});	
		
		</script>
	</head>
	<body>
		<form id="queryForm" style="margin:5px;">
			<div class="form-group col-md-12" >
				<div class="input-group">  
					<input id="query" name="query" type="text" class="form-control" placeholder="请输入关键字【账户/姓名/地址/邮箱/电话】" / >  
					<span class="input-group-btn">  
						<a href="javascript:void(0);" id="queryBtn" class="btn btn-primary" style="width:80px;">查&nbsp;&nbsp;找</a>
					</span>
				 </div>
			</div>
	  	</form>
	</body>
</html>