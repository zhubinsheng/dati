<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线出题测试系统-登录</title>
		<!-- 引入相关的css/js -->
		<%@ include file="include/base.jsp" %>
		<script type="text/javascript">
			Ext.onReady(function() {
				var store=Ext.create('Ext.data.Store',{
					fields:['key','value'],
					data:[{
						"key" 	: "admin",
						"value" : "管理员",
					},{
						"key" 	: "teacher",
						"value" : "老师",
					},{
						"key" 	: "stu",
						"value" : "学生",
					}]
				});
				
			    var userLoginPanel = Ext.create('Ext.panel.Panel', {
			        bodyCls: 'my_bgLogo',
			        border: false,
			        defaults: {
			            margin: '58 0'
			        },
			        items: {
			            xtype: 'tabpanel',
			            id: 'loginTabs',
			            activeTab: 0,
			            height: 180,
			            border: false,
			            items: [{
			                title: "身份认证",
			                xtype: 'form',
			                id: 'loginForm',
			                defaults: {
			                    width: 260,
			                    margin: '10 0 0 70'
			                },
			                // The fields  
			                defaultType: 'textfield',
			                labelWidth: 40,
			                items: [{
			                    fieldLabel: '用户名',
			                    cls: 'User',
			                    name: 'username',
			                    labelAlign: 'right',
			                    labelWidth: 65,
			                    maxLength: 30,
			                    emptyText: '请在这里填写用户名',
			                    maxLengthText: '账号的最大长度为30个字符',
			                    blankText: "用户名不能为空，请填写！",
			                    //错误提示信息，默认为This field is required!  
			                    allowBlank: false
			                },
			                {
			                    fieldLabel: '密&nbsp;&nbsp;&nbsp;&nbsp;码',
			                    cls: 'Key',
			                    name: 'password',
			                    inputType: "password",
			                    labelWidth: 65,
			                    labelAlign: 'right',
			                    emptyText: '请在这里填写密码',
			                    maxLengthText: '密码长度不能超过20',
			                    maxLength: 20,
			                    blankText: "密码不能为空，请填写！",
			                    //错误提示信息，默认为This field is required!  
			                    allowBlank: false
			                },
			                {
			                    xtype: "combo",
			                    fieldLabel: '角&nbsp;&nbsp;&nbsp;&nbsp;色',
			                    cls: 'Userkey',
			                    name: 'role',
			                    labelAlign: 'right',
			                    labelWidth: 65,
			                    store: store,
			                    queryMode: 'local',//加载本地数据  
			                    displayField : 'value',//显示的字段，对应store中的text值
			                    valueField : 'key',//实际传递到后台的值  
			                    //数据源为一数组  
			                    emptyText: '请选择角色.',
			                    blankText: "请选择角色！",
			                    //错误提示信息，默认为This field is required!  
			                    allowBlank: false
			                },
			                {
			                    id: 'id_reg_panel',
			                    xtype: 'panel',
			                    border: false,
			                    hidden: true,
			                    html: '<br><span id="messageTip" style="color:red"> </span>'
			                }]
			            },
			            {
			                title: '关于',
			                contentEl: 'aboutDiv',
			                defaults: {
			                    width: 230
			                }
			            }]
			        }
			    });
	
			    Ext.create('Ext.window.Window', {
			        title: 'TESTONLINE®ExtJs在线出题测试系统',
			        width: 440,
			        height: 300,
			        layout: 'fit',
			        plain: true,
			        modal: false,
			        maximizable: false,
			        draggable: false,
			        closable: false,
			        resizable: false,
			        items: userLoginPanel,
			        // 重置 和 登录 按钮.  
			        buttons: [{
			        	text:'注册',
			        	iconCls:'Useradd',
			        	handler:function(){
			        		
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
			        				}
			        			],
			        			buttons: [{
			        				text: '保存',
			        				handler : function(){
			        					
			        					var username = addPanel.down('textfield[name=username]').getValue();
			        					var password = addPanel.down('textfield[name=password]').getValue();
			        					var sex = Ext.getCmp('sexRadio').getValue().sex;
			        					var birthday = addPanel.down('textfield[name=birthday]').getValue();
			        					var truename = addPanel.down('textfield[name=truename]').getValue();
			        					var email = addPanel.down('textfield[name=email]').getValue();
			        					var tel = addPanel.down('textfield[name=tel]').getValue();
			        					var address = addPanel.down('textfield[name=address]').getValue();
			        					
			        					if(	(username == null || username == "") || 
			        							(password == null || password == "") ||
			        							(sex == null || sex == "") ||
			        							(birthday == null || birthday == "") ||
			        							(truename == null || truename == "") ||
			        							(email == null || email == "") ||
			        							(tel == null || tel == "") ||
			        							(address == null || address == "")
			        					){
			        						Ext.MessageBox.alert("操作提示","请将信息补充完整!");
			        						return ;
			        					};
			        					
			        					var data ={
			        							"username" : username,
			        							"password" : password,
			        							"sex" : sex,
			        							"birthday" : (birthday.getTime()/1000).toString(),
			        							"truename" : truename,
			        							"email" : email,
			        							"tel" : tel,
			        							"address" : address,
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
				                title : '用户注册',
				                iconCls:'Useradd',
				                modal: true,
				                width : 430,
				                height : 340,
				                constrain : true,
				                closable : false,
				                layout : 'fit',
				                items : addPanel
				            }).show();
			        		
			        	}
			        },{
			            text: '登录',
			            iconCls: 'User',
			            handler: function() {
			            	var username = userLoginPanel.down("textfield[name=username]").getValue();
			            	var password = userLoginPanel.down("textfield[name=password]").getValue();
			            	var role = userLoginPanel.down("textfield[name=role]").getValue();
							$.ajax({
								url			: '<%=path%>/loginAction!login',
								type		: 'post',
								data		: {
									'username' : username,
									'password' : password,
									'role'	   : role
								},
								dataType	: 'json',
								success		: function(jsonStr){
									if (jsonStr.flag){
										window.location.href="<%=path%>/page/main.jsp";
									}else{
										Ext.MessageBox.alert("操作提示",jsonStr.msg);
									}
								}
							});
			            }
			        }]
			    }).show();
			    
			    $(function(){
			    	$("input[name='username']").val("nn200433");
			    	$("input[name='password']").val("123");
			    });
			});
		</script>
	</head>
	<body class="my_index_bg">
	    <div id="hello-tabs">  
	        <!-- <img border="0" width="430" height="60"    src="../demo/image/logo.jpg" /> -->  
	    </div>  
	    <div id="aboutDiv" class="x-hidden"  
	        style='color: black; padding-left: 10px; padding-top: 10px; font-size: 12px'>  
			在线出题测试系统v1.0<br/>
	    	指导老师：龚平<br/>
	    	开发人员：宋建烜
	    </div>
	</body>
</html>