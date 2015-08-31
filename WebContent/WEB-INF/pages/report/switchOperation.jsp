<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/js/report/editSwitchOperation.js"></script>
<style>.datagrid-cell-rownumber{ width:50px; text-align:center; margin:0px; padding:3px 0px; color:#000; } .datagrid-header-rownumber{ width:50px; text-align:center; margin:0px; padding:3px 0px; } </style>
<script type="text/javascript">
	Date.prototype.format = function(format) {
		if (!format) {
			format = "yyyy-MM-dd hh:mm:ss";
		}
		var o = {
			"M+" : this.getMonth() + 1, // month
			"d+" : this.getDate(), // day
			"h+" : this.getHours(), // hour
			"m+" : this.getMinutes(), // minute
			"s+" : this.getSeconds(), // second
			"q+" : Math.floor((this.getMonth() + 3) / 3), // quarter
			"S" : this.getMilliseconds()
		// millisecond
		};
		if (/(y+)/.test(format)) {
			format = format.replace(RegExp.$1, (this.getFullYear() + "")
					.substr(4 - RegExp.$1.length));
		}
		for ( var k in o) {
			if (new RegExp("(" + k + ")").test(format)) {
				format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k]
						: ("00" + o[k]).substr(("" + o[k]).length));
			}
		}
		return format;
	};
	
	
	/** 设置工具栏 */
	if("${flag}"=="1") {
		//断电报表
		esm.editSwitchOperation.toolbar =[ {
			text : '导出今日报表',
			handler : function() {
			location.href = "report/switch_operation-excel.do";
			}
		} ,{
			text : '保存',
			iconCls : 'icon-save',
			handler : function() {
				jQuery('#so_histories').datagrid("endEdit", esm.editSwitchOperation.cussor);
				var rows = jQuery("#so_histories").datagrid("getRows");
				var editRow = rows[esm.editSwitchOperation.cussor];
				console.info(editRow);
				if (rows != null) {
					jQuery.ajax({
						url : "/report/editSwitchOperation.do",
						type : "post",
						data : {"id" : editRow.id,"dispatcher":editRow.dispatcher},
						success : function(data, status, xhr) {
							var message = "";
							if (data.check < 0) {
								message = "数据不合法.错误码:" + data.check
							} else {
								message = "修改成功!";
							}
							jQuery.messager.alert("提示", message);
							jQuery('#so_histories').datagrid("reload");
						}
					});
				}
			}
		}, {
			text : '取消',
			iconCls : 'icon-cancel',
			handler : function() {
				jQuery('#so_histories').datagrid("endEdit", esm.editSwitchOperation.cussor);
			}
		}];
		} 
		else{
			toolbar = [ ];
		}
	
</script>
<title>断电表</title>
</head>
<body>
	<table id="so_histories" class="easyui-datagrid" title="开关操作表"
		style="width: 100%; height: 630px"
		data-options="onClickRow: esm.editSwitchOperation.onClickRow,toolbar:esm.editSwitchOperation.toolbar,rownumbers:true,singleSelect:true,pagination:true,url:'/report/switchOperation.do',method:'post'">
		<thead>
			<tr>
				<th data-options="field:'switchName',align:'center',width:160"><b>开关名称</b></th>
				<th data-options="field:'startTime',width:200,align:'center',formatter:function(t){return new Date(t).format('yyyy-MM-dd hh:mm:ss');}"><b>开始时间</b></th>
				<th data-options="field:'endTime',width:200,align:'center',formatter:function(t){
				if(t==null){
					return '';
				}else{
					return new Date(t).format('yyyy-MM-dd hh:mm:ss');
				}}"><b>结束时间</b></th>
				<th data-options="field:'operate',width:200,align:'center'"><b>操作员姓名</b></th>
				<th data-options="field:'dispatcher',width:200,align:'center',editor:'text'"><b>调度员</b></th>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
	
	
</body>
</html>