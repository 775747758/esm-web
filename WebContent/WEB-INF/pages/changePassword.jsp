<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11-flat-20030114.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css"
	href="/ui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/ui/themes/icon.css">
<script type="text/javascript" src="/ui/jquery.min.js"></script>
<script type="text/javascript" src="/ui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/js/index.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/js/jquery.md5.js"></script>
<link type="text/css" rel="stylesheet" href="style/main.css" />
<script type="text/javascript">
	function changePassword(){
		var newPassword=$.md5($("#newPassword").val());
		var oldPassword=$.md5($("#oldPassword").val());
		var args = {
				"newPassword":newPassword,
				"oldPassword":oldPassword,
			};
		$.post("/changePassword.do",args,function(result){
			if (result.code=='1') {
				alert("1");
			} 
			else
			{
				alert("0");
			}
			
		} ,"JSON");
	}
</script>
<body>

	请输入旧密码：<input id="oldPassword" type="text"  class="easyui-textbox" /><br> 
	请输入旧密码：<input id="newPassword" type="text"  class="easyui-textbox" /><br>
	<button id="submit"  onclick="changePassword()" width="50" height="30" class="easyui-linkbutton" >提交</button>
</body>
</html>