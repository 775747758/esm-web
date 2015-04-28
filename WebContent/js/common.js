var esm = esm == null ? {} : esm;
esm.common = esm.common == null ? {} : esm.common;

/**
 * 添加选项卡
 */
esm.common.tab = esm.common.tab == null ? {} : esm.common.tab;
esm.common.tab.create = function(name, url) {
	if(url=="/monitor.do")
	{
		window.open("http://localhost:8080/monitor.do"); //打开窗口
	} else if (url=="/circuit/edit.do") {
		window.open("http://localhost:8080/circuit/edit.do"); //打开窗口
	}
	else
	{
		var exists = jQuery('#workArea').tabs('exists', name);
		if (exists) {
			jQuery("#workArea").tabs('select', name);
			return;
		}
		jQuery.get(url, function(data) {
			jQuery('#workArea').tabs('add', {
				title : name,
				async : true,
				content : '<div>' + data + '</div>',
				closable : true
			});
		});
		
	}
	
};


esm.common.tab.refresh = function() {
	var tab = $('#workArea').tabs('getSelected');
	tab.panel('refresh', '/circuit/diagram.do');
};