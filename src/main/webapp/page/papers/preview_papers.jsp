<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线出题测试系统-用户试卷列表</title>
		<!-- 引入相关的css/js -->
		<%@ include file="../../include/base.jsp" %>
		<script type="text/javascript" src="<%=path%>/js/FileSaver.min.js"></script>
		<script type="text/javascript" src="<%=path%>/js/jquery.wordexport.js"></script>
		
		<style type="text/css">
			#bodyStytle{
				width:800px;
				margin-left:auto;
				margin-right:auto;
				border-left: 1px dotted #d5d5d5;
				border-right: 1px dotted #d5d5d5;
			}
			
			#bodyHeadCenter{
				text-align:center;
			}
			
			#bodyHeadFont{
				margin-top:10px;
				font-family:arial;
				font-size:13px;
				font-style:normal;
			}
			
			#bodyFont{
				width:700px;
				text-align:left;
				font-family:微软雅黑;
				font-size:16px;
				margin:0 auto;
			}
			
			h2 {
			    font-size: 30px;
			    font-weight: bold;
			    line-height: 1.33;
			    margin-bottom: 8px;
			    margin-top: 6px;
			    padding-bottom: 15px;
			}
			
			.right_bottom{
				height: 48px;
			    position: fixed;
			    bottom: 10px;
			    right: 15px;
			    cursor: pointer;
			}
		</style>
		
		<script type="text/javascript">
			$(function(){
				$("#exportWord").click(function(event) {
					var imgArray = $("#bodyFont img");
					
					if (imgArray.length > 0 ){
						Ext.MessageBox.alert("操作提示","无法导出包含图片的网页！");
						return ;
					}else{
						$("#bodyStytle").wordExport();
					}
				});
			});
		</script>
	</head>
	<body>
		
		<div id="exportWord" class="right_bottom text-center my_word" title="导出成WORD文档">
		</div>
		
		<div id="bodyStytle">
        
            <div id="bodyHeadCenter">
                <h2>${papersMap.papersDetail.college}-试卷</h2>
                <div id="bodyHeadFont">
                    <span>考试科目：${papersMap.papersDetail.dic_name}</span>
                    <span style="margin-left:125px">出卷人:${papersMap.papersDetail.truename}</span>
                </div>
            </div> 
            <br/>
            <div id="bodyFont">
				<c:forEach varStatus="row" var="papersEml" items="${papersMap.data}">
					<div>
						${papersEml.question}
					</div>
					<br/>
				</c:forEach>
            </div>
            
        </div>
        
	</body>
</html>