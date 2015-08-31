<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/js/settings/user/addUser.js"></script>
<script type="text/javascript" src="/js/validate.js"></script>
<title>添加用户</title>
</head>
<body>
<div style="padding: 10px">
	<table id="dg" class="easyui-datagrid" title="添加用户"
		style="width: 100%; height:630px;"
		data-options="singleSelect:true,collapsible:false,onClickRow: esm.settings.addUser.onClickRow,toolbar:esm.settings.addUser.toolbar">
		<thead>
			<tr>
				<th data-options="field:'id',width:80,align:'center'"><b>用户编号</b></th>
				<th data-options="field:'name',width:100,align:'center'" editor="{type:'validatebox',options:{validType:'username'}}"><b>用户名</b></th>
				<th
					data-options="field:'password',width:150,align:'center'" editor="{type:'validatebox',options:{validType:'password'}}"><b>密码</b></th>
				<th
					data-options="required:true,field:'realName',width:150,align:'center',editor:'text'" editor="{type:'validatebox',options:{validType:'name'}}"><b>用户姓名</b></th>
				<th
					data-options="required:false,field:'email',width:150,align:'center'" editor="{type:'validatebox',options:{required:false,validType:'email'}}"><b>电子邮件</b></th>
				<th data-options="required:false,field:'phone',width:100,align:'center'"  editor="{type:'validatebox',options:{required:false,validType:'mobile'}}"><b>手机号</b></th>
				<th
					data-options="field:'roleId',width:100,align:'center',formatter:function(value,row){
							return row.roleId;
						},
						editor:{
							type:'combobox',
							options:{
								valueField:'id',
								textField:'name',
								method:'get',
								url:'/settings/role/roles.do',
								required:true
							}
						}">角色</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
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