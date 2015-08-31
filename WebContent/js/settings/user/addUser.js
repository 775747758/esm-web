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
						if(data.check==-30){
							message = "此用户已经存在，请重新填写！";
						}else{
							message = "请填写正确的信息";
						}
					} else if (data.success) {
						message = "添加成功!";
						rows[0].id="";
						rows[0].name="";
						rows[0].password="";
						rows[0].realName="";
						rows[0].email="";
						rows[0].phone="";
						rows[0].roleId="";
											} else {
						message = "添加失败!";
					}
					jQuery.messager.alert("提示", message);
				}
			});
		}
		
		//$('#dg').datagrid('loadData',{total:0,rows:[]}); 
	}
}, {
	text : '取消',
	iconCls : 'icon-cancel',
	handler : function() 
	{
		var rows = jQuery("#dg").datagrid("getRows");
		//jQuery("#dg").datagrid("clearSelections");
		//jQuery("#dg").datagrid("cancelEdit");
		
		
		var ed = $('#dg').datagrid('getEditor', {index:0,field:'name'});
		$(ed.target).val("");
		var ed1 = $('#dg').datagrid('getEditor', {index:0,field:'password'});
		$(ed1.target).val("");
		
		var ed2 = $('#dg').datagrid('getEditor', {index:0,field:'realName'});
		$(ed.target).val("");
		var ed3 = $('#dg').datagrid('getEditor', {index:0,field:'email'});
		$(ed1.target).val("");
		
		var ed4 = $('#dg').datagrid('getEditor', {index:0,field:'phone'});
		$(ed.target).val("");
		var ed5 = $('#dg').datagrid('getEditor', {index:0,field:'roleId'});
		$(ed1.target).val("");
		$(ed2.target).val("");
		$(ed3.target).val("");
		$(ed4.target).val("");
		$(ed5.target).val("");
		$(ed.target).val("");
		//alert($(ed.target).validatebox(''));
		//$(ed.target).validatebox('getText');
		//alert(rows[0].realName);
		//$('#dg').datagrid('loadData', { total: 9, rows: [] });//清空下方DateGrid 
	}
}
];

