<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%
	String path = request.getContextPath();
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<!-- 网站图标 -->
<link rel="icon" href="<%=path%>/images/favicon.ico" mce_href="<%=path%>/images/favicon.ico" type="image/x-icon">

<!-- icon -->
<link rel="stylesheet" type="text/css" href="<%=path%>/js/ext-4.2.1/resources/css/icon.css"/>
<!-- ExtJS -->
<link rel="stylesheet" type="text/css" href="<%=path%>/js/ext-4.2.1/resources/css/ext-all-neptune.css"/>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/my_icon.css"/>
<!-- 
	Ext4.2 中的bootstrap.js 会自动帮我们引入同级目录下的 ext相关文件
	如果域名是127.0.0.1的模式 将会引入 ext-all-debug.js
	如果域名是www.xxx.com模式 则会引入ext-all.js
 -->
<script type="text/javascript" src="<%=path%>/js/ext-4.2.1/bootstrap.js"></script>
<script type="text/javascript" src="<%=path%>/js/ext-4.2.1/locale/ext-lang-zh_CN.js"></script>

<!-- jQuery -->
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>

<!-- css -->
<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">