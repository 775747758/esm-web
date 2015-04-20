<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
	</head>
	<body>
		<form id="addLineForm" action="">
			<table>
				<tr>
					<td width="120px">线路名:</td>
					<td><input type="text" id="lineName" value="" class="easyui-validatebox" data-options="required:true"/></td>
				</tr>
				<tr>
					<td>线路编号:</td>
					<td><input type="text" id="lineId" value="" class="easyui-validatebox" data-options="required:true"/></td>
				</tr>
				<tr>
					<td>父线路编号:</td>
					<td><input type="text" id="parentLineId" value="" class="easyui-validatebox" data-options="required:true"/></td>
				</tr>
				<tr>
					<td>线路上游开关id:</td>
					<td>
						<input type="text" id="upstreamSwitchIds" value="" class="easyui-validatebox" data-options="required:true"/>
						<span style="text-color:gray">您画的这条线的上游第一个开关，如果有多个，则用逗号隔开</span>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>