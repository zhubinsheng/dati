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
			            'user_id',
			            'truename',
			            'papers_id',
			            'status',
			            'papers_name',
			            'college',
			            'create_papers_id',
			            'create_papers_truename',
			            'dic_value',
			            'dic_name'
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
	
			    /*****************创建数据源*****************/
			    papersStore = Ext.create('Ext.data.Store', {
			        pageSize: 10,
			        model: 'papersModel',
			        remoteSort: true,
			        proxy: {
			            type: 'ajax',
			            getMethod: function(){ return 'POST'; },
			            url: '<%=path%>/papersAction!getStuPapersWaitList',
			            reader: {
			            	type: 'json',
			                root: 'root',
			                totalProperty: 'totalCount'
			            },
			            simpleSortMode: true
			        },
			        sorters: [{
			            property: 'papers_name',
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
			    		{text: '开始考试', 	iconCls: 'Applicationosxstart', 		id: 'startExam', 		handler: tbarFn}, 
			    			'-',
			    		{text: "刷新", 		iconCls: "Arrowrefresh", 				id: 'refresh', 		handler: tbarFn}
			    	]
			    });
			    
			    function tbarFn(btn,pressed){
			    	if (btn.id == 'startExam'){
			    		
			    		//获取选中数据
			    		var row = papersGrid.getSelectionModel().getLastSelected();
			    		if (row == null){
			    			Ext.MessageBox.alert("操作提示","您还未选择试卷，请选择一份试卷!");
			    			return ;
			    		}
			    		
			    		var url = "<%=path%>/papersAction!getStarExamPage?user_id=${userInfo.id}&papers_id=" + row.get("papers_id");
			    		
			    		var previewWindow = Ext.create('Ext.Window', {
			    			id : 'starExam',
			    			title : '开始考试',
			    			maximized:true,
			    			constrain : true,
			    			closable : true,
			    			html:"<iframe scrolling='yes' width='100%' height='100%'  frameborder='0' src='" + url + "'></iframe>"
			    		}).show();
			    		
			    		previewWindow.on("beforeclose",function(){
			    			papersStore.load();
			    		});
			    		
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
						{id: 'papers_id',	dataIndex: 'papers_id', hidden: true },
						{text: "卷名", 	width:400,	id: 'papers_name',	dataIndex: 'papers_name',	align: 'center',	sortable: true, flex:1},
						{text: "出卷人", 	width:100,	id: 'create_papers_truename',		dataIndex: 'create_papers_truename',		align: 'center',	sortable: false},
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