<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	
	
if("${flag}"=="1") {
	//断电报表
	toolbar = [ {
		text : '导出今日报表',
		handler : function() {
			location.href = "message/message_excel.do";
			
		}
	} ];
	} 
	else{
		toolbar = [ ];
	}
	
$(function(){
	$('#message').datagrid({
		onClickCell: function (rowIndex, field, value) {
			//if(rowIndex==1){
				if(field=="message"){
					alert(value);
				}
				
			//}
		    
		}
	});
	
});
	
	
</script>
<title>停电通知</title>
</head>
<body>
<div style="padding: 10px">

	<table id="message" class="easyui-datagrid" title="停电公告表"
		style="width: 100%; height: 630px"
		data-options="toolbar:toolbar,rownumbers:true,singleSelect:true,pagination:true,url:'/message/getMessageTable.do',method:'post'">
		<thead>
			<tr>
				<th data-options="field:'name',align:'center',width:160"><b>操作员姓名</b></th>
				<th data-options="field:'message',width:200,align:'center'"><b>停电通知</b></th>
				<th data-options="field:'loginTime',width:150,align:'center',formatter:function(t){return new Date(t).format('yyyy-MM-dd hh:mm:ss');}"><b>登录时间</b></th>
				<th data-options="field:'logoutTime',width:500,align:'center',formatter:function(t){return new Date(t).format('yyyy-MM-dd hh:mm:ss');}"><b>退出时间</b></th>
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
	
	</div>
</body>
</html>