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
		text : '按搜索条件导出报表',
		handler : function() {

			
			var switchID = $("input[name='switchID']").val();
			var operatorName = $("input[name='operator']").val();
			var operate = $("input[name='operate']").val();
			var beginDate = $("#beginDate").datebox("getValue");
			var endDate = $("#endDate").datebox("getValue");
			
			
			var url="report/interrupt-histories-excel.do"+"?switchId="+switchID+"&operatorName="+operatorName+"&operate="+operate+"&beginDate="
			+beginDate+"&endDate="+endDate;
			location.href=url;
			 
		}
	} , {
		text : '导出今日报表',
		handler : function() {
			 location.href="report/today_interrupt-histories-excel.do";
		}
	} ];
	
	
	//data-options="toolbar:toolbar,rownumbers:true,singleSelect:true,pagination:true,url:'/report/interrupt-histories.do',method:'post'">
	$(function(){
	   
		$("#searchBt").click(function(){
			var switchID = $("input[name='switchID']").val();
			var operatorName = $("input[name='operator']").val();
			var operate = $("input[name='operate']").val();
			var beginDate = $("#beginDate").datebox("getValue");
			var endDate = $("#endDate").datebox("getValue");
			var param = {switchId:switchID,operate:operate,operatorName:operatorName,beginDate:beginDate,endDate:endDate};
			
			var isSerch=true;
			if(beginDate!=""&&endDate!=""){
				if(beginDate>endDate){
					$.messager.alert('提示信息','您选择的开始日期大于结束日期，请重新选择！')
					isSerch=false;
				}
			}
			
			if(isSerch){
				$('#histories').datagrid({
					url:'/report/interrupt-histories-search.do',
					queryParams:param,
					toolbar:toolbar,
					rownumbers:true,
					singleSelect:true,
					pagination:true, 
					columns:[[
					    {field:'switchName',align:'center',width:160},
					    {field:'interruptTime',width:200,align:'center',formatter:function(t){return new Date(t).format('yyyy-MM-dd hh:mm:ss');}},
					    {field:'operate',width:150,align:'center'},
					    {field:'operatorName',width:150,align:'center'},
					]]
				}); 
			}
			
				
			
			
		});
		
	    
		//pageSize
		//alert($("#histories").datagrid("getPageSize"));
	});
	
	$(function(){
		
	})
	
</script>
<title>断电记录</title>
</head>
<body>
<div style="padding: 10px">
<div id="DIV_toolbar'" style=" margin :0px; padding :5px;">
	开关ID:
   <input  style="width:50px;" class="easyui-textbox" type="text" name="switchID"></input>
       &nbsp;
      操作员:
   <input data-options="prompt:'全部'"  style="width:70px;" class="easyui-textbox"   type="text" name="operator"></input>
   &nbsp;
      操作类型：
      <select id="cc" class="easyui-combobox" name="operate" style="width:100px;" data-options="required:true">
      <option value="2">全部</option>
      <option value="闭合">闭合</option>
      <option value="断开">断开</option>
      <option value="闲置">闲置</option>
      <option value="备用">备用</option>
     </select>
        &nbsp;
        开始时间：
       <input  class="easyui-datebox"  style="width:100px;"  id="beginDate" type="text"></input>
       &nbsp;
       结束时间：
        <input class="easyui-datebox"  style="width:100px;"   id="endDate" type="text"></input>
        &nbsp;
    <a  id="searchBt"  onclick="search()" style="width:60px;"  class="easyui-linkbutton">搜索</a>
    </div>

	<table id="histories" class="easyui-datagrid" title="断电记录"
		style="width: 100%; height: 600px"
		data-options="toolbar:toolbar,rownumbers:true,singleSelect:true,pagination:true,url:'/report/interrupt-histories.do',method:'post'">
		<thead>
			<tr>
				<th data-options="field:'switchName',align:'center',width:160">开关名称</th>
				<th data-options="field:'interruptTime',width:200,align:'center',formatter:function(t){return new Date(t).format('yyyy-MM-dd hh:mm:ss');}">时间</th>
				<th data-options="field:'operate',width:150,align:'center'">当前状态</th>
				<th data-options="field:'operatorName',width:150,align:'center'">操作员</th>
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