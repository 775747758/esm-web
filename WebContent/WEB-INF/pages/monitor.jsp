<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11-flat-20030114.dtd">
<!-- Created by SVGDeveloper 1.0 -->
<html>
<head>

<div id="outContainer">
	<div id="content"></div>
	<a style="overflow: hidden; position: relative; top: 25px; left: 0px;"
		id="removeMessageBt" onclick="removeMsg()" class="easyui-linkbutton">关闭通知</a>
</div>



</head>
<body>

	<div id = "container" style="background: #000; overflow: hidden; position: relative; left: 0px; top: 0px;">
	<svg  viewBox="0 0 2000 1000"  id = "cableDiagram" width="2000" height="1000" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" fill="none" style="background-color:black" stroke="#00FF00">
		${cableDiagram.html}
	</svg>

	</div>

	<img id="warnning" src="/images/warnning_normal.png" width="50px" />
	<img src="/images/fullscreen.png" width='40px' height='40px'
		style="position: absolute; right: 0px; top: 0px;"
		onclick="fullScreen()"></img>


</body>
<link rel="stylesheet" type="text/css"
	href="/ui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/ui/themes/icon.css">
<script type="text/javascript" src="/ui/jquery.min.js"></script>
<script type="text/javascript" src="/ui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/js/index.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<link type="text/css" rel="stylesheet" href="style/main.css" />
<style type="text/css">
.fontstyle {
	font-family: "微软雅黑" font-size : 70px;
	font-weight: 100
}

.fullscreen {
	cursor: pointer;
	width: 40px;
	height: 40px;
}

#warnning {
	position: absolute;
	left: 5px;
	top: 0px;
}

#yyyyyyy {
	opacity: 0.7;
	filter: alpha(opacity = 70);
	background: #444;
	width: 400px;
	margin-right: auto;
	margin-left: auto;
	
}

#outContainer {
	background: #CCCCCC;
	position: relative;
	overflow: hidden; 
	width: 1200px;
	height: 80px;
	line-height: 40px;
	margin-right: auto;
	margin-left: auto;
	
}

#content {
margin-top:20px;
	font-size:40px;
	position: absolute;
	left: 0;
	top: 0;
	white-space: nowrap; /*重要，不然文字显示效果不好*/
}
</style>
<script type="text/javascript">
	//滚动字幕开始
	var isScroll = false;
	(function($) {
		$.fn.extend({
			roll : function(options) {
				isScroll = true;
				var defaults = {
					speed : 1
				};
				var options = $.extend(defaults, options);
				var speed = (document.all) ? options.speed : Math.max(1,
						options.speed - 1);
				if ($(this) == null)
					return;
				var $outContainer = $(this);
				var $content = $("#content");
				var init_left = $outContainer.width();
				$content.css({
					left : parseInt(init_left) + "px"
				});
				var This = this;
				var time = setInterval(function() {
					This.move($outContainer, $content, speed);
				}, 20); //setInterval会改变this指向，即使加了This=this，也要用匿名函数封装，这里调试了n久

				$outContainer.bind("mouseover", function() {
					clearInterval(time);
				});
				$outContainer.bind("mouseout", function() {
					time = setInterval(function() {
						This.move($outContainer, $content, speed);
					}, 20);
				});

				return this;
			},
			move : function($outContainer, $content, speed) {
				var outContainer_width = $outContainer.width();
				var content_width = $content.width();
				if (parseInt($content.css("left")) + content_width > 0) {
					$content.css({
						left : parseInt($content.css("left")) - speed + "px"
					});
				} else {
					$content.css({
						left : parseInt(outContainer_width) + "px"
					});
				}
			}
		});
	})(jQuery);
	//滚动字幕结束

	var msgInterval;
	var message = "";
	var isBegin = false;
	var isLight = false;
	var isNotice=false;
	/* 	var a = new Array("2119", "2150", "2201", "2207", "2208", "2210", "2211",
	 "2212", "2213", "2215", "2216", "2221", "2223", "2226", "2230",
	 "2234", "2238", "2240", "2245", "2248", "2260", "2265", "2282",
	 "2288", "2334", "2217", "ZX923=1HG01"); */
	var Colors = {
		close : 'black',
		open : 'red',
		hot : 'blue',
		reserve : 'gray'
	};
	if (window.addEventListener) {
		window.addEventListener('DOMMouseScroll', wheel, false);//给firefox添加鼠标滚动事件 
	}
	function wheel(event) {
		return wheelimg(event);
	}

	//滚轮放大缩小
	function wheelimg(event) {
		if (event.detail) {
			$("svg").width($("svg").width() - event.detail * 12).height(
					$("svg").height() - event.detail * 12);
		}
		return true;
	}

	$(function() {
		msgInterval = window.setInterval(getMsg, 2000);
	})

	//停止警报
	function stopWarn() {
		isBegin = false;
		$("#warnning").attr("src", "/images/warnning_normal.png");
		clearInterval(interval);
	}
	
	
	//控制音频
	var audioElement = document.createElement('AUDIO');  
	audioElement.setAttribute('src', '/audio/火警警报声.wav');
	audioElement.setAttribute('loop', 'loop');
	
	//document.body.appendChild(x);
	
	function PlayAudio()  
	{  
	    audioElement.load;  
	    audioElement.play();  
	    
	}  
	function PauseAudio()  
	{  
	    audioElement.pause();  
	}  
	//var ac=new (window.AudioContext||window.webkitAudiaContext)();

	//关闭通知
	function removeMsg() {
		$.post("/circuit/removeMessage.do", function(result) {
			if (result.success) {
				//alert(result.success);
				if (!isBegin) {
					isNotice=false;
					$("#content").html("线路一切正常！！");
				}

			}
		}, "JSON");
	}
	//开关： QS923=4HG断开   开关： YC917断开
	function getMsg() {
		$.post("/circuit/getMessage.do", function(result) {
			if (result.success) {
				//alert(result.obj);
				message = result.obj;
				if (!isBegin) {
					//$("#mar").html("<STRONG>"+message);
					if (!isScroll) {
						$("#outContainer").roll({
							speed : 2
						});
					} else {
						if (message != "" && message != null) {
							isNotice=true;
							$("#content").html("通知:" + message);
						}

					}

					// $("#outContainer").html(message);

				}

			}
		}, "JSON");
	}

	//取得线路和开关的信息
	function getJsonData() {
		var switchContent = "";
		var lineContent = "";
		var line_wrong = new Array();
		var switch_wrong = new Array();
		var isWS = false;
		var prefix_line = "线路：  ";
		var prefix_switch = "开关：  ";
		var isBreak = false;
		var content = "";
		var args = {
			"time" : new Date()
		};
		
		
		jQuery.ajax({
			url : '/circuit/getAllLinesAndSwitchs.do',
			type : 'get',
			success : function(map) {
				var cableDiagram = map.cableDiagram;
				$("#cableDiagram").html(cableDiagram);
				//显示所有开关
				var switchs = map.switchs;
				for (var i = 0; i < switchs.length; i++) {
					var s = switchs[i];
					//开关
					if (s.type != 4) {
						var img = jQuery("image[id='switch-" + s.id + "']");
						var imageUri = img.attr("xlink:href");
						var arrXlink = imageUri.split("_");
						var arrColor = arrXlink[1].split(".");
						var oldColor = arrColor[0];
						var newColor = StatusArr[s.status - 10];
						img.attr("xlink:href", imageUri.replace(oldColor,
								newColor));
						var str="";
						str=str+s.id;
						var isContins=str.search("WS")==-1;
						
						if(s.status==10&&isContins){
							isBreak = true;
							content = content + s.id + " ";
						}

					}
					//变电站
					else if (s.type == 4) {
						var img = jQuery("#ST_" + s.id);
						var imageUri = img.attr("xlink:href");
						var arrXlink = imageUri.split("_");
						var arrColor = arrXlink[2].split(".");
						var oldColor = arrColor[0];
						var newColor = StatusArr[s.status - 10];
						img.attr("xlink:href", imageUri.replace(oldColor,
								newColor));
					}
					
				}
				
				
				if(isBreak){
					if (!isScroll) {
						$("#outContainer").roll({
							speed : 2
						});
					} else {
						$("#content").html(prefix_switch+content+"断开！");
					}

					if (!isBegin) {
						startWarn();
						PlayAudio();
					}
				}else{
					
					if(!isNotice){
						$("#content").html("线路一切正常！！");
					}
					
					if (isBegin) {
						//$("#mar").html("<STRONG>"+"线路一切正常！！");
						//$("#outContainer").html("线路一切正常！！");
						if (!isScroll) {
							$("#outContainer").roll({
								speed : 2
							});
						} else {
							
							if(!isNotice){
								$("#content").html("线路一切正常！！");
							}
						}

						stopWarn();
						PauseAudio();
					}
				}
		
				//$("#content").html("线路一切正常！！");
				//显示所有线路
				var lines = map.lines;
				if (lines != null) {
					for (var i = 0; i < lines.length; i++) {
						var line = lines[i];
						if (line.status == 4) {//表示电线上有电
							jQuery("#line-" + line.id).attr("stroke",
									Color.CLOSE);
						} else if (line.status == 5) {//表示电线上没电
							jQuery("#line-" + line.id).attr("stroke",
									Color.OPEN);
						} else if (line.status == 6) {//表示电线上没电
							jQuery("#line-" + line.id).attr("stroke",
									Color.UNUSE);
						} else if (line.status == 7) {//表示电线上没电
							jQuery("#line-" + line.id).attr("stroke",
									Color.RESERVE);
						}
					}
				};
				
			}
		});
		
	}

	//开始警报
	function startWarn() {
		isBegin = true;
		interval = setInterval(function() {
			if (isLight) {
				$("#warnning").attr("src", "/images/warnning_normal.png");
				isLight = false;
			} else {
				$("#warnning").attr("src", "/images/warnning_light.png");
				isLight = true;
			}
		}, 200);

	}
	//停止警报
	function stopWarn() {
		isBegin = false;
		$("#warnning").attr("src", "/images/warnning_normal.png");
		clearInterval(interval);
	}

	//点击全屏按钮，全屏显示
	function fullScreen() {
		var el = document.documentElement;
		var rfs = el.requestFullScreen || el.webkitRequestFullScreen
				|| el.mozRequestFullScreen || el.msRequestFullScreen;
		if (typeof rfs != "undefined" && rfs) {
			rfs.call(el);
		} else if (typeof window.ActiveXObject != "undefined") {
			//for IE，这里其实就是模拟了按下键盘的F11，使浏览器全屏
			var wscript = new ActiveXObject("WScript.Shell");
			if (wscript != null) {
				wscript.SendKeys("{F11}");
			}
		}
	}

	$(function() {
		//每隔300ms更新开关和线路数据
		setInterval(function() {
			getJsonData();
		}, 5000); 
	});

	//设置鼠标光标形状
	function setMouseCursor(cursor) {
		jQuery("#container").css("cursor", cursor);
	}
	
	
	var Color = {
			 OPEN:'#27fb06',
			 CLOSE:'red',
			 UNUSE:'#fffe01',
			 RESERVE:'#757575'
			 };
	var StatusArr = new Array("OPEN", "CLOSE", "UNUSE", "RESERVE","DEBUG");
	var Colors = new Array('#27fb06','red','#fffe01','#757575');
	var ColorsLine = new Array('red','#27fb06','#fffe01','#757575');
	jQuery(function() {
		//显示目前线路和开关的状态
		jQuery("#glass").slideDown(150);
		jQuery.ajax({
			url : '/circuit/getAllLinesAndSwitchs.do',
			type : 'get',
			success : function(map) {

				//显示所有开关
				var switchs = map.switchs;
				for (var i = 0; i < switchs.length; i++) {
					var s = switchs[i];
					
					//开关
					if (s.type != 4) {
						
						var img = jQuery("image[id='switch-" + s.id + "']");
						var imageUri = img.attr("xlink:href");
						var arrXlink = imageUri.split("_");
						var arrColor = arrXlink[1].split(".");
						var oldColor = arrColor[0];
						var newColor = StatusArr[s.status - 10];
						img.attr("xlink:href", imageUri.replace(oldColor,
								newColor));
						
					}
					//变电站
					else if (s.type == 4) {
						var img = jQuery("#ST_" + s.id);
						var imageUri = img.attr("xlink:href");
						var arrXlink = imageUri.split("_");
						var arrColor = arrXlink[2].split(".");
						var oldColor = arrColor[0];
						var newColor = StatusArr[s.status - 10];
						img.attr("xlink:href", imageUri.replace(oldColor,
								newColor));
					}

				}

				//显示所有线路
				var lines = map.lines;
				if (lines != null) {
					for (var i = 0; i < lines.length; i++) {
						var line = lines[i];
						if (line.status == 4) {//表示电线上有电
							jQuery("#line-" + line.id).attr("stroke",
									Color.CLOSE);
						} else if (line.status == 5) {//表示电线上没电
							jQuery("#line-" + line.id).attr("stroke",
									Color.OPEN);
						} else if (line.status == 6) {//表示电线上没电
							jQuery("#line-" + line.id).attr("stroke",
									Color.UNUSE);
						} else if (line.status == 7) {//表示电线上没电
							jQuery("#line-" + line.id).attr("stroke",
									Color.RESERVE);
						}
					}
				}

			}
		});
		jQuery("#container").draggable();
	});
</script>
</html>
  