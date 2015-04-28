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
	html,body{ height:100%;}
	body{ margin:0;}
	img{ display:block;
		 margin:0;
		 }
	*{ color:#00805d;
	   font-size:20px;
	   }
	.login_box{ width:846px;
				height:434px; 
				background-image:url(images/login.png);
				display:block;
			    background-repeat:no-repeat; 
				position:absolute; left:50%; top:50%;
				margin-left:-423px; 
				margin-top:-217px;
				}
	.box{width:412px;
		  height:187px;
		  margin-top:59px;
		  margin:125px 0 0 372px;
		  }
	.username01{height:28px;
				width:220px;
				border:#009970 1px solid;
				border-radius:6px 6px 6px 6px;
				}
	.pass01{height:28px;
			width:220px;
			border:#009970 1px solid;
			border-radius:6px 6px 6px 6px;
			margin:15px 0 15px 0;
			}
	.checkbox{margin-left:75px;
		}
	.login{background-image:url(images/button.png);
		   width:75px;
		   height:44px;
		   display:block;
		   border:none;
		   float:left;
		   margin:40px 44px;
		   color:#fff;
		   font-size:20px;
		}
	.reset{background-image:url(images/button.png);
		   width:75px;
		   height:44px;
		   display:block;
		   border:none;
		   float:left;
		   margin:40px 44px;
		   color:#fff;
		   font-size:20px;
		}
</style>
<script type="text/javascript">

$(function(){
	var strCookie=document.cookie;
	//将多cookie切割为多个名/值对
	var arrCookie=strCookie.split("; ");
	var userName;
	var password;
	//遍历cookie数组，处理每个cookie对
	for(var i=0;i<arrCookie.length;i++){
		var arr=arrCookie[i].split("=");
		//找到名称为userId的cookie，并返回它的值
		if("userName"==arr[0]){
			userName=arr[1];
		} else if("password"==arr[0]){
			password = arr[1];
		}
	}
	$("input[name=userName]").attr("value", userName);
	$("input[name=password]").attr("value", password);
});
	
</script>
<body style="background-image:url(images/login_bg.png);">
	<div class="login_box">
        <form method="" action="" class="box">
	        <label for="username">用户名:</label>
	        <input class="username01" type="text" name="userName" class="easyui-validatebox" data-options="required:true"/><br>
	        <label for="pass">密&nbsp;&nbsp;码:</label>
	        <input class="pass01" type="password" name="password" /><br>
	        <div>
	        	<input id="jzmm" class="checkbox" type="checkbox" value="记住用户名密码"  name="checkbox" checked="checked"/><span style="font-size:18px;">记住用户名密码</span>
	     	</div>
	        <input onclick="esm.login();" class="login" type="button" name="submit" value="登录" />
	        <input onclick="esm.reset();"  class="reset" type="reset" name="reset" value="重置" />
    	</form>
    </div>
</body>

</html>
