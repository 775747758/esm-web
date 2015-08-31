

<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11-flat-20030114.dtd">
<!-- Created by SVGDeveloper 1.0 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta content="text/html; charset=utf-8" http-equiv="content-type" />
<style type="text/css">
.glass {  height:100%; width:100%; filter:alpha(Opacity=80);-moz-opacity:0.5;opacity: 0.5;z-index:100; background-color:#ffffff;  }
.middle{
    margin-right: auto;
    margin-left: auto;
}
#mask{ 
	background-color:#333;
	opacity:0.6;
	filter: alpha(opacity=60); 
	position:absolute; 
	left:0;
	top:0;
	z-index:500;
	}
body{background-color: #333;}
	.logo{background-image: url(/images/logo.png);height:53px;width: 39px; float: left;margin: -4px 18px 0 0;}
	.search-form{float: left; background-color: #fff;padding:0px;}
	.search-tab{float: left;height:40px;}
	.search-text{font-size:30px;height:40px;line-height: 40px;float: left;width: 350px;border: 0;outline: none;}
	.search-button{cursor: pointer;background-image: url(/images/search-button.png);width:44px;height:44px;float: left;border: 0}
	.search-box{z-index:1000;position:absolute;top:150px;left: 200px; }
	.suggest{z-index:1000;width:394px; background-color:#fff;position:absolute;top:194px;left:331px;margin:0;padding:0;border-width:1px;border-style:solid;border-color: #999;}
	.suggest ul{list-style:none;display:block;margin:0;padding:0}
	.suggest ul li {padding:3px;line-height:30px;font-size: 20px;color: #777;cursor: pointer;padding:3px;}
	.suggest ul li:hover{background-color:#e5e5e5;text-decoration: underline;}
	.suggest strong{color:#000;}
	
	.search_tab{display:block;margin:0;padding:0}
	.tab{height:42px;border-width:1px;border-style:solid;border-color: #e5e5e5;overflow:hidden;display:block;list-style:none;display:block;margin:0;padding:0}
	.tab li {background-color:white;width:72px;text-align:center;height:42px;line-height:42px;display:block;font-size: 20px;color: #777;cursor: pointer;}
	.tab li:hover{background-color:#e5e5e5;text-decoration: underline;}
	
	.clearfix:after{display:block;clear:both;content:"";visibility:hidden;height:0px;}
	.clearfix{zoom:1}
	
	.nav{margin:0 auto; width:1228px;}
	.nav ul{list-style:none;margin:0;padding:0;}
	.nav ul li{float:left;padding:10px;}
	.nav ul li a{color:#999; text-decoration:none;font-size:12px; font-weight:bold;}
		a:hover {text-decoration: underline;}
		a{text-decoration: none;color:#6c6c6c;}
		
	.trigger-hover{
			height:auto;
	}
</style>
<script type="text/javascript" src="http://sandbox.runjs.cn/uploads/rs/233/bkf2ntm7/jquery.radio.js"></script>
<script type="text/javascript" src="/js/index.js"></script>
</head>
<body>
	<div id="toobar" style="overflow:hidden;position:relative;top:10px;left:10px;">
		<input type="button" id="findButton"   width="50" height="30"  class="esmButton" value="查找开关" ></input>
			<c:if test="${flag eq '1'}">
				<input type="button" id="sendMessageBt"  onclick="sendMsg()" class="esmButton" value="发布通知" ></input>  
			</c:if>
		<input type="button" id="refresh"  onclick="refresh()" class="esmButton" value="刷新" ></input>
	</div>
	
	<div id="outDiv"  style="background:#000;overflow:hidden;position:relative;left:0px;width:1500px;height:600px;top:30px;border:1px solid gray;">
		<div id="glass" class="glass" style="display:none;">正在玩儿命计算...</div>
		<div id="container" style="overflow:hidden;position:relative;left:0px;top:50px;">
			<svg id="cableDiagram" viewBox="0 0 1599 899" width="1599" height="899" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" fill="none" style="background-color:black">
				${cableDiagram.html}
			</svg> 
		</div>
	</div>
	
	<div style="display: none;">
	
		<div id="msgWin" class="easy-dialog"  shadow=true resizable=true title="发布通知" style="width:510px;height:250px;padding:10px;background:#fafafa;collapsible:true;minimizable:true;maximizable:true">
			<textarea id="text" cols=55 rows=7  name="notice" ></textarea>
		</div>
		
		<div id="selectWinSwitch">
			<div class="easy-dialog"  shadow=true resizable=true title="选择状态" style="padding:10px;background:#fafafa;collapsible:true;minimizable:true;maximizable:true">
				<div class="middle" id="radios" style="margin-left:50px;margin-top: 20px ">
					<input type="radio" name="status" value="2" checked="checked">&nbsp;正常<br><br>
					<input type="radio" name="status" value="1"  >&nbsp;断开<br><br>
					<input type="radio" name="status" value="4"  >&nbsp;备用<br><br>
					<input type="radio" name="status" value="3"  >&nbsp;闲置<br><br>
				</div>
			</div>
	</div>

	</div>
	
	<div class="search-box" id="search-box" style="display:none;">
		<div id="search_tab" class="search-tab">
	 		<ul id="tab" class="tab" >
	 			<li id="tab_1" >开关</li>
	 			<li id="tab_2" >线路</li>
	 		</ul>
	 	</div>
	 	<form class="search-form"  id="search-form">
	 		<input type="text" class="search-text" name="q" id="search_input" autocomplete="off" value=""/>
	 		<input type="button" class="search-button" onclick="find()"  value=""/>
	 	</form>
	</div>
	
	<div class="suggest" id="search-suggest" style="display:none">
		<ul id="search-result"></ul>
	</div>

<script type="text/javascript">
function refresh() {
	esm.common.tab.refresh();
};
function checkWDKBZ(){
	if($("#switch-MF911").attr("xlink:href").indexOf('OPEN')>0||$("#switch-MF912").attr("xlink:href").indexOf('OPEN')>0||$("#switch-MF921").attr("xlink:href").indexOf('OPEN')>0||$("#switch-MF922").attr("xlink:href").indexOf('OPEN')>0){
		$("#WDKBZ").attr("xlink:href","/images/wd_open.gif");
	}
	else{
		$("#WDKBZ").attr("xlink:href","/images/wd_close.gif");
	}
}


var aryX1 = new Array();
var aryX2 = new Array();
var aryY1 = new Array();
var aryY2 = new Array();

Array.max = function( array ){   
	 return Math.max.apply( Math, array );
}; 

Array.min = function( array ){    
	 return Math.min.apply( Math, array );
};


var isClick=false;
var searchType="switch";
$('#tab').mouseover(function(event) {
	if(!isClick){
		$('#tab_2').show();
		$('#tab_1').show();
		$('#tab').height(84);
	}
	isClick=false;
	
//this.className+=' trigger-hover';
});
$('#tab_1').click(function() {
	isClick=true;
	$('#tab_1').show();
	$('#tab_2').hide();
	$('#tab').height(42);
	searchType="switch";
});
$('#tab_2').click(function() {
	$('#tab_2').show();
	$('#tab_1').hide();
	$('#tab').height(42);
	searchType="line";
});
function oMask(){
	//alert("sdss");
	//获取页面的高度和宽度
	var sWidth=document.body.scrollWidth;
	var sHeight=document.body.scrollHeight;
	
	//获取页面的可视区域高度和宽度
	var wHeight=document.documentElement.clientHeight;
	
	var oMask=document.createElement("div");
		oMask.id="mask";
		oMask.style.height=sHeight+"px";
		oMask.style.width=sWidth+"px";
		oMask.onclick = function(){
			document.body.removeChild(oMask);
			$('#search-box').hide();
			$('#search-result').hide();
			$('#search-suggest').hide();
			
		};
	document.body.appendChild(oMask);
};

$('#search_input').bind('keyup',function(){
	var jqueryInput = $(this);
	var searchText = jqueryInput.val();
	var data={searchType:searchType,keyword:searchText};
	$.get('/circuit/getSwitchOrLineByKeyword.do',data,function(d){
		var html='';
		if(searchType=="line"){
			for(var i=0;i<d.length;i++){
				html+="<li>"+d[i].name+"</li>";
			}
		}
		else{
			
			for(var i=0;i<d.length;i++){
				html+="<li>"+d[i].name+"</li>";
			}
		}
		
		$('#search-result').html(html);
		$('#search-suggest').show().css({
		}); 
	});
 });

$("#search-result").bind('click',function(){
	$('#search-suggest').hide();
});

$("#search-result").delegate('li','click',function(){
	$('#search_input').val($(this).html());
});

$("#findButton").click(function(){
	$('#search-result').show();
	$('#search-box').show();
	oMask();
});



var isMouseover=false;
var findedButton;
var arySwitch = new Array();//定义一个存储历史查询结果数组
var aryLine = new Array();//定义一个存储历史查询结果数组

var  index=0;
var colorTemp;

	if (window.addEventListener) {
		window.addEventListener('DOMMouseScroll', wheel, false);//给firefox添加鼠标滚动事件 
	}
	function wheel(event) {
		return wheelimg(event);
	}
	
	//滚轮放大缩小
	function wheelimg(event) {
		if (event.detail) {
				$("svg").width($("svg").width() - event.detail * 12)
							.height($("svg").height() - event.detail * 12);
		}
		return true;
	}
	
function sendMsg(){
	$("#text").val("");
	$('#msgWin').dialog({
	buttons:[{
		text:'确定',
		iconCls:'icon-ok',
		handler:function(){
			var message =$("#text").val();
			$.post("/message/sendMessage.do", {"message" : message},function(result){
				alert("发布成功！");
				$('#msgWin').dialog('close');
			} ,"JSON");
			
		}
	},{
		text:'取消',
		iconCls:'icon-cancel',
		handler:function(){$('#msgWin').dialog('close');}
	}
	]

	});

}

function recoverLine(resultLines){
	var k=0;
	resultLines.each(function(){
		$(this).attr("stroke", aryLine[k]);
		$(this).attr("fill", aryLine[k]);
		k++;
	});
	//清空数组
	aryLine.length = 0;
}

var intervalLine;
var resultLines;
function searchLine(){
	var intervals = new Array();
	isMouseover=false;
	var isExist=false;
	var isLight=false;
	if(typeof(resultLines) != "undefined"){
		recoverLine(resultLines);
		clearInterval(intervalLine);
	}
	
	
	//获取查找输入框的值
	var er=$("#search_input").val();
	if(er=="")
	{
		$.messager.alert('提示信息','请输入开关ID');
	}
	else if(er.length<3)
	{
		$.messager.alert('提示信息','您输入正确的开关ID！');
	}
	else{
		resultLines=jQuery("line[title^="+er+"]");
		resultLines.each(function(){
			
			aryX1.push($(this).attr("x1"));
			aryX2.push($(this).attr("x2"));
			aryY1.push($(this).attr("y1"));
			aryY2.push($(this).attr("y2"));
			
			
			aryLine.push($(this).attr("stroke"));
			$(this).mouseover(function(){
		   		isMouseover=true;
		   		//clearInterval(interval);
		   		for(var i =0; i<intervals.length; i++){
					clearInterval(intervals[i]);
				}
		   		recoverLine(resultLines);
		   	});
		});
		intervalLine = setInterval(function() {
			if (isLight) {
				jQuery("line[title^="+er+"]").each(function(){
					$(this).attr("stroke", "#FF0000");
					$(this).attr("fill", "#FF0000");
				});
				isLight = false;
			} else {
				jQuery("line[title^="+er+"]").each(function(){
					//alert($(this).attr("title"));
					$(this).attr("stroke", "green");
					$(this).attr("fill", "green");
				});
				isLight = true;
			}
	}, 200);
	intervals.push(intervalLine);

	var temp=er.substring(0,2)+"变";
	
	var x=0,y=0;
	var ctm=jQuery("svg>image[title^="+temp+"]")[0].getCTM();
	
	var curX=x*ctm.a+y*ctm.c+ctm.e,curY=x*ctm.b+y*ctm.d+ctm.f;		
	
	$("svg").width(1599*2).height(899*2);
	$("#container").css("left",$("#outDiv").width()/2-curX-x-200);
	$("#container").css("top",$("#outDiv").height()/2-curY-y-200);
	
	$("#container").width($("#container").width()*1.5);
	$("#container").height($("#container").height()*1.5);

		
	}
}



function find(){
	if(searchType=="switch"){
		searchSwitch();
	}
	if(searchType=="line"){
		 searchLine();
	}
}
var intervalSwitch;
var beforeColor;
var beforeSwitch;
function searchSwitch(){
	var intervals = new Array();
	
	if(typeof(beforeSwitch) != "undefined"){
		var imageUri = beforeSwitch.attr("xlink:href");
		var arrXlink = imageUri.split("_");
	   	var arrColor = arrXlink[1].split(".");
	   	var oldColor = arrColor[0];
		beforeSwitch.attr("xlink:href",imageUri.replace(oldColor,beforeColor));
		clearInterval(intervalSwitch);
	}
	
	isMouseover=false;
	//遍历数组，将所有以前的搜索结果的text标签颜色改回黑色
		for(var i =0; i<arySwitch.length; i++){
			$(arySwitch[i]).attr("stroke", "#FF0000");
			$(arySwitch[i]).attr("fill", "#FF0000");
		}
		var isExist=false;
		var isLight=false;
		//获取查找输入框的值
		var er=$("#search_input").val();
		//alert(jQuery("svg>image[title^="+er+"]"));
		if(er=="")
		{
			$.messager.alert('提示信息','请输入开关ID');
		}else if(jQuery("svg>image[title^="+er+"]").size()<1){
			$.messager.alert('提示信息','您输入正确的开关ID！');
		}
		else if(er.length<3)
		{
			$.messager.alert('提示信息','您输入正确的开关ID！');
		}
		else{
			$("text").each(function () {
			//查找开关的text，改成绿色jquery.trim($(this).html())     
				if ($(this).html().trim()==er) {
					arySwitch.push($(this));
					$(this).attr("stroke", "#FFFFFF");
					$(this).attr("fill", "#FFFFFF");
					
				}
			});
			
			isExist=true;
			//已经搜索到开关
			
			var image=jQuery("image[title='"+er+"']");
			var imageUri = image.attr("xlink:href");
			var arrXlink = imageUri.split("_");
		   	var arrColor = arrXlink[1].split(".");
		   	var oldColor = arrColor[0];
		   	beforeColor=oldColor;
		   
		   	beforeSwitch=image;
		   	image.mouseover(function(){
		   		isMouseover=true;
		   		//clearInterval(interval);
		   		for(var i =0; i<intervals.length; i++){
					clearInterval(intervals[i]);
				}
		   		image.attr("xlink:href",imageUri.replace(colorTemp,oldColor));
		   		image.unbind("mouseover");
		   	});
		   	
		   	intervalSwitch = setInterval(function() {
						if (isLight) {
							image.attr("xlink:href",imageUri.replace(oldColor,"CLOSE"));
							colorTemp="CLOSE";
							//normalImg.setAttribute("xlink:href","/images/switch_close.gif");
							isLight = false;
						} else {
							image.attr("xlink:href",imageUri.replace(oldColor,"OPEN"));
							colorTemp="OPEN";
							//normalImg.setAttribute("xlink:href","/images/switch_open.gif");
							isLight = true;
						}
				}, 200);
				intervals.push(intervalSwitch);
				
			
			if(isExist)
			{
				
				
						//当查找到开关后，使svg显示在正中央
				if(jQuery("svg>image[title^="+er+"]").size()>0)
				{
					//alert(jQuery("svg>image[title^="+er+"]"));
					var x=Number(jQuery("svg>image[title^="+er+"]").attr("x")),y=Number(jQuery("svg>image[title^="+er+"]").attr("y"));
					//新添加的开关没有transform属性
					if(jQuery("svg>image[title^="+er+"]").attr("transform")==undefined){
						$("#container").css("left",$("#outDiv").width()/2-x);
						$("#container").css("top",$("#outDiv").height()/2-y);
					}
					else{
						if(jQuery("svg>image[title^="+er+"]").attr("x").length>10){
							$("#container").css("left",$("#outDiv").width()/2-x);
							$("#container").css("top",$("#outDiv").height()/2-y);
						}else{
							
							var ctm=jQuery("svg>image[title^="+er+"]")[0].getCTM();
							var curX=x*ctm.a+y*ctm.c+ctm.e,curY=x*ctm.b+y*ctm.d+ctm.f;	
							if(ctm.f<0){
								$("#container").css("left",$("#outDiv").width()/2-x-curX);
								$("#container").css("top",$("#outDiv").height()/2-y+curY);
							}else{
								$("#container").css("left",$("#outDiv").width()/2-x-curX);
								$("#container").css("top",$("#outDiv").height()/2-y-curY);
							}
							
							
						}
						
						
					}
					
					/* $("svg").width(1599*2).height(899*2);
					$("#container").width($("#container").width()*1.5);
					$("#container").height($("#container").height()*1.5); */
					
				}	
			}
			else{
				//$.messager.alert('提示信息','您输入的开关ID没有找到！');
			}
		}
}


//开关元素绑定单击事件
/*
  27fb06　绿色
  fffe01 黄色　备用
*/

 var Color = {
OPEN:'#27fb06',
CLOSE:'red',
UNUSE:'#fffe01',
RESERVE:'#757575'
};



var StatusArr = new Array("OPEN", "CLOSE", "UNUSE", "RESERVE","DEBUG");
var Colors = new Array('#27fb06','red','#fffe01','#757575');
var ColorsLine = new Array('red','#27fb06','#fffe01','#757575');

//变电站设置点击事件
jQuery("svg>image[id^=ST_]").each(function(){
    var image = this;
   	jQuery(image).bind("click",function(){
   		$('#selectWinSwitch').dialog({
 			title: '处理方式',
		    width: 250,
		    height: 400,
		    cache: false,
	   		buttons:[{
	   			text:'确定',
	   			iconCls:'icon-ok',
	   			handler:function(){
	   				//2:正常1：断开  4：备用   3：闲置
	   				var status=$("input[name='status']:checked").val();
	   		
	   				var imageUri = jQuery(image).attr("xlink:href");
	   				var arrXlink = jQuery(image).attr("xlink:href").split("_");
	   		   		var arrColor = arrXlink[2].split(".");
	   		   		var oldColor = arrColor[0];
	   		   		var newColor=StatusArr[parseInt(status)-1];
	   		   		
	   		   		//alert(newColor);
	   				jQuery(image).attr("xlink:href",imageUri.replace(oldColor,newColor));
	   				
	   		   		var arrId = jQuery(image).attr("id").split("_");
	   		   		var id = arrId[1];
	   		   	
	   		   		//var lines = getLinesBySwitchId(id,parseInt(status)+9);
	   		   		/* for(var i=0;i<lines.length;i++){
	   		   			
	   						jQuery("line[id='line-"+lines[i]+"']").attr("stroke",Colors[parseInt(status)-1]);
	   				} */
	   				getLinesBySwitchId(id,parseInt(status)+9,true);
	   		   		$("#selectWinSwitch").dialog('close');
	   			}
	   		},{
	   			text:'取消',
	   			iconCls:'icon-cancel',
	   			handler:function(){	
	   				$("#selectWinSwitch").dialog('close');}
	   		}]

   		});

	}); 
});
//switch-1HG=DZ201
jQuery("svg>image[id^=switch]").each(function(){
    var image = this;
   	jQuery(image).bind("click",function(){
   		var arrId = jQuery(image).attr("id").split("-");
		var id = arrId[1];
		var fdStart = id.indexOf("WS");
		if(fdStart == 0){
			$.messager.confirm("操作提示", "握手开关谨慎操作，注意核项", function (data) {
	            if (data) {
	            	var imageUri = jQuery(image).attr("xlink:href");
	   				var arrXlink = jQuery(image).attr("xlink:href").split("_");
	   		   		var arrColor = arrXlink[1].split(".");
	   		   		var oldColor = arrColor[0];
	   		   		var newColor="";
	   		   	    var status=0;
	   		   		if(oldColor=="CLOSE"){
	   		   			newColor="OPEN";
	   		   			status=10;
	   		   		}
	   		   		else{
	   		   			newColor="CLOSE";
	   		   			status=11;
	   		   		}
	   		
	   				jQuery(image).attr("xlink:href",imageUri.replace(oldColor,newColor));
	   		   		getLinesBySwitchId(id,status,true); 
	            }
	           
	        });
			
		}
		else{
			$('#selectWinSwitch').dialog({
				title: '处理方式',
				width: 250,
			    height: 400,
			    cache: false,
	   	   		buttons:[{
	   	   			text:'确定',
	   	   			iconCls:'icon-ok',
	   	   			handler:function(){
	   	   				//2:正常1：断开  4：备用   3：闲置
	   	   				var status=$("input[name='status']:checked").val();
	   	   				var imageUri = jQuery(image).attr("xlink:href");
	   	   				var arrXlink = jQuery(image).attr("xlink:href").split("_");
	   	   		   		var arrColor = arrXlink[1].split(".");
	   	   		   		var oldColor = arrColor[0];
	   	   		   		var newColor=StatusArr[status-1];
	   	   		   		var arrId = jQuery(image).attr("id").split("-");
	   	   		   		var id = arrId[1];
	   	   		   		getLinesBySwitchId(id,parseInt(status)+9,false);
	   	   		  		if(id=="MF911"||id=="MF912"||id=="MF921"||id=="MF922"){
   	   		  				checkWDKBZ();
	   		 			}
	   	   		   		$("#selectWinSwitch").dialog('close');
	   	   			}
	   	   		},{
	   	   			text:'取消',
	   	   			iconCls:'icon-cancel',
	   	   			handler:function(){
	   	   				$("#selectWinSwitch").dialog('close');
   	   				}
	   	   		}]
   	   		});
		}
	});
});

//根据一个开关id得到该开关影响的线路id集合
function getLinesBySwitchId(switchId,status,isStation){
	var lines = null;
	var switchs = null;
	jQuery.ajax({
		url:"/circuit/getLinesBySwitchId.do",
		data:{switchId:switchId,status:status},
		type:"post",
		async:false,
		success:function(data){
			
			if(data.oc > 0){
				lines = data.lines;
			 	switchs = data.switchs;
			 	if(!isStation){
			 		var currentImage=jQuery("image[id='switch-"+switchId+"']");
			 		var Cstatus=$("input[name='status']:checked").val();
	   				var CimageUri = jQuery(currentImage).attr("xlink:href");
	   				var CarrXlink = jQuery(currentImage).attr("xlink:href").split("_");
	   		   		var CarrColor = CarrXlink[1].split(".");
	   		   		var ColdColor = CarrColor[0];
	   		   		var CnewColor=StatusArr[Cstatus-1];
	   		   		jQuery(currentImage).attr("xlink:href",CimageUri.replace(ColdColor,CnewColor));
			 	}
	   		   		
				 if (typeof(switchs) != "undefined"){
					 if(switchs!=null||switchs!=""){
							for(var i=0;i<switchs.length;i++){
								var image=jQuery("image[id='switch-"+switchs[i]+"']");
								var imageUri = image.attr("xlink:href");
								if(typeof(imageUri) != "undefined"){
					   				var arrXlink = imageUri.split("_");
					   		   		var arrColor = arrXlink[1].split(".");
					   		   		var oldColor = arrColor[0];
					   		   		image.attr("xlink:href",imageUri.replace(oldColor,data.action));
								}
							}
						} 
				}
				 
				 if (typeof(lines) != "undefined"){
					 if(lines!=null||switchs!=""){
						 for(var i=0;i<lines.length;i++){
			   				 jQuery("line[id='line-"+lines[i]+"']").attr("stroke",Colors[status-10]);
			   			}
					} 
				}
				
			}else if(data.oc<0){
				jQuery.messager.alert('系统提示',data.tip,'error');
				
			}
		}
	});
}

//设置鼠标光标形状
function setMouseCursor(cursor){
	jQuery("#container").css("cursor",cursor);
}
jQuery(
   function(){
   	//显示目前线路和开关的状态
   	jQuery("#glass").slideDown(150);
   	jQuery.ajax({
   		url:'/circuit/getAllLinesAndSwitchs.do',
   		type:'get',
   		success:function(map){
   			
   			 //显示所有开关
   			var switchs = map.switchs;
   			for(var i=0;i<switchs.length;i++){
				var s = switchs[i];
				//开关
				if(s.type!=4)
  				{	
					
  					var img=jQuery("image[id='switch-"+s.id+"']");
	   				var imageUri = img.attr("xlink:href");
	   				var arrXlink = imageUri.split("_");
	   		   		var arrColor = arrXlink[1].split(".");
	   		   		var oldColor = arrColor[0];
	   		   		var newColor=StatusArr[s.status-10];
	   		 	 	img.attr("xlink:href",imageUri.replace(oldColor,newColor));
	   		 		if(s.id=="MF911"||s.id=="MF912"||s.id=="MF921"||s.id=="MF922"){
	   		 			if(s.status==10){
	   		 				$("#WDKBZ").attr("xlink:href","/images/wd_open.gif");
	   		 			}
	   		 		}
  				}
				//变电站
				else if(s.type==4){
					var img=jQuery("#ST_"+s.id);
	   				var imageUri = img.attr("xlink:href");
	   				var arrXlink = imageUri.split("_");
	   		   		var arrColor = arrXlink[2].split(".");
	   		   		var oldColor = arrColor[0];
	   		   		var newColor=StatusArr[s.status-10];
	   		 	 	img.attr("xlink:href",imageUri.replace(oldColor,newColor)); 
				}
  				
					
   			} 
   			
   			//显示所有线路
   			var lines = map.lines;
   			if(lines !=null){
					for(var i=0;i<lines.length;i++){
						var line = lines[i];
						if(line.status==4){//表示电线上有电
							jQuery("#line-"+line.id).attr("stroke",Color.CLOSE);
						}else if(line.status==5){//表示电线上没电
					    	jQuery("#line-"+line.id).attr("stroke",Color.OPEN);
						}
						else if(line.status==6){//表示电线上没电
					    	jQuery("#line-"+line.id).attr("stroke",Color.UNUSE);
						}
						else if(line.status==7){//表示电线上没电
					    	jQuery("#line-"+line.id).attr("stroke",Color.RESERVE);
						}
					}
				}
   			
   		}
   	});
	jQuery("#glass").slideUp(500);
   	jQuery("#container").draggable();
	$(".window").each(function(i){
		$(this).remove();
	});
});

</script>
</html>