var esm = esm == null ? new Object() : esm;
if (esm.editSwitchOperation == null) {
	esm.editSwitchOperation = new Object();
}

esm.editSwitchOperation.cussor = 0;
esm.editSwitchOperation.onClickRow = function(index) {
	//$('#histories').datagrid('endEdit', esm.editSwitchOperation.cussor);
	esm.editSwitchOperation.cussor = index;
	$('#so_histories').datagrid('beginEdit', esm.editSwitchOperation.cussor);
};

