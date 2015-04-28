<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	
	
	//断电报表
	toolbar = [ {
		text : '导出今日报表',
		handler : function() {
			location.href = "message/message_excel.do";
			
		}
	} ];
	
	
	
	
</script>
<title>停电通知</title>
</head>
<body>
<div style="padding: 10px">

	<table id="histories" class="easyui-datagrid" title="停电通知"
		style="width: 100%; height: 370px"
		data-options="toolbar:toolbar,rownumbers:true,singleSelect:true,pagination:true,url:'/message/getMessageTable.do',method:'post'">
		<thead>
			<tr>
				<th data-options="field:'name',align:'center',width:160">操作员</th>
				<th data-options="field:'message',width:200,align:'center'">停电通知</th>
				<th data-options="field:'loginTime',width:150,align:'center',formatter:function(t){return new Date(t).format('yyyy-MM-dd hh:mm:ss');}">登录时间</th>
				<th data-options="field:'logoutTime',width:150,align:'center',formatter:function(t){return new Date(t).format('yyyy-MM-dd hh:mm:ss');}">退出时间</th>
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