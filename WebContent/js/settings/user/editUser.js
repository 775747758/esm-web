var esm = esm == null ? new Object() : esm;
esm.settings = esm.settings == null ? new Object() : esm.settings;
if (esm.settings.editUser == null) {
	esm.settings.editUser = new Object();
}

esm.settings.editUser.cussor = 0;
esm.settings.editUser.onClickRow = function(index) {
	$('#userList').datagrid('endEdit', esm.settings.editUser.cussor);
	esm.settings.editUser.cussor = index;
	$('#userList').datagrid('beginEdit', esm.settings.editUser.cussor);
};

/** 设置工具栏 */
esm.settings.editUser.toolbar = [ {
	text : '保存',
	iconCls : 'icon-save',
	handler : function() {
		jQuery('#userList').datagrid("endEdit", esm.settings.editUser.cussor);
		var rows = jQuery("#userList").datagrid("getRows");
		var editRow = rows[esm.settings.editUser.cussor];
		console.info(editRow);
		if (rows != null) {
			jQuery.ajax({
				url : "/settings/user/editUser.do",
				type : "post",
				data : editRow,
				success : function(data, status, xhr) {
					var message = "";
					if (data.check < 0) {
						message = "数据不合法.错误码:" + data.check
					} else if (data.success) {
						message = "修改成功!";
					} else {
						message = "修改失败!";
					}
					jQuery.messager.alert("提示", message);
					jQuery('#userList').datagrid("reload");
				}
			});
		}
	}
}, {
	text : '取消',
	iconCls : 'icon-cancel',
	handler : function() {
		jQuery('#userList').datagrid("endEdit", esm.settings.editUser.cussor);
	}
} , {
	text : '删除',
	iconCls : 'icon-remove',
	handler : function() {
		//jQuery('#userList').datagrid("endEdit", esm.settings.editUser.cussor);
		var arr =$('#userList').datagrid('getSelections');
		if(arr.length <=0){
			$.messager.show({
				title:'提示信息!',
				msg:'至少选择一行记录进行删除!'
			});
		} else {
			
			$.messager.confirm('提示信息' , '确认删除?' , function(r){
					if(r){
							var ids = '';
							for(var i =0 ;i<arr.length;i++){
								ids += arr[i].id + ',' ;
							}
							ids = ids.substring(0 , ids.length-1);
						
							$.post("/settings/user/deleteUser.do", {ids:ids},function(result){
								if (result.success) {

									//1 刷新数据表格 
									$('#userList').datagrid('reload');
									//2 清空idField   
									$('#userList').datagrid('unselectAll');
									//3 给提示信息 
									$.messager.show({
										title:'提示信息!' , 
										msg:'操作成功!'
									});
								
								}
							} ,"JSON");
					} else {
						return ;
					}
			});
		}
	}
} 
];