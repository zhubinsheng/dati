<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线出题测试系统</title>
		<!-- 引入相关的css/js -->
		<%@ include file="../include/base.jsp" %>
		<script type="text/javascript" src="<%=path%>/js/EXT.Notification.js"></script>
		
		<style type="text/css">
			.footer{
				margin:20px 0;
				line-height: 15px;
				color:#ccc;
			}
		</style>
		
		<script type="text/javascript">
			var ajax = function(config) {
				Ext.Ajax.request({
					url : 		config.url, 		//请求地址
					params : 	config.params, 		//请求参数
					method : 	'post', 			//方法
					callback : 	function(options, success, response) {
						//调用回调函数
						config.callback(Ext.JSON.decode(response.responseText));
					}
				});
				return false;
			};
		
			Ext.onReady(function(){
				
				ajax({
					url : "<%=path%>/roleAction!getRoleMenuParent?roleID=${userInfo.roleid}",		//获取父菜单(即0级菜单)
					callback : addTree
				});
				
				function addTree(data) {
					var menuTree = Ext.getCmp('menu');					//获取到布局西侧的菜单面板
					for (var i = 0; i < data.length; i++) {
						menuTree.add(new Ext.tree.TreePanel({
							title: 			data[i].menu_name,			//菜单名字
							iconCls: 		data[i].iconCls,			//菜单图标
							autoScroll: 	false,
							rootVisible: 	false,
							viewConfig: {
								loadingText: "正在加载..."
							},
							store: 			createStore(data[i].id),
							listeners: {
								afterlayout: function() {
									if (this.getView().el) {
										var el = this.getView().el;
										var table = el.down("table.x-grid-table");
										if (table) {
											table.setWidth(el.getWidth());
										}
									}
								},
								itemdblclick: function(view, record, item, index, e, eOpts) {
									var tabPanel = Ext.getCmp("container");
									if (record.get('leaf') == '1') {
			                            var id = record.get('id');
			                            if (Ext.getCmp(id)){
			                            	tabPanel.setActiveTab(id);
			                            }else{
			                            	tabPanel.add({
			                            		iconCls: record.get('iconCls'),
												title: record.get('text'),
												html: '<iframe width = "100%" height = "100%" frameborder = "0" scrolling = "auto" src = "<%=path%>/' + record.get('menu_href') + '" />',
												closable: true,
												id: id
											});
			                            	tabPanel.setActiveTab(id);			//激活新的选项卡
										}  
			                        }
								}
							}
						}));
						menuTree.doLayout();
					}
				}
				
				var model = Ext.define("TreeModel", {					//定义树节点数据模型
					extend : "Ext.data.Model",
					fields : [
					           {name : "id",			type : "string"},
					           {name : "text",			type : "string"},
					           {name : "leaf",			type : "boolean"},
					           {name : "menu_name",		type : "string"},
					           {name : "menu_href",		type : "string"},
					           {name : "grade",			type : "string"},
					           {name : "isleaf",		type : "string"},
					           {name : "parent_id",		type : "string"}
					         ]
				});
				
				var createStore = function(id) {						//创建树面板数据源
					var me = this;
					return Ext.create("Ext.data.TreeStore", {
						defaultRootId:		id,
						model:				model,
						proxy: {
							type:			"ajax",
							url:			"<%=path%>/roleAction!getRoleMenuIsLeaf?roleID=${userInfo.roleid}"	//获取树节点的地址
						},
						clearOnLoad:		true,
						nodeParam:			"id"										//设置传递给后台的参数名,值是树节点的id属性
					});
				};
				
				var layout=new Ext.container.Viewport({
					width:500,
					height:500,
					layout:'border',
					items:[{
						region:'north',
						xtype:'panel',
						height:100,
						html:"<iframe scrolling='yes' width='100%' height='100%'  frameborder='0' src='<%=path%>/page/top.jsp'></iframe>"
					},{
						region:'south',
						xtype:'panel',
						height:50,
						html:'<div class="footer"><center>CopyRight &copy; 2016-2017 By 宋建烜</center></div>'
					},{
						title:'菜单',
						collapsible:true,
						animCollapse:true,
						split: true,										//侧边展开折叠按钮
						region:'west',
						xtype:'panel',
						layout: 'accordion',
						margins:"0 0 5 5",
						width:250,
						minWidth:200,
						id:'menu'
					},{
						region			: 'center',
						xtype			: 'tabpanel',
						layout			: 'fit',
						margins			: "5 0 5 0",
						id				: 'container',
						activeTab		: 0,								//默认激活第一个tab页
						animScroll		: true,								//使用动画滚动效果  
						enableTabScroll	: true,								//tab标签超宽时自动出现滚动按钮
						applyTo 		: 'container',
						items			: [
							{
								id 			: 'home',
								iconCls		: 'my_home',
								title		: '首页',
								html 		: "<iframe scrolling='yes' width='100%' height='100%'  frameborder='0' src='<%=path%>/page/home.jsp'></iframe>",
								closable 	: false
							}
				        ]
					}],
					renderTo:Ext.getBody(),
					listeners : {
						"afterlayout" : function(){
							var now = new Date()
							var hour = now.getHours();
							
							var timeStr = null;
							if(hour < 6){
								timeStr = "凌晨好！";
							} else if (hour < 9){
								timeStr = "早上好！";;
							}else if (hour < 12){
								timeStr = "上午好！";
							}else if (hour < 14){
								timeStr = "中午好！";
							}else if (hour < 17){
								timeStr = "下午好！";
							}else if (hour < 19){
								timeStr = "傍晚好！";
							}else if (hour < 22){
								timeStr = "晚上好！";
							}else {
								timeStr = "深夜好！";
							}
							
							var msg = "〔${userInfo.truename}〕，" + timeStr;
							
							var htmlStr = '<div style="width:220px;height:80px;margin:10px;"><p style="font-size:14px;text-align:center;font-weight: bold;">'+msg+'</p>';
							htmlStr += '<div style="width:200px;margin:0px auto;"><iframe name="weather_inc" ';
							htmlStr += 'src="http://i.tianqi.com/index.php?c=code&id=12" '; 
							htmlStr += 'width="289" height="60" frameborder="0" marginwidth="0" ';
							htmlStr += 'marginheight="0" scrolling="no"></iframe>';
							htmlStr += '</div></div>';
							
							Ext.create('widget.uxNotification', {
								title: '提示',
								position: 'br',
								manager: 'container',
								iconCls: 'my_tip',
								autoCloseDelay: 7000,
								closable: false,
								spacing: 20,
								html: htmlStr
							}).show();
							
						}
					}
				});
			});
		</script>
	</head>
	<body>
	
	</body>
</html>