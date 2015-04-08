/**
 * 画线js
 */
var esm = esm == null ? new Object() : esm;
esm.circuit = esm.circuit == null ? new Object() : esm.circuit;
var line = null;
var lines = [];
/**
 * 1. 给svg容器元素绑定鼠标事件 2. 初始化当前线路和开关的状态
 */
esm.circuit.initialize = function() {
	/*// step 1. 给svg容器元素绑定鼠标事件
	jQuery("#container").bind(
			"dblclick",
			function() {
				var cableDiagram = document.getElementById("cableDiagram");
				var width = parseInt(cableDiagram.getAttribute("width"));
				var height = parseInt(cableDiagram.getAttribute("height"));
				var zoom = document.getElementsByName("zoom")[0];
				if (zoom.checked) {
					cableDiagram.setAttribute("width", width
							+ parseInt(width * 0.2));
					cableDiagram.setAttribute("height", height
							+ parseInt(height * 0.2));
				} else {
					cableDiagram.setAttribute("width", width
							- parseInt(width * 0.2));
					cableDiagram.setAttribute("height", height
							- parseInt(height * 0.2));
				}
			});
	// step 2.初始化当前线路和开关的状态
	jQuery.ajax({
		url : '/circuit/getAllLinesAndSwitchs.do',
		type : 'get',
		success : function(map) {
			if (map != null) {
				var lines = map.lines;
				if (lines != null) {
					for (var i = 0; i < lines.length; i++) {
						var line = lines[i];
						if (line.status == 4) {// 表示电线上有电
							jQuery("#line-" + line.id).attr("stroke",
									Colors.close);
						} else if (line.status == 5) {// 表示电线上没电
							jQuery("#line-" + line.id).attr("stroke",
									Colors.open);
						}
					}
				}
				var switchs = map.switchs;
				if (switchs != null) {
					for (var i = 0; i < switchs.length; i++) {
						var s = switchs[i];
						var img = document.getElementById("switch-" + s.id);
						var href = img.getAttribute("xlink:href");
						if (s.status == 11) {
							img.setAttribute("xlink:href", href.replace("open",
									"close"));
						} else if (s.status == 10) {
							img.setAttribute("xlink:href", href.replace(
									"close", "open"));
						}
					}
				}
			}
		}
	});
*/
	// step 3.画线

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
		console.info(event.clientX + "," + event.clientY);
		counter++;
		if (line == null) {
			lines[0] = null;
			if (counter % 2 == 1) {
				startPoint.x = event.clientX-10;
				startPoint.y = event.clientY-32;
				line = paper.line(startPoint.x, startPoint.y, 0, 0);
			
			}
		} else {
			lines.push(line);
			alert("里面line"+lines);
			alert("里面lines"+lines[1]);
			line = null;
			if (lines.length > 0) {
				jQuery("#addLineDialog").dialog("open");
			}
		}
	});
	paper.mousemove(function(event) {
		endPoint.x = event.clientX-10;
		endPoint.y = event.clientY-32;
		if (line != null) {
			console.info(event.clientX + "," + event.clientY);

			line.attr("x2", endPoint.x);
			line.attr("y2", endPoint.y);
			line.attr("stroke", "green");
			line.attr("id", 'temp');
			
		}
	});
	paper.mouseover(function(event) {
		jQuery("#cableDiagram").css("cursor", "crosshair");
	});
	paper.mouseout(function(event) {
		jQuery("#cableDiagram").css("cursor", "auto");
	});
	
}
