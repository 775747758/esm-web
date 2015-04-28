<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11-flat-20030114.dtd">
<!-- Created by SVGDeveloper 1.0 -->
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="/style/main.css" />
		<link rel="stylesheet" type="text/css" href="/ui/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="/ui/themes/icon.css">
		<link rel="stylesheet" type="text/css" href="/style/main.css">
		<script type="text/javascript" src="/ui/jquery.min.js"></script>
		<script type="text/javascript" src="/ui/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="/js/uuid.js"></script>
		<script type="text/javascript" src="/js/circuit/snap-svg.js"></script>
		<script type="text/javascript" src="/js/circuit/edit-diagram.js"></script>
		<script type="text/javascript" src="/js/index.js"></script>
		<script type="text/javascript" src="/js/common.js"></script>
		<script type="text/javascript">
			function addLine(line){
				var paper = Snap("#cableDiagram");
				$('#addLineDialog').dialog({
					title: '线路基本信息',
				    width: 600,
				    height: 300,
				    cache: false,
				    href:"/circuit/lineInput.do",
				    buttons:[{
						text:'保存',
						handler:function(){
							if($('#addLineForm').form('validate')){
								//发送ajax请求，把用户填写的数据提交到服务器端
				  				var myDate = new Date();
								var myTime = myDate.getTime();
				  				var lineId = "line-" + myTime;
				  				line.attr({
				  					id:lineId,
				  					title:$('#lineName').val(),
				  					stroke: "#FF0000"
				  				});
				  				
				  				//var x = (parseFloat(line.attr("x1"))+parseFloat(line.attr("x2")))/2;
				  				//var y = (parseFloat(line.attr("y1"))+parseFloat(line.attr("y2")))/2;
				  				
				  				//text = paper.paper.text(x+10, y+10, $('#lineName').val());
				  				//text.attr("stroke-width", "0.25");
				  				//text.attr("stroke", "#FF0000");
				  				//text.attr("fill", "#FF0000");
				  				//text.attr("font-size", "8");
				  				//text.attr("font-family", "宋体");
				  				//text.attr("baseline-shift", "baseline");
				  				//text.attr("xml:space", "preserve");
				  				
								var postData = {
									lineId : myTime,
									lineName : $('#lineName').val(),
									parentLineId : "",
									upstreamSwitchIds : $('#upstreamSwitchIds').val(),
									svg : $('#cableDiagram').html()
								}
								$.ajax({
									url:'/circuit/addLineForm.do',
							  		type:'post',
							  		data:postData,
							  		success:function(data){
							  			if(data.oc > 0){
							  				$.messager.alert('系统提示',data.message);
										}else if(data.oc<0){
											$.messager.alert('系统提示',data.message,'error');
										}
							  			//提示一下用户
							  			$('#addLineDialog').dialog('close');
							  			location.reload();
									}
								});
							}
						}
					},{
						text:'取消',
						handler:function(){
							line.remove();
							$('#addLineDialog').dialog('close');
						}
					}]
				});
			};
			function addSwitch(line1, line2, lineName, switchImg, line3){
				var paper = Snap("#cableDiagram");
				$("line").each(function(i){
			        $(this).attr("onclick", "lastBranchLineId(this);");
				});
				$('#addSwitchDialog').dialog({
					title: '开关基本信息',
				    width: 600,
				    height: 300,
				    cache: false,
				    href:"/circuit/switchInput.do",
				    buttons:[{
						text:'保存',
						handler:function(){
							if($('#addSwitchForm').form('validate')){
				  				line3.remove();
								$("line").each(function(i){
							        $(this).removeAttr("onclick");
							        $(this).removeAttr("onmouseover");
							        $(this).removeAttr("onmouseout");
								});
								switchImg.attr({
				  					id:"switch-" + $('#switchId').val()
				  				});
								$('#snap').html($('#switchName').val());
								$('#snap').attr("stroke-width", "0.25");
								$('#snap').attr("stroke", "#FF0000");
								$('#snap').attr("fill", "#FF0000");
								$('#snap').attr("font-size", "8");
								$('#snap').attr("font-family", "宋体");
								$('#snap').attr("baseline-shift", "baseline");
								$('#snap').attr("xml:space", "preserve");
								$('#snap').removeAttr("id");
								//发送ajax请求，把用户填写的数据提交到服务器端
								var postData = {
									switchId : $('#switchId').val(),
									switchName : $('#switchName').val(),
									lastSwitchId : $('#lastSwitchId').val(),
									lastBranchSwitchId : $('#lastBranchSwitchId').val(),
									lastBranchLineId : $('#lastBranchLineId').val(),
									nextSwitchId : $('#nextSwitchId').val(),
									nextBranchSwitchId : $('#nextBranchSwitchId').val(),
									lineId : line2.attr("id"),
									lineName : lineName,
									parentLineId : $(line3).attr("id"),
									svg : $('#cableDiagram').html()
								}
								$.ajax({
									url:'/circuit/addSwitch.do',
							  		type:'post',
							  		data:postData,
							  		success:function(data){
							  			if(data.oc > 0){
							  				$.messager.alert('系统提示',data.message);
										}else if(data.oc<0){
											$.messager.alert('系统提示',data.message,'error');
										}
							  			//提示一下用户
							  			$('#addSwitchDialog').dialog('close');
							  			location.reload();
									}
								});
							}
						}
					},{
						text:'取消',
						handler:function(){
							line1.remove();
							line2.remove();
							$('#snap').remove();
							switchImg.remove();
							$('#addSwitchDialog').dialog('close');
							esm.circuit.editSwitch();
						}
					}]
				});
			};
			function editText(obj) {
				var button = null;
				$("svg>image[id^=switch]").each(function(i){
					var title = $(this).attr("title");
					var text = "开关"+$(obj).text().trim();
					if(title==text) {

						button = this;
					}
				});
				if(button!=null) {
					$('#editTextDialog').dialog({
						title: '标签基本信息',
					    width: 600,
					    height: 300,
					    cache: false,
					    href:"/circuit/textInput.do?elementText="+$(obj).text(),
					    buttons:[{
							text:'保存',
							handler:function(){
								//发送ajax请求，把用户填写的数据提交到服务器端
								$("line").each(function(i){
							        $(this).removeAttr("onclick");
								});
								$("svg>image[id^=switch]").each(function(i){
							        $(this).removeAttr("onclick");
								});
								$("text").each(function(i){
							        $(this).removeAttr("onclick");
								});
								$(obj).html($('#elementText').val());
								
								$(button).attr("title", "开关" + $('#elementText').val());
								var postData = {
									switchId : $(button).attr("id"),
									switchTitle : "开关" + $('#elementText').val().trim(),
									svg : $('#cableDiagram').html()
								};
								$.ajax({
									url:'/circuit/editText.do',
							  		type:'post',
							  		data:postData,
							  		success:function(data){
							  			if(data.oc > 0){
							  				$.messager.alert('系统提示',data.message);
										}else if(data.oc<0){
											$.messager.alert('系统提示',data.message,'error');
										}
							  			//提示一下用户
							  			$('#editTextDialog').dialog('close');
							  			location.reload();
									}
								});
							}
						},{
							text:'取消',
							handler:function(){
								$('#editTextDialog').dialog('close');
							}
						}]
					});
				}
			};
			function deleteLine(lineId) {
				$('#'+lineId).remove();
				var postData = {
					lineId : lineId,
					svg : $('#cableDiagram').html()
				};
				$.ajax({
					url:'/circuit/deleteLine.do',
			  		type:'post',
			  		data:postData,
			  		success:function(data){
			  			if(data.oc > 0){
			  				$.messager.alert('系统提示',data.message);
						}else if(data.oc<0){
							$.messager.alert('系统提示',data.message,'error');
						}
			  			location.reload();
					}
				});
			};
			function deleteSwitch(switchId) {
 				$('#'+switchId).remove();
				var title = switchId.substring(7,switchId.length)
 				$("text").each(function(){
					var text = $(this).text().trim();
					if(title==text) {
						$(this).remove();
					}
				});
				var postData = {
					switchId : switchId,
					svg : $('#cableDiagram').html()
				}
				$.ajax({
					url:'/circuit/deleteSwitch.do',
			  		type:'post',
			  		data:postData,
			  		success:function(data){
			  			if(data.oc > 0){
			  				$.messager.alert('系统提示',data.message);
						}else if(data.oc<0){
							$.messager.alert('系统提示',data.message,'error');
						}
			  			location.reload();
					}
				});
			};
			function lastBranchLineId(obj) {
				var id = $(obj).attr("id");
				var lineId = id.substring(id.indexOf("-")+1, id.length);
				if($('#lastBranchLineId').val().trim()=="") {
					$('#lastBranchLineId').attr("value", lineId);
				} else {
					$('#lastBranchLineId').attr("value", $('#lastBranchLineId').val()+","+lineId);
				}
			} 
			$(function() {
				esm.circuit.initialize();
				$("svg").width($("svg").width() * 1.5).height($("svg").height() * 1.5);
			});
		</script>
	</head>
	<body>
		<input id="selected" type="hidden" lineId="" switchId="" textObj="" />
		<div id="toobar" style="overflow: hidden; position: relative; top: 0px; left: 0px;">
			<input id="drawLine" class="esmButton" type="button" value="添加线路" onclick="javascript:esm.circuit.editLine();" />
			<input id="addButton" class="esmButton" type="button" value="添加开关" onclick="javascript:esm.circuit.editSwitch();" />
			<input id="deleteElement" class="esmButton" type="button" value="删除" onclick="javascript:esm.circuit.deleteElement();" />
		</div>
		<svg id="cableDiagram" viewBox="0 0 1599 899" width="1599" height="899" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" fill="none" style="background-color:black"> 
			${cableDiagram.html}
		</svg>
		<div id="addLineDialog" ></div>
		<div id="addSwitchDialog"></div>
		<div id="editTextDialog"></div>
	</body>
</html>