var esm = esm == null ? new Object() : esm;
esm.login = function() {
	var map = new Object();
	map.userName = jQuery("input[name=userName]").val();
	map.password = jQuery("input[name=password]").val();
	map.verifyCode = "";
	console.info(map);
	jQuery.ajax({
		url : "/login.do",
		type : "post",
		dataType : "json",
		data : map,
		success : function(data, status, xhr) {
			if (data.logined) {
				if (data.isMonitor) {
					window.location = '/monitor.do';
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
