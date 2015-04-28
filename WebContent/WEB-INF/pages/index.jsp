<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- 页面变量声明 --%>
<c:set var="path" 	value="<%=path%>"/>
<c:set var="basePath" 	value="<%=basePath%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>线路运行实时管理系统</title>
<link rel="stylesheet" type="text/css" href="/ui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/ui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="/style/main.css">
<script type="text/javascript" src="/ui/jquery.min.js"></script>
<script type="text/javascript" src="/ui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/js/index.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/js/access-control.js"></script>
<script type="text/javascript" src="/js/jquery.md5.js"></script>
<script type="text/javascript">

<!--关闭浏览器 -->
window.onbeforeunload = function () {
	 return ('您确定要离开此页面吗?');
};
	window.onload = function() {
		//初始化功能菜单
		esm.index.menu.init();
	};
	
	$(function() {
		//显示目前线路和开关的状态
		$.ajax({
			url : '/report/yestaday-interrupt-histories.do',
			type : 'get',
			success : function(map) {
				if (map != null) {
					var rows = map.rows;
					var msg=map.date+"<br>";
						for (var i = 0; i < rows.length; i++) {
							var InterruptHistoryVo = rows[i];
							msg=msg+"操作员"+InterruptHistoryVo.operatorName+"将"+InterruptHistoryVo.switchName+"开关"+InterruptHistoryVo.operate+"<br>";
						}
					$.messager.show({
						title:'操作通知',
						timeout:1000*60,
						height:'200px',
						msg:msg
					});
				}
			}
		});
	});
</script>

<style type="text/css">
	/* 微软雅黑 */
	body {
		font-family: "Microsoft YaHei", Arial, Helvetica, sans-serif, "宋体";
	}
	.navvv{
		float:right;
		padding-top: 60px;
	}
	.navvv a{
		background-image:url(images/nav_bg.png);
		height:24px;
		width:92px;
		display:block;
		float:left;
		margin-top:10px;
		font-size:14px;
	}
	.navvv span{ padding:0 17px;
		line-height:24px;
		color:#FFF;
	}
	.logoo{background-image:url(images/header_bg.png);
		background-repeat:no-repeat;
		float:left;
		margin-left:30px;
	}
	.navvv_container{
		margin-right:45px;
	}
</style>

</head>


<body class="easyui-layout" style="background:#009971;">
	<!-- 头部 开始 -->
	<div id="toubu" data-options="region:'north',border:false,split:true" style="height:130px;background-image:url(images/nav_container.png);">
		<div class="logoo"><img src="images/logo.png"></div>
	 	<div class="navvv_container">
	        <div class="navvv">
	            <a href="javascript:void(0);" onclick="esm.changePassword();"><span>修改密码</span></a>
	            <a href="javascript:void(0);" onclick="esm.logout();"><span>安全退出</span></a>
	            <a href="javascript:void(0);"><span>操作指南</span></a>
	        </div>
        </div>
	</div>
	<!-- 头部结束 -->

	<!-- 左侧功能菜单 开始 -->
	<div id="zuoce" data-options="region:'west',split:true,title:'功能菜单'," style="width:20%; padding: 10px;" >
		<ul id="tt" class="easyui-tree" data-options="animate:true,lines:false" style="padding-left: 20%;padding-top: 10px"></ul>
	</div>
	<!-- 　左侧功能菜单 结束 -->

	<!-- 工作区 开始 -->
	<div id="youce" data-options="region:'center',title:''">
		<div id="workArea" class="easyui-tabs" data-options="split:true,border:false" style="height: 730px;width: 1459.2px;" >
			<div title="系统说明" data-options="iconCls:'icon-help',closable:true" style="padding: 20px;">
				<p style="font-size: 20px">系功功能说明.</p>
				<ul style="font-size: 18px">
					<li>用户管理.</li>
					<li>权限管理.</li>
					<li>线路／开关管理.</li>
					<li>complete framework for HTML5 web page.</li>
					<li>easyui save your time and scales while developing your products.</li>
					<li>easyui is very easy but powerful.</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div id="changePassword"></div>
	<!-- 工作区　结束 -->
	<!-- <div>包头供电局青山分局配网管理专用</div> -->
</body>
</html>
<script type="text/javascript">
$(function() {
	
	// 获取窗口宽度
	if (window.innerWidth)
		winWidth = window.innerWidth;
	else if ((document.body) && (document.body.clientWidth))
		winWidth = document.body.clientWidth;
	// 获取窗口高度
	if (window.innerHeight)
		winHeight = window.innerHeight;
	else if ((document.body) && (document.body.clientHeight))
		winHeight = document.body.clientHeight;
	// 通过深入 Document 内部对 body 进行检测，获取窗口大小
	if (document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth)
	{
		winHeight = document.documentElement.clientHeight;
		winWidth = document.documentElement.clientWidth;
	} 
	
	$(".layout-panel-north").css("top", "20px");
	$(".layout-panel-north").css("height", "130px");
	$(".layout-panel-north").removeClass("layout-split-north");
	
	$(".layout-panel-west").css("top", "150px");
	$(".layout-panel-west").css("left", "20px");
	$(".layout-panel-west").css("height", winHeight*0.8);
	$(".layout-panel-west").css("border-radius", "10px 10px 10px 10px");
	
	$(".layout-panel-center").css("top", "150px");
	$(".layout-panel-center").css("left", winWidth*0.22);
	$(".layout-panel-center").css("width", winWidth*0.76);
	$(".layout-panel-center").css("height", winHeight*0.8);
	$(".layout-panel-center").css("border-radius", "10px 10px 10px 10px");
	
});
</script>