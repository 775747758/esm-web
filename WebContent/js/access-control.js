var esm = esm == null ? new Object() : esm;
esm.login = function() {
	var map = new Object();
	map.userName = jQuery("input[name=userName]").val();
	map.password = jQuery("input[name=password]").val();
	map.verifyCode = "";
	
	var strExp=/^[A-Za-z0-9]{0,10}$/;
	if(!strExp.test(map.userName)){
		jQuery.messager.alert("提示信息","用户名只能为10位以内的数字或字母！");
		return;
	} else if (!strExp.test(map.password)) {
		jQuery.messager.alert("提示信息","密码只能为10位以内的数字或字母！");
		return
	}
       
	jQuery.ajax({
		url : "/login.do",
		type : "post",
		dataType : "json",
		data : map,
		success : function(data, status, xhr) {
			if($("#jzmm")[0].checked){
				document.cookie="userName="+map.userName;
				document.cookie="password="+map.password;
			} else {
				document.cookie=""
			}
			if (data.logined) {
				if (data.isMonitor) {
					window.location = '/index.do';
				} else {
					window.location = '/index.do';
				}
			} else {
				jQuery.messager.alert('登录失败', '用户名或密码错误。', 'info');
			}
		},
		error : function() {

		}
	});
};
esm.logout = function() {
	window.location = '/logout.do';
};

esm.reset = function() {
	$("input[name=userName]").attr("value","");
	$("input[name=password]").attr("value","");
};
esm.changePassword = function() {
	$('#changePassword').dialog({
		title: '修改密码',
	    width: 300,
	    height: 200,
	    cache: false,
	    href:"/changePassword.do",
	    buttons:[{
			text:'保存',
			handler:function(){
				var postData = {
					oldPassword : $.md5($("#oldPassword").val()),
					newPassword : $.md5($("#newPassword").val())
				}
				$.ajax({
					url:'/updatePassword.do',
			  		type:'post',
			  		data:postData,
			  		success:function(data){
			  			if(data.code == 1){
			  				$.messager.alert('系统提示',"修改成功");
						}else if(data.code == 0){
							$.messager.alert('系统提示',"修改失败",'error');
						}
			  			//提示一下用户
			  			$('#changePassword').dialog('close');
					}
				});
			}
		},{
			text:'取消',
			handler:function(){
				$('#changePassword').dialog('close');
			}
		}]
	});
};
