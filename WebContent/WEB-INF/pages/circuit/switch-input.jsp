<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
	</head>
	<body>
		<form id="addSwitchForm" action="">
			<table>
				<tr>
					<td>开关编号：</td>
					<td><input id="switchId" type="text" value="" class="easyui-validatebox" data-options="required:true" /><p/></td>
				</tr>
				<tr>
					<td>开关名称：</td>
					<td><input id="switchName" type="text" value="" class="easyui-validatebox" data-options="required:true" /><p/></td>
				</tr>
				<tr>
					<td>上游开关：</td>
					<td><input id="lastSwitchId" type="text" value="" class="easyui-validatebox" data-options="required:true" /><p/></td>
				</tr>
				<tr>
					<td>上游分支开关：</td>
					<td><input id="lastBranchSwitchId" type="text" value="" /></td>
				</tr>
				<tr>
					<td>上游分支线路：</td>
					<td><input id="lastBranchLineId" type="text" value="" /></td>
				</tr>
				<tr>
					<td>下游开关：</td>
					<td><input id="nextSwitchId" type="text" value="" /><p/></td>
				</tr>
				<tr>
					<td>下游分支开关：</td>
					<td><input id="nextBranchSwitchId" type="text" value="" /></td>
				</tr>
			</table>
		</form>
	</body>
</html>