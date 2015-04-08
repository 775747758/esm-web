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
				content : '<div style="padding:10px">' + data + '</div>',
				closable : true
			});
		});
	}
	
};