/**
 * 画线js
 */
var esm = esm == null ? new Object() : esm;
esm.circuit = esm.circuit == null ? new Object() : esm.circuit;
var line = null;
var lines = [];
var x = 0;
var y = 0;
/**
 * 1. 给svg容器元素绑定鼠标事件 2. 初始化当前线路和开关的状态
 */


esm.circuit =  {
	initialize : function(){
		$("line").each(function(i){
	        $(this).attr("onclick", "esm.circuit.selected(this);");
		});
		$("svg>image[id^=switch]").each(function(i){
	        $(this).attr("onclick", "esm.circuit.selected(this);");
		});
		$("text").each(function(i){
	        $(this).attr("onclick", "editText(this);");
		});
	},
	selected : function(obj) {
		if($(obj)[0].tagName.indexOf("line") != -1){
			esm.circuit.cancelSelect();
			$(obj).attr("stroke", "#fff");
			$("#selected").attr("lineId", $(obj).attr("id"));
		} else {
			if($(obj).attr("id").indexOf("C") ==-1 && $(obj).attr("id").indexOf("WS") == -1){
				esm.circuit.cancelSelect();
				$(obj).attr("xlink:href", "/images/N_UNUSE.png");
				$("#selected").attr("switchId", $(obj).attr("id"));
			}
		}
	},
	cancelSelect : function() {
		var selectedLineId = $("#selected").attr("lineId");
		var selectedSwitchId = $("#selected").attr("switchId");
		$("#selected").attr("lineId", "");
		$("#"+selectedLineId).attr("stroke", "#FF0000");
		$("#selected").attr("switchId", "");
		$("#"+selectedSwitchId).attr("xlink:href", "/images/N_CLOSE.png");
	},
	editLine : function() {
		var paper = Snap("#cableDiagram");
		var startPoint = {
			x : 0,
			y : 0
		};
		var endPoint = {
			x : 0,
			y : 0
		};
		var counter = 0;
		paper.click(function(event) {
			var rx, ry; 
			if(window.pageYOffset) {    // all except IE   
				ry = window.pageYOffset;   
				rx = window.pageXOffset;
			} else if(document.documentElement && document.documentElement.scrollTop) {    // IE 6 Strict   
				ry = document.documentElement.scrollTop;   
				rx = document.documentElement.scrollLeft;
			} else if(document.body) {    // all other IE   
				ry = document.body.scrollTop;   
				rx = document.body.scrollLeft;  
			}
			counter++;
			if (line == null) {
				lines[0] = null;
				if (counter % 2 == 1) {
					startPoint.x = (event.clientX+rx)/1.5;
					startPoint.y = (event.clientY+ry)/1.5-16;
					line = paper.line(startPoint.x, startPoint.y, 0, 0).attr({
						stroke : "#FF0000"
					});
				}
			} else {
				lines.push(line);
				if (lines.length > 0) {
					addLine(line);
				}
				line = null;
			}
		});
		paper.mousemove(function(event) {
			var rx, ry; 
			if(window.pageYOffset) {    // all except IE   
				ry = window.pageYOffset;   
				rx = window.pageXOffset;
			} else if(document.documentElement && document.documentElement.scrollTop) {    // IE 6 Strict   
				ry = document.documentElement.scrollTop;   
				rx = document.documentElement.scrollLeft;
			} else if(document.body) {    // all other IE   
				ry = document.body.scrollTop;   
				rx = document.body.scrollLeft;  
			}
			endPoint.x = (event.clientX+rx)/1.5;
			endPoint.y = (event.clientY+ry)/1.5-16;
			if (line != null) {
				line.attr("x2", endPoint.x);
				line.attr("y2", endPoint.y);
				line.attr("stroke", "#FF0000");
				line.attr("id", 'temp');
			}
		});
		paper.mouseover(function(event) {
			$("#cableDiagram").css("cursor", "crosshair");
		});
		paper.mouseout(function(event) {
			$("#cableDiagram").css("cursor", "auto");
		});
		
		$("#drawLine").attr("value","取消");
		$("#drawLine").attr("onclick","javascript:esm.circuit.cancelEditDraw();");
		$("#addButton").attr("style","display: none;");
		$("#deleteElement").attr("style","display: none;");
		
		$("line").each(function(i){
	        $(this).removeAttr("onclick");
		});
		$("svg>image[id^=switch]").each(function(i){
	        $(this).removeAttr("onclick");
		});
		$("text").each(function(i){
	        $(this).removeAttr("onclick");
		});
		esm.circuit.cancelSelect();
	},
	cancelEditDraw : function() {
		var paper = Snap("#cableDiagram");
		paper.unclick();
		paper.unmousemove();
		paper.unmouseover();	
		paper.unmouseout();
		$("#drawLine").attr("value","添加线路");
		$("#drawLine").attr("onclick","javascript:esm.circuit.editLine();");
		$("#addButton").removeAttr("style");
		$("#deleteElement").removeAttr("style");
		esm.circuit.initialize();
	},
	editSwitch : function() {
		$("line").each(function(i){
	        $(this).removeAttr("onclick");
		});
		$("svg>image[id^=switch]").each(function(i){
	        $(this).removeAttr("onclick");
		});
		$("text").each(function(i){
	        $(this).removeAttr("onclick");
		});
		var paper = Snap("#cableDiagram");
		paper.mousemove(function(event) {
			var rx, ry; 
			if(window.pageYOffset) {    // all except IE   
				ry = window.pageYOffset;   
				rx = window.pageXOffset;
			} else if(document.documentElement && document.documentElement.scrollTop) {    // IE 6 Strict   
				ry = document.documentElement.scrollTop;   
				rx = document.documentElement.scrollLeft;
			} else if(document.body) {    // all other IE   
				ry = document.body.scrollTop;   
				rx = document.body.scrollLeft;  
			}
			x = (event.clientX+rx)/1.5;
			y = (event.clientY+ry)/1.5-16;
		});
		paper.mouseover(function(event) {
			$("#cableDiagram").css("cursor", "pointer");
		});
		paper.mouseout(function(event) {
			$("#cableDiagram").css("cursor", "auto");
		});
		$("line").each(function(){
			$(this).attr("onclick", "esm.circuit.addSwitchImg(this);");
			$(this).attr("onmouseover", "$(this).attr('stroke','#27fb06')");
			$(this).attr("onmouseout", "$(this).attr('stroke','#FF0000')");
		});
		$("#addButton").attr("value","取消");
		$("#addButton").attr("onclick","javascript:esm.circuit.cancelEditSwitch();");
		$("#drawLine").attr("style","display: none;");
		$("#deleteElement").attr("style","display: none;");
		esm.circuit.cancelSelect();
	},
	addSwitchImg : function(obj) {
		var x1 = $(obj).attr("x1");
		var y1 = $(obj).attr("y1");
		var x2 = $(obj).attr("x2");
		var y2 = $(obj).attr("y2");
		//計算座標值
		var transform = $(obj).attr("transform");
		if (transform && typeof(transform)!="undefined" && transform!=0) {//如果不为空，计算x1,y1,x2,y2的值
			transform = transform.substring(transform.indexOf("(")+1,transform.indexOf(")"));
			var transforms = transform.split(",");
			var a1 = transforms[0];
			var a2 = transforms[1];
			var a3 = transforms[2];
			var a4 = transforms[3];
			var a5 = transforms[4];
			var a6 = transforms[5];
			x1 = parseFloat(x1*a1)+parseFloat(a5);
			y1 = parseFloat(y1*a4)+parseFloat(a6);
			x2 = parseFloat(x2*a1)+parseFloat(a5);
			y2 = parseFloat(y2*a4)+parseFloat(a6);
		};
		
		var myDate = new Date();
		var line2Id = $(obj).attr("id") + "_" + myDate.getTime();
		var paper = Snap("#cableDiagram");
		var text;
		if(x1 == x2){//竪向
			if(y1 < y2) {
				var line1 = paper.paper.line(x1,y1,x1,y).attr({
					id:$(obj).attr("id"),
					stroke:"#FF0000"
				});
				var line2 = paper.paper.line(x2,y+12,x2,y2).attr({
					id:line2Id,
					stroke:"#FF0000"
				});
				var switchImg = paper.paper.image("/images/N_CLOSE.png", x-10, y, 20, 12);
			} else {
				var line1 = paper.paper.line(x1,y1,x1,y+12).attr({
					id:$(obj).attr("id"),
					stroke:"#FF0000"
				});
				var line2 = paper.paper.line(x2,y,x2,y2).attr({
					id:line2Id,
					stroke:"#FF0000"
				});
				var switchImg = paper.paper.image("/images/N_CLOSE.png", x-10, y, 20, 12);
			}
			text = paper.paper.text(x+12, y).attr({
				id : "snap"
			});
		}else if(y1 == y2){//橫向
			if(x1 < x2) {
				var line1 = paper.paper.line(x1,y1,x,y2).attr({
					id:$(obj).attr("id"),
					stroke:"#FF0000"
				});
				var line2 = paper.paper.line(x+20,y1,x2,y2).attr({
					id:line2Id,
					stroke:"#FF0000"
				});
				var switchImg = paper.paper.image("/images/N_CLOSE.png", x, y-7, 20, 12);
			} else {
				var line1 = paper.paper.line(x1,y1,x+20,y1).attr({
					id:$(obj).attr("id"),
					stroke:"#FF0000"
				});
				var line2 = paper.paper.line(x,y2,x2,y2).attr({
					id:line2Id,
					stroke:"#FF0000"
				});
				var switchImg = paper.paper.image("/images/N_CLOSE.png", x, y-7, 20, 12);
			}
			text = paper.paper.text(x, y+10).attr({
				id : "snap"
			});
		}
		$(obj).attr("stroke", "FF0000");
		var lineName = line2Id;
		addSwitch(line1, line2, lineName, switchImg, obj);
	},
	cancelEditSwitch : function() {
		var paper = Snap("#cableDiagram");
		paper.unclick();
		paper.unmouseover();
		paper.unmouseout();
		$("line").each(function(i){
	        $(this).removeAttr("onmouseover");
	        $(this).removeAttr("onmouseout");
		});
		$("#addButton").attr("value","添加开关");
		$("#addButton").attr("onclick","javascript:esm.circuit.editSwitch();");
		$("#drawLine").removeAttr("style");
		$("#deleteElement").removeAttr("style");
		esm.circuit.initialize();
	},
	deleteElement : function(obj) {
		var selectedLineId = $("#selected").attr("lineId");
		var selectedSwitchId = $("#selected").attr("switchId");
		
		$("#selected").attr("switchId", "");
		$("#selected").attr("lineId", "");

		$("line").each(function(i){
	        $(this).removeAttr("onclick");
		});
		$("svg>image[id^=switch]").each(function(i){
	        $(this).removeAttr("onclick");
		});
		$("text").each(function(i){
	        $(this).removeAttr("onclick");
		});
		if(selectedLineId.indexOf("line") != -1){
			deleteLine(selectedLineId);
		} else {
			deleteSwitch(selectedSwitchId);
		}
	}
}