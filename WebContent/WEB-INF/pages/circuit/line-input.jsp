<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
	</head>
	<body>
		<form id="addLineForm" action="">
			<div style="padding: 10px;">
				<table >
					<tr height="50px">
						<td width="150px">线路名称:</td>
						<td><input type="text" id="lineName" value="" class="textbox" data-options="required:true"/></td>
					</tr>
					
					<tr>
						<td width="150px">线路上游开关编号:</td>
						<td>
							<input type="text" id="upstreamSwitchIds" value="" class="textbox" data-options="required:true"/>
						</td>
					</tr>
			</table>
			</div>
		</form>
	</body>
</html>