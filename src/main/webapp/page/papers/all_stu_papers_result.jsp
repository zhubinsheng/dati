<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线出题测试系统-用户试卷列表</title>
		<!-- 引入相关的css/js -->
		<%@ include file="../../include/base.jsp" %>
		<script type="text/javascript" src="<%=path%>/js/json.js"></script>
		<script type="text/javascript">
			var papersGrid = null;
			var papersStore = null;
			
			$(function(){
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
						'user_id',
			            'truename',
			            'papers_id',
			            'papers_name',
						'answer_json',
						'status'
			        ],
			        idProperty: 'id'
			    });
	
			    /*****************创建数据源*****************/
			    papersStore = Ext.create('Ext.data.Store', {
			        pageSize: 10,
			        model: 'papersModel',
			        remoteSort: true,
			        proxy: {
			            type: 'ajax',
			            getMethod: function(){ return 'POST'; },
			            url: '<%=path%>/papersAction!getAllUserPapersResultList',
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
			    papersStore.on('beforeload', function (store, options) {
			    	
			    	var query = $("#query").val();
			    	
					var new_params = {
						query	  	 : query
					};  
			    	Ext.apply(store.proxy.extraParams, new_params);
			    });
			    
			    /*****************加载数据*****************/
			    papersStore.load();
	
			    /*****************顶部工具栏*****************/
			    var tbar = Ext.create("Ext.toolbar.Toolbar", {
			    	items: [
			    		{text: '答卷预览', 	iconCls: 'Book', 			id: 'preview', 		handler: tbarFn},
			    			'-',
			    		{text: "刷新", 		iconCls: "Arrowrefresh", 	id: 'refresh', 		handler: tbarFn}
			    	]
			    });
			    
			    function tbarFn(btn,pressed){
			    	if (btn.id == 'preview'){
			    		
			    		//获取选中数据
			    		var row = papersGrid.getSelectionModel().getLastSelected();
			    		if (row == null){
			    			Ext.MessageBox.alert("操作提示","您还未选择试卷，请选择一份试卷!");
			    			return ;
			    		}
			    		
			    		if (row.get("status") == "未考" || row.get("status") == "0"){
			    			Ext.MessageBox.alert("操作提示","您选择的试卷还未做题,无考试结果!");
			    			return ;
			    		}
			    		
			    		var url = "<%=path%>/papersAction!getExamResultPage?user_id=" + row.get("user_id") + "&papers_id=" + row.get("papers_id");
			    		
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
						{text: "user_id",id: 'user_id',dataIndex: 'user_id',hidden: true},
						{text: "papers_id",id: 'papers_id',dataIndex: 'papers_id',hidden: true},
						{text: "考生", 	width:400,	id: 'truename',		dataIndex: 'truename',		align: 'center',	sortable: true, flex:1},
						{text: "卷子", 	width:150,	id: 'papers_name',	dataIndex: 'papers_name',	align: 'center',	sortable: false},
						{text: "分数【正/误/总】",width:200,	id: 'answer_json',	dataIndex: 'answer_json',	align: 'center',	sortable: false,
							renderer: function(value) {
								if (value == null || value == ""){
									return "无分数统计";
								}
								var jsonArray = JSON.parse(value);
								var rightCount=0,errorCount=0,totalCount=0,score=0;
								$.each(jsonArray,function(index,value){
									if (value.result){
										rightCount++;
									}else{
										errorCount++;
									}
									totalCount++;
								});
								
								score = Math.round((rightCount/totalCount) * 100);
								
								return score+"【"+rightCount+"/"+errorCount+"/"+totalCount+"】";
							}
						},
						{text: "状态",	width:100,	id: 'status',		dataIndex: 'status',		align: 'center',	sortable: false,
							renderer: function(value) {
								if ("0" == value){
									return "未考";
								}else{
									return "已考";
								}
							}
						}
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