var esm = esm == null ? new Object() : esm;
esm.settings = esm.settings == null ? new Object() : esm.settings;
if (esm.settings.addUser == null) {
	esm.settings.addUser = new Object();
}
esm.settings.addUser.cussor = 0;
esm.settings.addUser.onClickRow = function(index) {
	esm.settings.addUser.cussor = index;
	$('#dg').datagrid('beginEdit', esm.settings.addUser.cussor);
};

/** 设置工具栏 */
esm.settings.addUser.toolbar = [ {
	text : '保存',
	iconCls : 'icon-save',
	handler : function() {
		if($('#addUser').form('validate')){
			$('#dg').datagrid("endEdit", esm.settings.addUser.cussor);
			var rows = jQuery("#dg").datagrid("getRows");
			console.info(rows[0]);
			if (rows != null && rows.length == 1) {
				jQuery.ajax({
					url : "/settings/user/addUser.do",
					type : "post",
					data : rows[0],
					success : function(data, status, xhr) {
						var message = "";
						if (data.check < 0) {
							message = "数据不合法.错误码:" + data.check
						} else if (data.success) {
							message = "添加成功!";
						} else {
							message = "添加失败!";
						}
						jQuery.messager.alert("提示", message);
					}
				});
			}
			
			$('#dg').datagrid('loadData',{total:0,rows:[]}); 
		}
	}
}, {
	text : '取消',
	iconCls : 'icon-cancel',
	handler : function() {
		console.info(esm.settings.addUser.cussor);
		$('#dg').datagrid("endEdit", esm.settings.addUser.cussor);
	}
} 
,{
	text : '新增',
	iconCls : 'icon-add',
	handler : function() {
		if($('#dg').datagrid("getRows").length==0)
			{
			$('#dg').datagrid("appendRow", {});
			}
		
	}
}
];

