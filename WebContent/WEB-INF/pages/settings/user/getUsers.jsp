<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/js/settings/user/editUser.js"></script>

<title>用户列表</title>
</head>
<body>
<div style="padding: 10px">
	<table id="userList" class="easyui-datagrid" title="用户列表" 
		style="width: 100%; height: 600px"
		data-options="idField:'id',singleSelect:false,striped:true,rownumbers:true,checkOnSelect:true,
		selectOnCheck:true,checkbox:true,toolbar:esm.settings.editUser.toolbar,
		onClickRow: esm.settings.editUser.onClickRow,pagination:true,url:'/settings/user/getUsers.do',method:'post'">
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true" ></th>
				<th data-options="field:'id',align:'center',width:80">用户编号</th>
				<th
					data-options="field:'name',width:100,align:'center',editor:'text'">用户名</th>
				<th
					data-options="field:'realName',width:150,align:'center',editor:'text'">用户姓名</th>
				<th
					data-options="field:'email',width:150,align:'center',editor:'text'">电子邮件</th>
				<th
					data-options="field:'phone',width:100,align:'center',editor:'text'">手机号</th>
				<th
					data-options="field:'roleId',width:100,align:'center',formatter:function(value,row){
							return row.roleName;
						},
						editor:{
							type:'combobox',
							options:{
								valueField:'id',
								textField:'name',
								method:'get',
								url:'/settings/role/roles.do'
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
				<td></td>
			</tr>
		</tbody>
	</table>
	</div>
</body>
</html>