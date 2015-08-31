<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
	</head>
	<body>
		<form id="addSwitchForm" action="">
			<div style="padding: 10px;">
				<table>
					<tr>
						<td>开关编号：</td>
						<td><input class="textbox" id="switchId" type="text" value=""  data-options="required:true" /><p/></td>
					</tr>
					<tr>
						<td>开关名称：</td>
						<td><input class="textbox" id="switchName" type="text" value=""  data-options="required:true" /><p/></td>
					</tr>
					<tr>
						<td>上游开关编号：</td>
						<td><input class="textbox" id="lastSwitchId" type="text" value=""  data-options="required:true" /><p/></td>
					</tr>
					<tr>
						<td>上游分支开关编号：</td>
						<td><input class="textbox" id="lastBranchSwitchId" type="text" value="" /></td>
					</tr>
					<tr>
						<td>上游分支线路编号：</td>
						<td><input class="textbox" id="lastBranchLineId" type="text" value="" readonly="readonly" /></td>
					</tr>
					<tr>
						<td>下游开关编号：</td>
						<td><input class="textbox" id="nextSwitchId" type="text" value="" /><p/></td>
					</tr>
					<tr>
						<td>下游分支开关编号：</td>
						<td><input class="textbox" id="nextBranchSwitchId" type="text" value="" /></td>
					</tr>
					<tr>
						<td>新开关与下游开关之间的线路编号：</td>
						<td><input  class="textbox"  id="newBranchLineId" type="text" value="" readonly="readonly" /></td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>