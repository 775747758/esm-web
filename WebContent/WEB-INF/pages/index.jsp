<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>线路运行实时管理系统</title>
<link rel="stylesheet" type="text/css"
	href="/ui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/ui/themes/icon.css">
<script type="text/javascript" src="/ui/jquery.min.js"></script>
<script type="text/javascript" src="/ui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/js/index.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/js/access-control.js"></script>
<script type="text/javascript">

<!--关闭浏览器 -->
window.onbeforeunload = function () {
	 return ('您确定要离开此页面吗?');
};
	window.onload = function() {
		//初始化功能菜单
		esm.index.menu.init();
	};
	
	jQuery(function() {
		//显示目前线路和开关的状态
		jQuery.ajax({
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
.dlg{
	margin-left: 30px;
}

</style>

</head>
<body class="easyui-layout" style="background:#000;">
	<!-- 头部 开始 -->
	<div data-options="region:'north',border:false,split:true"
		style="height: 100px; background: #666; padding: 10px;background-image:url('images/abc.jpg');">
		<button  onclick="esm.logout();"   >退出</button>
	</div>
	<!-- 头部结束 -->

	<!-- 左侧功能菜单 开始 -->
	<div data-options="region:'west',split:true,title:'功能菜单',"
		style="width:20%; padding: 10px;" >
			<ul id="tt" class="easyui-tree" data-options="animate:true,lines:false"></ul>
	</div>
	<!-- 　左侧功能菜单 结束 -->

	<!-- 工作区 开始 -->
	<div data-options="region:'center',title:''">
		<div id="workArea" class="easyui-tabs"
			data-options="split:true,border:false"
			style="width: 100%; height: 100%;">
			<div title="系统说明" data-options="iconCls:'icon-help',closable:true"
				style="padding: 5px;">
				<p style="font-size: 14px">系功功能说明.</p>
				<ul>
					<li>用户管理.</li>
					<li>权限管理.</li>
					<li>线路／开关管理.</li>
					<li>complete framework for HTML5 web page.</li>
					<li>easyui save your time and scales while developing your
						products.</li>
					<li>easyui is very easy but powerful.</li>
				</ul>
			</div>
		</div>
	</div>

	<!-- 工作区　结束 -->
</body>
</html>