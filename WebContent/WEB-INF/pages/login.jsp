<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>线路运行实时管理系统登录</title>
<link rel="stylesheet" type="text/css"
	href="/ui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/ui/themes/icon.css">
<script type="text/javascript" src="/ui/jquery.min.js"></script>
<script type="text/javascript" src="/ui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/js/access-control.js"></script>
</head>
<style type="text/css">
/* 微软雅黑 */
body {
	font-family: "Microsoft YaHei", Arial, Helvetica, sans-serif, "宋体";
}
.dlg {
	margin-left: auto;
	margin-right: auto;
}
.bottom_title{
	bottom:0px;
	right:300px;
}
.login{
	background: url("images/button.png");
	width:75px;
	height:44px;
}
</style>
<script type="text/javascript">

$(function(){
	//获取页面的高度和宽度
	var sWidth=document.body.scrollWidth;
	var sHeight=document.body.scrollHeight;
	
	//获取页面的可视区域高度和宽度
	var wHeight=document.documentElement.clientHeight;
	
	var oLogin=document.getElementById("dlg");
	
	//获取登陆框的宽和高
	var dHeight=oLogin.offsetHeight;
	var dWidth=oLogin.offsetWidth;
		//设置登陆框的left和top
		oLogin.style.left=sWidth/2-dWidth/2+"px";
		oLogin.style.top=wHeight/2-dHeight/2+"px";
		
		//style="width:520px;height:26px;padding:14px 0px 0px 130px;"
});
	
</script>

<body style="background-image:url('images/login_background.png');">
	<div id="dlg"   
		style="position:relative;width: 874px; height: 448px;background-image:url('images/login.png');"   >
		<p style="width:520px;height:26px;padding:20px 0px 0px 70px;font-size:17px;">线路运行实时管理系统</p>
		<p class="bottom_title" style="position:absolute;width:450px;height:45px;text-align:right;">包头供电局青山分局配网运维实施管理系统
</p>
		<table cellpadding="5"  style="position:absolute;left:365px;top:130px;">
			<tr>
				<td>用户名:</td>
				<td><input class="easyui-textbox" type="text" name="userName"></input></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;码:</td>
				<td><input class="easyui-textbox" type="password" name="password"></input></td>
			</tr>
		</table>
		<button onclick="esm.login();"  class="login" >登录</button>
		<button onclick="esm.login();"  class="login" >重置</button>

	</div>
</body>

</html>