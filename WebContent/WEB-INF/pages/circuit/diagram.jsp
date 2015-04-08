﻿<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11-flat-20030114.dtd">
<!-- Created by SVGDeveloper 1.0 -->
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


<div id="toobar" style="overflow:hidden;position:relative;top:0px;left:0px;">
<input id="inputText" type="text" value="开关编号" class="easyui-textbox" /> <button id="findButton"  onclick="find()" width="50" height="30" class="easyui-linkbutton" >查找开关</button>
<a id="sendMessageBt"  onclick="sendMsg()" class="easyui-linkbutton">发布通知</a>  
</div>

<div id="outDiv"  style="background:#000;overflow:hidden;position:relative;left:0px;width:1500px;height:600px;top:30px;border:1px solid gray;">
<div id="glass" class="glass" style="display:none;">正在玩儿命计算...</div>

<div id="container" style="overflow:hidden;position:relative;left:0px;top:50px;">
  <svg id="cableDiagram" viewBox="0 0 1599 899" width="1599" height="899" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" fill="none" style="background-color:black"> 

   <line x1="583" y1="563.5" x2="518" y2="563.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,1,44.18,55.49997)" id="line-92" title="棉纺922线" xmlns="http://www.w3.org/2000/svg" />
   <rect x="373" y="583.5" width="49" height="36.5" fill="none" fill-opacity="0" stroke="#27fb06" transform="matrix(1,0,0,1.27,34.6,-125.167)" xmlns="http://www.w3.org/2000/svg" /> 
   <line x1="429.7999" y1="657.9999" x2="429.7999" y2="687.3999" stroke="#27fb06" transform="matrix(1,0,0,1.04,0,-27.52)" id="line-98" title="青山925线" /> 
   <line x1="344.5" y1="335" x2="344.5" y2="348.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.194,14.585)" id="line-2012" title="迎春915线" /> 
   <line x1="335" y1="330.5" x2="315.5" y2="330.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,11.361,10.04)" id="line-2013" title="迎春915线" /> 
   <line x1="328.5" y1="229" x2="360.5" y2="229" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,57.361,10.085)" id="line-12" title="北重912线" /> 
   <line x1="328.5" y1="229" x2="360.5" y2="229" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-13" title="北重912线" /> 
   <line x1="278.5" y1="301" x2="318" y2="301" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-1019" title="迎春915线" /> 
   <line x1="279.5" y1="277" x2="279.5" y2="290.5" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.97,7.204,26.455)" id="line-23" title="迎春915线" /> 
   <line x1="319.5" y1="391.5" x2="319.5" y2="351.5" stroke="#27fb06" stroke-dasharray="4,4" transform="matrix(0.98,0,0,0.65,6.694,117.624)" id="line-1041" title="迎春926线" /> 
   <line x1="232.5" y1="368.5" x2="249.5" y2="368.5" stroke="#27fb06" id="line-48" title="迎春926线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="199.5" y1="367.5" x2="215.5" y2="367.5" stroke="#27fb06" id="line-10" title="南排913线" transform="matrix(1,0,0,1,32.333,33)" /> 
   <line x1="280" y1="270.5" x2="256" y2="270.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.047,9.965)" id="line-1017" title="北重918线" /> 
   <line x1="278.5" y1="260.5" x2="302" y2="260.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-1015" title="北重918线" /> 
   <line x1="280" y1="270.5" x2="256" y2="270.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,69.214,0.465)" id="line-1016" title="北重918线" /> 
   <line x1="432.5" y1="87" x2="432.5" y2="67" stroke="#27fb06" transform="matrix(1,0,0,1,32.833,-16.333)" id="line-2006" title="青北934线" /> 
   <line x1="432.5" y1="87" x2="432.5" y2="67" stroke="#27fb06" transform="matrix(1,0,0,1,14,-16.5)" id="line-2008" title="青北934线" /> 
   <line x1="432.5" y1="87" x2="432.5" y2="67" stroke="#27fb06" transform="matrix(1,0,0,1,-23,-17.667)" id="line-2010" title="青北934线" /> 
   <line x1="198.5" y1="183" x2="198.5" y2="162" stroke="#27fb06" transform="matrix(0.98,0,0,0.686,7.694,57.02)" id="line-1014" title="北重912线" /> 
   <line x1="504" y1="91" x2="469.5" y2="91" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.69,0,0,0.97,31.28,30.668)" id="line-1038" title="青北934线" /> 
   <line x1="504" y1="91" x2="469.5" y2="91" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.69,0,0,0.97,-10.22,30.835)" id="line-1039" title="青北934线" /> 
   <line x1="199.5" y1="355.5" x2="219.5" y2="355.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,46.86,-18.535)" id="line-2004" title="南排913线" /> 
   <line x1="199.5" y1="365" x2="199.5" y2="330.5" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.514,9.194,149.294)" id="line-1006" title="南排913线" /> 
   <line x1="199.5" y1="308.5" x2="199.5" y2="320" stroke="#27fb06" transform="matrix(0.98,0,0,1.127,9.193978,-86.325)" id="line-1007" title="南排913线" /> 
   <line x1="184" y1="302.5" x2="197" y2="302.5" stroke="#27fb06" stroke-opacity="1" transform="matrix(1.009,0,0,0.9699998,5.828963,-31.535)" id="line-1008" title="南排913线" /> 
   <line x1="142" y1="302.5" x2="166.5" y2="302.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,9.860985,-30.535)" id="line-1009" title="南排913线" /> 
   <line x1="102" y1="303" x2="124.5" y2="303" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,9.193994,-30.535)" id="line-1010" title="南排913线" /> 
   <line x1="63.5" y1="298" x2="63.5" y2="293" stroke="#27fb06" transform="matrix(1,0,0,1.5,31.333,-103.917)" id="line-2" title="南排912线" /> 
   <line x1="60.5" y1="348" x2="60.5" y2="309" stroke="#27fb06" transform="matrix(1,0,0,0.356,34.167,250.129)" id="line-1" title="南排912线" /> 
   <line x1="46.66663" y1="152" x2="46.66663" y2="168" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.369,49.671,230.449)" id="line-4" title="南排912线" /> 
   <line x1="65" y1="208.5" x2="65" y2="217.5" stroke="#27fb06" id="line-6" title="南排912线" transform="matrix(1,0,0,0.513,32,132.544)" /> 
   <line x1="64" y1="232.5" x2="64" y2="241" stroke="#27fb06" id="line-5" title="南排912线" transform="matrix(1,0,0,0.603,32.333,122.279)" /> 
   <line x1="220.5" y1="238.5" x2="220.5" y2="248.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.204,15.025)" id="line-1012" title="北重912线" /> 
   <line x1="220" y1="208" x2="220" y2="226" stroke="#27fb06" transform="matrix(0.98,0,0,0.902,7.694,24.02)" id="line-1011" title="北重912线" /> 
   <line x1="488" y1="130.5" x2="651.5" y2="130.5" stroke="#27fb06" transform="matrix(0.92,0,0,1,84.827,31.667)" id="line-38" title="青北934线" /> 
   <line x1="180" y1="208" x2="260.5" y2="208" stroke="#27fb06" transform="matrix(0.907,0,0,0.97,26.753,9.965)" id="line-16" title="北重912线" /> 
   <line x1="121.5" y1="181" x2="141" y2="181" stroke="#27fb06" id="line-17" title="北重912线" transform="matrix(0.7899999,0,0,0.9999999,59.89597,30.99999)" /> 
   <line x1="44.66663" y1="67.33333" x2="44.66663" y2="85.99999" stroke="#27fb06" transform="matrix(0.98,0,0,0.957,71.884,30.904)" id="line-1004" title="南排912线" /> 
   <line x1="46.66663" y1="152" x2="46.66663" y2="168" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.459,49.338,240.645)" id="line-3" title="南排912线" /> 
   <line x1="1339.5" y1="367.5" x2="1339.5" y2="367.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,45.914,30.335)" /> 
   <line x1="1100" y1="179" x2="1320" y2="179" stroke="#27fb06" transform="matrix(0.916,0,0,0.97,40.335,50.22)" id="line-284" title="青园913线" /> 
   <path d="M 1121 190.25 L 1120.5 192.875 L 1119.063 195.0625 L 1116.875 196.5 L 1114.25 197 L 1111.625 196.5 L 1109.5 195.0625 L 1108.063 192.875 L 1107.5 190.25 L 1108.063 187.625 L 1109.5 185.5 L 1111.625 184.0625 L 1114.25 183.5 L 1116.875 184.0625 L 1119.063 185.5 L 1120.5 187.625 L 1121 190.25 ZM 1121 200.25 L 1120.5 202.875 L 1119.063 205.0625 L 1116.875 206.5 L 1114.25 207 L 1111.625 206.5 L 1109.5 205.0625 L 1108.063 202.875 L 1107.5 200.25 L 1108.063 197.625 L 1109.5 195.5 L 1111.625 194.0625 L 1114.25 193.5 L 1116.875 194.0625 L 1119.063 195.5 L 1120.5 197.625 L 1121 200.25 Z" fill="none" stroke="#27fb06" transform="matrix(0.8679999,0,0,0.9699999,74.87434,27.215)" /> 
   <text x="1096" y="173.5" xml:space="preserve" font-family="宋体" font-size="8" stroke="#27fb06" stroke-width="0.25" transform="matrix(0.868,0,0,0.97,72.46,33.368)" fill="#27fb06">
     2# 站用变
   </text> 
   <line x1="1065" y1="164.5" x2="765" y2="164.5" stroke="#27fb06" transform="matrix(0.73,0,0,0.97,198.112,55.285)" id="line-385" title="厂前913线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,88.061,70.914)">
     厂前913线
   </text> 
   <line x1="610.3333" y1="165.3333" x2="685.3333" y2="165.3333" stroke="#27fb06" transform="matrix(0.717,0,0,0.97,247.0416,54.747)" id="line-384" title="厂前913线" /> 
   <path d="M 1121 190.25 L 1120.5 192.875 L 1119.063 195.0625 L 1116.875 196.5 L 1114.25 197 L 1111.625 196.5 L 1109.5 195.0625 L 1108.063 192.875 L 1107.5 190.25 L 1108.063 187.625 L 1109.5 185.5 L 1111.625 184.0625 L 1114.25 183.5 L 1116.875 184.0625 L 1119.063 185.5 L 1120.5 187.625 L 1121 190.25 ZM 1121 200.25 L 1120.5 202.875 L 1119.063 205.0625 L 1116.875 206.5 L 1114.25 207 L 1111.625 206.5 L 1109.5 205.0625 L 1108.063 202.875 L 1107.5 200.25 L 1108.063 197.625 L 1109.5 195.5 L 1111.625 194.0625 L 1114.25 193.5 L 1116.875 194.0625 L 1119.063 195.5 L 1120.5 197.625 L 1121 200.25 Z" fill="none" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,12.246,24.353)" /> 
   <text x="1096" y="173.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-11.022,31.536)">
     1# 站用变
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,316.491,1.406)">
     25
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-10.412,3.397)">
     青北943线
   </text> 
   <line x1="156.5" y1="137.5" x2="156.5" y2="110.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.691,77.217,66.584)" id="line-1030" title="北重916线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-171.728,18.917)">
     青北934线
   </text> 
   <line x1="937.5" y1="128" x2="1046" y2="128" stroke="#27fb06" transform="matrix(0.61,0,0,0.97,318.151,22.438)" id="line-43" title="青北943线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,69.989,19.532)">
     2114
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,176.671,9.141)">
     -1
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,233.764,8.309)">
     -2
   </text> 
   <line x1="723.5" y1="190.5" x2="723.5" y2="271" stroke="#27fb06" transform="matrix(0.8679999,0,0,0.66,56.91396,74.80164)" id="line-383" title="厂前913线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-83.135,69.297)">
     944-7
   </text> 
   <line x1="774" y1="217" x2="789" y2="217" stroke="#27fb06" transform="matrix(1.397,0,0,0.97,-363.437,30.335)" id="line-380" title="厂前922线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-38.59,95.547)">
     922-7
   </text> 
   <line x1="1073" y1="256.5" x2="1073" y2="221" stroke="#27fb06" transform="matrix(0.868,0,0,1.223,44.444,-22.025)" id="line-375" title="厂前929线" /> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,323.445,110.36)">
     40
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,327.242,153.515)">
     26
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,112.612,140.605)">
     918-7
   </text> 
   <line x1="897.7999" y1="126.6" x2="903.0665" y2="126.6" stroke="#27fb06" transform="matrix(4.579,0,0,0.97,-3260.552,138.505)" id="line-376" title="厂前917线" /> 
   <line x1="950.5" y1="209" x2="950.5" y2="195.5" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.868,0,0,1.096,45.914,6.565)" id="line-1129" title="厂前917线" /> 
   <line x1="950" y1="200" x2="991" y2="200" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,45.914,36.64)" id="line-1130" title="厂前917线" /> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,218.72,85.928)">
     -2
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,267.427,86.595)">
     -5
   </text> 
   <line x1="1027.5" y1="238" x2="1027.5" y2="268.5" stroke="#27fb06" transform="matrix(0.868,0,0,1.08,42.444,5.151)" id="line-379" title="厂前917线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,165.986,165.709)">
     2265
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,133.363,225.737)">
     2266
   </text> 
   <line x1="716" y1="159.5" x2="716" y2="220" stroke="#27fb06" transform="matrix(0.868,0,0,1.278,45.914,-18.69)" id="line-45" title="青北933线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-198.635,134.457)">
     2207
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-158.617,128.367)">
     青北933线
   </text> 
   <line x1="596" y1="220.5" x2="549.5" y2="220.5" stroke="#27fb06" transform="matrix(0.955,0,0,0.97,6.836,47.69)" id="line-36" title="北重911线" /> 
   <line x1="580.5" y1="220" x2="580.5" y2="201" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,58.914,47.79)" id="line-1032" title="北重911线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-205.872,95.18)">
     2127
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.8679999,0,0,0.97,-234.3443,127.902)">
     北重911线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-256.238,13.537)">
     2221
   </text> 
   <line x1="643.5" y1="44" x2="668.5" y2="44" stroke="#27fb06" stroke-opacity="1" transform="matrix(2.526,0,0,0.97,-1040.028,40.035)" id="line-28" title="北重915线" /> 
   <line x1="692.5" y1="44" x2="811.5" y2="44" stroke="#27fb06" transform="matrix(0.703,0,0,0.97,179.405,40.035)" id="line-29" title="北重915线" /> 
   <line x1="658.5" y1="44" x2="658.5" y2="28.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.786,46.783,48.328)" id="line-1020" title="北重915线" /> 
   <line x1="658.5" y1="44" x2="658.5" y2="28.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,47.116,10.83)" id="line-1021" title="北重915线" /> 
   <text x="881.9999" y="145.3333" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-205.822,-63.715)">
     2220
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-125.321,-67.003)">
     2253
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-146.881,-76.203)">
     2273
   </text> 
   <line x1="750" y1="53.5" x2="750" y2="39.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,45.914,30.335)" id="line-1022" title="北重915线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-70.705,-78.933)">
     2274
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,52.143,-55.995)">
     90
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,11.5,-50.16)">
     48
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-27.435,-56.48)">
     47
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-66.014,-48.69)">
     45
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-40.732,-81.34)">
     -6
   </text> 
   <line x1="556.5" y1="135" x2="556.5" y2="90" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,80.414,30.835)" id="line-1034" title="青北934线" /> 
   <line x1="556.5" y1="90.5" x2="530.5" y2="90.5" stroke="#27fb06" transform="matrix(2.255,0,0,0.97,-691.19,30.335)" id="line-1035" title="青北934线" /> 
   <line x1="504" y1="91" x2="469.5" y2="91" stroke="#27fb06" stroke-opacity="1" transform="matrix(1.41,0,0,0.97,-222.876,30.335)" id="line-1036" title="青北934线" /> 
   <line x1="504" y1="91" x2="469.5" y2="91" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.69,0,0,0.97,73.28,30.335)" id="line-1037" title="青北934线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-262.653,-24.793)">
     青北934线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-287.421,-8.598)">
     2137
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-354.06,-8.128)">
     2183
   </text> 
   <line x1="723.5" y1="244" x2="775.5" y2="244" stroke="#27fb06" transform="matrix(1.042,0,0,0.97,-69.318,16.335)" id="line-382" title="厂前913线" /> 
   <line x1="774" y1="217.5" x2="774" y2="179.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.551,45.914,120.864)" id="line-381" title="厂前922线" /> 
   <line x1="741.5" y1="127.5" x2="854.5" y2="127.5" stroke="#27fb06" transform="matrix(0.622,0,0,0.97,284.321,22.59)" id="line-40" title="青北943线" /> 
   <line x1="871" y1="272" x2="819.5" y2="272" stroke="#27fb06" transform="matrix(1.094,0,0,0.97,-138.713,38.398)" id="line-366" title="厂前9211线" /> 
   <line x1="819.5" y1="272" x2="819.5" y2="349.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.849,46.349,71.141)" id="line-367" title="厂前9211线" /> 
   <line x1="820" y1="350" x2="749.5" y2="350" stroke="#27fb06" transform="matrix(0.8679999,0,0,0.9699999,45.91397,27.96999)" id="line-368" title="厂前9211线" /> 
   <line x1="750" y1="349.5" x2="750" y2="384" stroke="#27fb06" transform="matrix(0.868,0,0,0.882,45.914,59.408)" id="line-369" title="厂前9211线" /> 
   <line x1="871" y1="272" x2="819.5" y2="272" stroke="#27fb06" transform="matrix(0.994,0,0,0.97,-62.686,32.76)" id="line-361" title="厂前919线" /> 
   <line x1="819.5" y1="272" x2="819.5" y2="349.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.834,40.273,69.484)" id="line-362" title="厂前919线" /> 
   <line x1="820" y1="350" x2="749.5" y2="350" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,39.839,21.12)" id="line-363" title="厂前919线" /> 
   <line x1="750" y1="349.5" x2="750" y2="384" stroke="#27fb06" transform="matrix(0.868,0,0,1.111,39.839,-27.689)" id="line-364" title="厂前919线" /> 
   <line x1="536" y1="350" x2="536" y2="370" stroke="#27fb06" transform="matrix(0.868,0,0,1.62,41.837,-203.197)" id="line-59" title="迎春927线" /> 
   <line x1="716.5" y1="309.5" x2="716.5" y2="297" stroke="#27fb06" stroke-dasharray="2,2" transform="matrix(0.868,0,0,1.193,45.914,-38.826)" id="line-339" title="厂前924线" /> 
   <line x1="716.5" y1="281" x2="716.5" y2="253" stroke="#27fb06" transform="matrix(0.868,0,0,0.854,45.914,59.784)" id="line-338" title="厂前924线" /> 
   <line x1="716" y1="253.5" x2="839.5" y2="253.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,45.914,30.335)" id="line-337" title="厂前924线" /> 
   <line x1="850.5" y1="258" x2="740" y2="258" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.903,0,0,0.97,20.213,37.61)" id="line-352" title="厂前915线" /> 
   <line x1="910" y1="797.5" x2="910" y2="660.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.974,125.323,56.236)" id="line-390" title="幸福917线" /> 
   <line x1="822" y1="773" x2="900" y2="773" stroke="#fffe01" transform="matrix(1.172,0,0,0.97,-144.192,57.495)" id="line-386" title="幸福919线" /> 
   <line x1="899" y1="773" x2="899" y2="660" stroke="#fffe01" transform="matrix(0.868,0,0,1.116,129.661,-55.868)" id="line-387" title="幸福919线" /> 
   <line x1="898.5" y1="730" x2="879.5" y2="730" stroke="#fffe01" transform="matrix(1.077,0,0,0.97,-57.35,58.162)" id="line-1131" title="幸福919线" /> 
   <line x1="855.5" y1="731" x2="764.5" y2="731" stroke="#fffe01" stroke-opacity="1" transform="matrix(0.608,0,0,0.97,352.13,57.495)" id="line-1132" title="幸福919线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,97.535,639.845)">
     2126
   </text> 
   <line x1="856.5" y1="799" x2="910" y2="799" stroke="#27fb06" transform="matrix(1.312,0,0,0.97,-278.331,57.495)" id="line-389" title="幸福917线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,54.88,686.918)">
     917-7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,21.22,677.417)">
     919-7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,27.701,629.5)">
     -26
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,98.909,663.662)">
     幸福919线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,100.588,517.577)">
     2272
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,119.834,510.672)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,126.215,632.865)">
     47
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,81.749,506.342)">
     46
   </text> 
   <circle cx="902.25" cy="658.75" r="6.25" fill="none" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,129.228,55.555)" /> 
   <circle cx="902.25" cy="658.75" r="6.25" fill="none" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,82.798,55.07)" /> 
   <line x1="850" y1="651" x2="901" y2="651" stroke="#fffe01" transform="matrix(0.853,0,0,0.97,141.287,57.348)" id="line-391" title="幸福919线" /> 
   <line x1="849.5" y1="663.5" x2="899" y2="663.5" stroke="#27fb06" transform="matrix(0.981,0,0,0.97,33.427,56.525)" id="line-396" title="幸福917线" /> 
   <line x1="960.5" y1="656" x2="960.5" y2="569.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.977,127.36,51.309)" id="line-192" title="青山925线" /> 
   <circle cx="959.75" cy="563.25" r="5.75" fill="none" stroke="#27fb06" transform="matrix(0.729,0,0,0.64,263.428,243.74)" stroke-width="2" /> 
   <rect x="879.5" y="519.5" width="45.5" height="14" fill="none" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.868,0,0,0.97,51.121,57.495)" /> 
   <text x="891.5" y="526.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,39.664,60.557)" stroke-width="0.25">
     电视台
   </text> 
   <line x1="890" y1="561.5" x2="890" y2="591" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.868,0,0,0.912,45.914,63.043)" id="line-1066" title="棉纺9112线" stroke-dasharray="4,4" /> 
   <line x1="784" y1="590" x2="890.5" y2="590" stroke="#27fb06" transform="matrix(0.706,0,0,0.97,194.11,30.335)" id="line-178" title="棉纺9112线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,185.494,455.84)">
     22
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,47.643,452.445)">
     2282
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-45.919,477.945)">
     2219
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-43.409,514.628)">
     2160
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,6.001,521.842)">
     2159
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,14.98,499.292)">
     2112
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-31.93,500.055)">
     2284
   </text> 
   <line x1="947.3333" y1="678.9999" x2="947.3333" y2="604.6666" stroke="#fffe01" transform="matrix(0.868,0,0,0.785,43.58,155.807)" id="line-392" title="幸福919线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,185.913,596.813)">
     2208
   </text> 
   <line x1="1073.333" y1="714.9999" x2="1172.333" y2="714.9999" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.833,0,0,0.97,83.169,30.335)" id="line-256" title="青山917线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,291.579,537.267)">
     2256
   </text> 
   <line x1="960.5" y1="656" x2="960.5" y2="569.5" stroke="#27fb06" transform="matrix(0.868,0,0,1.047,130.72,11.035)" id="line-187" title="青山926线" /> 
   <line x1="1136.5" y1="620" x2="1136.5" y2="691.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.763,45.914,179.757)" id="line-206" title="青山916线" /> 
   <line x1="1136.5" y1="683.5" x2="1231" y2="683.5" stroke="#27fb06" transform="matrix(0.634,0,0,0.97,312.468,30.335)" id="line-207" title="青山916线" /> 
   <line x1="1231" y1="683" x2="1231" y2="829.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.559,24.354,365.853)" id="line-209" title="青山916线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,289.645,511.05)">
     916-7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,251.787,556.035)">
     7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,248.611,568.665)">
     -3
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,216.737,580.045)">
     青山917线
   </text> 
   <line x1="1229.5" y1="683" x2="1229.5" y2="704" stroke="#27fb06" transform="matrix(0.868,0,0,1.673,25.656,-449.127)" id="line-208" title="青山916线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,327.608,599.723)">
     2124
   </text> 
   <line x1="1230.5" y1="809.5" x2="1209.5" y2="809.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,24.354,24.515)" id="line-1075" title="青山916线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,283.883,682.348)">
     2122
   </text> 
   <line x1="1230.5" y1="809.5" x2="1209.5" y2="809.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,-12.137,24.999)" id="line-1076" title="青山916线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,254.777,672.635)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,321.492,671.665)">
     20
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,301.352,599.563)">
     14
   </text> 
   <line x1="1238" y1="601" x2="1238" y2="622" stroke="#27fb06" transform="matrix(0.868,0,0,0.844,41.014,152.24)" stroke-dasharray="3,3" id="line-199" title="青山928线" /> 
   <line x1="1183" y1="563" x2="1115.5" y2="563" stroke="#27fb06" transform="matrix(1.107,0,0,0.97,-221.093,45.295)" id="line-227" title="青山927线" /> 
   <line x1="1115" y1="562.5" x2="1115" y2="437.5" stroke="#27fb06" transform="matrix(0.868,0,0,1.276,45.914,-125.894)" id="line-228" title="青山927线" /> 
   <line x1="1106.5" y1="432" x2="1106.5" y2="569.5" stroke="#27fb06" transform="matrix(0.868,0,0,1.077,45.914,-15.759)" id="line-224" title="青山913线" /> 
   <line x1="1106" y1="569.5" x2="1181.5" y2="569.5" stroke="#27fb06" transform="matrix(0.938,0,0,0.97,-30.421,44.885)" id="line-223" title="青山913线" /> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,19.536,34.215)" stroke-width="0.25">
     青山927线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,19.649,51.675)" stroke-width="0.25">
     青山913线
   </text> 
   <line x1="1026" y1="433" x2="1107" y2="433" stroke="#27fb06" transform="matrix(1.67,0,0,0.97,-841.758,29.85)" id="line-225" title="青山913线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-10.396,291.896)">
     2218
   </text> 
   <line x1="983.5" y1="425.5" x2="1115" y2="425.5" stroke="#27fb06" transform="matrix(1.78,0,0,0.97,-970.624,30.335)" id="line-229" title="青山927线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-34.066,277.942)">
     2269
   </text> 
   <line x1="539" y1="424" x2="605" y2="424" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,46.404,31.305)" id="line-70" title="迎春928线" /> 
   <line x1="885" y1="423.5" x2="915.5" y2="423.5" stroke="#27fb06" transform="matrix(2.092,0,0,0.97,-1153.596,31.305)" id="line-230" title="青山927线" /> 
   <line x1="679.5" y1="423.5" x2="679.5" y2="404.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.786,45.914,108.963)" id="line-1048" title="迎春928线" /> 
   <line x1="680" y1="389" x2="680" y2="372.5" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,45.914,31.655)" id="line-1049" title="迎春928线" /> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-390.448,34.215)" stroke-width="0.25">
     迎春928线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-389.903,49.735)" stroke-width="0.25">
     迎春911线
   </text> 
   <line x1="533" y1="432" x2="607" y2="432" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,46.404,29.365)" id="line-74" title="迎春911线" /> 
   <line x1="936.5" y1="434" x2="956" y2="434" stroke="#27fb06" transform="matrix(1.868,0,0,0.97,-1006.608,29.33498)" id="line-76" title="迎春911线" /> 
   <line x1="979" y1="434" x2="1002" y2="434" stroke="#27fb06" transform="matrix(0.8679999,0,0,0.97,-53.21606,29.30466)" id="line-77" title="迎春911线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,42.827,324.846)">
     2212
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-48.189,324.346)">
     2267
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-93.751,291.427)">
     2223
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-201.809,290.457)">
     2259
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-201.431,324.891)">
     2204
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-164.379,281.242)">
     2231
   </text> 
   <line x1="540" y1="376" x2="540" y2="358" stroke="#27fb06" transform="matrix(0.868,0,0,1.037,43.954,17.956)" id="line-64" title="迎春913线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-17.573,261.717)">
     2230
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-257.349,219.162)">
     2133
   </text> 
   <rect x="438.5" y="286.5" width="35" height="13.5" fill="none" stroke="#27fb06" transform="matrix(0,-0.972,0.97,0,118.034,766.092)" /> 
   <line x1="480" y1="334" x2="480" y2="277" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.868,0,0,1.403,41.994,-102.532)" id="line-51" title="迎春915线" /> 
   <line x1="462" y1="334" x2="462" y2="293" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.868,0,0,1.22,48.854,-41.414)" id="line-87" title="迎春918线" /> 
   <line x1="445.5" y1="292.5" x2="462" y2="292.5" stroke="#27fb06" transform="matrix(1.912,0,0,0.97,-442.351,29.85)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-308.247,137.682)">
     2121
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,63.274,368.211)">
     青山914线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,62.686,386.155)">
     青山923线
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,84.937,14.322)" stroke-width="0.25">
     2158
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,59.914,15.209)" stroke-width="0.25">
     -1
   </text> 
   <line x1="120.5" y1="111.5" x2="120.5" y2="128.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.021,95.077,-6.011)" id="line-1031" title="北重916线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,69.954,47.472)" stroke-width="0.25">
     118
   </text> 
   <line x1="157.3333" y1="137.3333" x2="310.6666" y2="137.3333" stroke="#27fb06" transform="matrix(0.676,0,0,0.97,76.282,28.062)" id="line-34" title="北重916线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,150.204,54.769)" stroke-width="0.25">
     2143
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,155.193,32.751)" stroke-width="0.25">
     91
   </text> 
   <line x1="319.3333" y1="139.6667" x2="399.9999" y2="139.6667" stroke="#27fb06" transform="matrix(0.941,0,0,0.97,4.885,26.455)" id="line-33" title="北重916线" /> 
   <line x1="120.5" y1="111.5" x2="120.5" y2="128.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.021,217.751,77.371)" id="line-1029" title="北重916线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,206.342,64.092)" stroke-width="0.25">
     2152
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,182.373,66.101)" stroke-width="0.25">
     -1
   </text> 
   <line x1="120.5" y1="111.5" x2="120.5" y2="128.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.715,217.251,82.165)" id="line-1028" title="北重916线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,194.259,39.894)" stroke-width="0.25">
     67
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,250.628,31.918)" stroke-width="0.25">
     62
   </text> 
   <line x1="409.9999" y1="139" x2="570.3333" y2="139" stroke="#27fb06" transform="matrix(0.728,0,0,0.97,101.067,26.617)" id="line-32" title="北重916线" /> 
   <text x="480.6" y="135.3" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-68.085,28.102)" stroke-width="0.25">
     北重916线
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-13.263,1.155)" stroke-width="0.25">
     2156
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-40.529,2.974)" stroke-width="0.25">
     194
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-3.343,13.37)" stroke-width="0.25">
     2275
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-33.559,24.545)" stroke-width="0.25">
     175
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-12.353,41.258)" stroke-width="0.25">
     2128
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-41.196,43.438)" stroke-width="0.25">
     146
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-11.849,69.418)" stroke-width="0.25">
     2117
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-39.399,72.205)" stroke-width="0.25">
     108
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-26.438,98.893)" stroke-width="0.25">
     105
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-31.069,111.626)" stroke-width="0.25">
     2249
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-55.195,112.645)" stroke-width="0.25">
     95
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,1.29,81.917)" stroke-width="0.25">
     2215
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,40.725,100.618)" stroke-width="0.25">
     -1
   </text> 
   <rect x="25.33" y="39.33" width="103.34" height="29.34" fill="none" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.97,71.884,29.042)" /> 
   <text x="82.5" y="81" xml:space="preserve" font-family="宋体" font-size="10" fill="#27fb06" fill-opacity="1" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,16.417,5.429)" stroke-width="0.25">
     水 库 配 电 室
   </text> 
   <line x1="99.33329" y1="120.6667" x2="99.33329" y2="120.6667" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,45.914,30.335)" /> 
   <line x1="45.99997" y1="104.6667" x2="45.99997" y2="145.3333" stroke="#27fb06" transform="matrix(0.98,0,0,0.547,70.74,72.953)" id="line-1003" title="南排912线" /> 
   <line x1="45.3333" y1="120" x2="58.66663" y2="120" stroke="#27fb06" stroke-opacity="1" transform="matrix(1.205,0,0,0.97,60.873,26.94)" id="line-2001" title="南排912线" /> 
   <line x1="77.3333" y1="119.3333" x2="98.66663" y2="119.3333" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.97,74.824,27.425)" id="line-2002" title="南排912线" /> 
   <line x1="46.66663" y1="152" x2="46.66663" y2="168" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.623,70.741,75.441)" id="line-1002" title="南排912线" /> 
   <line x1="132.6666" y1="183.3333" x2="132.6666" y2="183.3333" stroke="none" stroke-opacity="0" stroke-width="1.25" transform="matrix(0.98,0,0,0.97,45.914,30.335)" /> 
   <line x1="46.66663" y1="152" x2="46.66663" y2="168" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.855,70.251,68.734)" id="line-1001" title="南排912线" /> 
   <line x1="17.5" y1="190" x2="73.5" y2="190" stroke="#27fb06" transform="matrix(0.7249999,0,0,0.9699999,84.05499,27.57667)" id="line-8" title="南排912线" /> 
   <line x1="46.66663" y1="152" x2="46.66663" y2="168" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.652,51.141,112.509)" id="line-7" title="南排912线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-56.026,156.597)" stroke-width="0.25">
     73
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-32.682,158.426)" stroke-width="0.25">
     2250
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-46.105,207.914)" stroke-width="0.25">
     2209
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-59.272,206.399)" stroke-width="0.25">
     34
   </text> 
   <text x="144.6" y="301.3" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-opacity="1" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-3.435,104.185)" stroke-width="0.25">
     南排913线
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,61.104,284.547)" stroke-width="0.25">
     44
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,69.938,288.604)" stroke-width="0.25">
     -1
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,99.585,270.592)" stroke-width="0.25">
     2248
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,137.454,288.83)" stroke-width="0.25">
     -2
   </text> 
   <line x1="120.5" y1="111.5" x2="120.5" y2="128.5" stroke="#27fb06" transform="matrix(0.98,0,0,3.807,65.024,-328.321)" id="line-35" title="北重916线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,245.915,54.96)" stroke-width="0.25">
     2103
   </text> 
   <line x1="198" y1="207.5" x2="198" y2="194.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.821,7.694,41.041)" id="line-1013" title="北重912线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,53.244,58.836)" stroke-width="0.25">
     207
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,59.862,97.893)" stroke-width="0.25">
     109
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,94.637,117.523)" stroke-width="0.25">
     2148
   </text> 
   <line x1="259.5" y1="208" x2="259.5" y2="228.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.184,10.45)" id="line-15" title="北重912线" /> 
   <line x1="260" y1="227.5" x2="292.5" y2="227.5" stroke="#27fb06" transform="matrix(1.509,0,0,0.97,-129.858,10.935)" id="line-14" title="北重912线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,174.704,125.556)" stroke-width="0.25">
     2235
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,224.527,125.071)" stroke-width="0.25">
     2251
   </text> 
   <line x1="426.5" y1="229.5" x2="481" y2="229.5" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.724,0,0,0.97,120.131,10.978)" id="line-11" title="北重912线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,275.134,124.979)" stroke-width="0.25">
     2206
   </text> 
   <line x1="479.5" y1="210.5" x2="428" y2="210.5" stroke="#27fb06" transform="matrix(1.925,0,0,0.97,-445.759,10.42)" id="line-19" title="北重918线" /> 
   <line x1="358" y1="210.5" x2="278" y2="210.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-20" title="北重918线" /> 
   <line x1="278.5" y1="210.5" x2="278.5" y2="249" stroke="#27fb06" transform="matrix(0.98,0,0,0.639,7.694,79.765)" id="line-21" title="北重918线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,152.124,127.981)" stroke-width="0.25">
     2142
   </text> 
   <line x1="279" y1="251.5" x2="279" y2="264.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.485,7.694,-116.687)" id="line-22" title="北重918线" fill="#27fb06" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,153.124,167.116)" stroke-width="0.25">
     2295
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,153.457,199.896)" stroke-width="0.25">
     2175
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,171.004,155.516)" stroke-width="0.25">
     2186
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,104.967,166.508)" stroke-width="0.25">
     2187
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,128.679,129.448)" stroke-width="0.25">
     94
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,109.942,143.362)" stroke-width="0.25">
     -1
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,125.445,166.402)" stroke-width="0.25">
     133
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,186.737,173.571)" stroke-width="0.25">
     99
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,223.391,85.634)" stroke-width="0.25">
     2264
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,243.297,91.806)" stroke-width="0.25">
     48
   </text> 
   <line x1="673" y1="181.5" x2="690.5" y2="181.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.48)" id="line-44" title="青北933线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-35.851,66.872)">
     2247
   </text> 
   <line x1="822" y1="302.5" x2="822" y2="275.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.194,9.298)" id="line-365" title="厂前9211线" /> 
   <line x1="810.5" y1="275.5" x2="810.5" y2="296" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.194,9.965)" id="line-360" title="厂前919线" /> 
   <line x1="796" y1="275" x2="796" y2="287" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.98,0,0,0.97,7.694,9.465)" id="line-351" title="厂前915线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,39.533,159.992)">
     厂前9211
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-15.837,153.687)">
     厂前919
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,102.909,103.378)">
     2129
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,213.087,99.63)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,124.299,112.462)">
     2233
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,235.834,121.602)">
     -2
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,281.908,122.42)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,203.683,134.287)">
     厂前918线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,203.193,143.017)">
     厂前928线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,203.193,150.777)">
     厂前929线
   </text> 
   <line x1="1038.5" y1="247" x2="1038.5" y2="275" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,-4.556,27.425)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,242.393,136.227)">
     三回线路
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,241.903,146.412)">
     同杆并架
   </text> 
   <line x1="1028" y1="246.5" x2="1023.5" y2="242" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,5.734,28.395)" /> 
   <line x1="1027.5" y1="272.5" x2="1022" y2="277.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,6.401,29.365)" /> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,276.834,159.663)">
     21
   </text> 
   <line x1="199.5" y1="401.5" x2="199.5" y2="376.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.572,7.194,169.898)" id="line-1005" title="南排913线" /> 
   <line x1="199.5" y1="355.5" x2="219.5" y2="355.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,9.694,-18.535)" id="line-2003" title="南排913线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,61.175,258.475)" stroke-width="0.25">
     2116
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,76.428,197.137)" stroke-width="0.25">
     2132
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,44.921,207.485)" stroke-width="0.25">
     56
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,25.85798,134.224)" stroke-width="0.25">
     2162
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-15.47901,133.345)" stroke-width="0.25">
     2279
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,40.53399,155.655)" stroke-width="0.25">
     64
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-0.6060127,155.867)" stroke-width="0.25">
     77
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,115.024,294.61)" stroke-width="0.25">
     33
   </text> 
   <line x1="289" y1="403" x2="310" y2="403" stroke="#27fb06" transform="matrix(0,-0.533,0.97,0,-72.038,554.756)" id="line-1040" title="迎春926线" /> 
   <line x1="328.5" y1="402.5" x2="412.5" y2="402.5" stroke="#27fb06" transform="matrix(1.48,0,0,0.97,-186.744,9.965)" id="line-47" title="迎春926线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,178.451,260.41)" stroke-width="0.25">
     2139
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,178.884,287.452)" stroke-width="0.25">
     22
   </text> 
   <text x="144.6666" y="301.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-opacity="1" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,210.148,105.702)" stroke-width="0.25">
     迎春926线
   </text> 
   <rect x="438.5" y="286.5" width="35" height="13.5" fill="none" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,47.528,-27.38)" /> 
   <text x="433" y="248" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" baseline-shift="baseline" stroke-width="0.25" transform="matrix(0.98,0,0,0.97,-4.166,19.513)">
     二机厂
   </text> 
   <circle cx="449.75" cy="261.75" r="3.75" fill="none" stroke="#27fb06" stroke-width="2" transform="matrix(0.559,0,0,0.553,199.669,122.051)" id="line-915-52" title="迎春915线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.9799999,0,0,0.97,305.5669,203.094)" stroke-width="0.25">
     17
   </text> 
   <line x1="344" y1="300.5" x2="344" y2="321.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.876,7.694,39.568)" id="line-2011" title="迎春915线" /> 
   <line x1="335" y1="301.5" x2="344" y2="301.5" stroke="#27fb06" transform="matrix(3.729,0,0,0.97,-912.37,9.965)" id="line-1046" title="迎春915线" /> 
   <line x1="394.5" y1="283" x2="414.5" y2="283" stroke="#27fb06" transform="matrix(3.484,0,0,0.97,-985.363,27.48)" id="line-1045" title="迎春915线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,203.951,211.022)" stroke-width="0.25">
     2149
   </text> 
   <line x1="492" y1="402.5" x2="510" y2="402.5" stroke="#27fb06" transform="matrix(1.137,0,0,0.97,-72.431,5.465)" id="line-58" title="迎春927线" /> 
   <line x1="509" y1="351.5" x2="509" y2="339" stroke="#27fb06" transform="matrix(0.98,0,0,0.485,8.361,176.32)" id="line-1047" title="迎春927线" /> 
   <line x1="492" y1="414.5" x2="515.5" y2="414.5" stroke="#27fb06" transform="matrix(1.097,0,0,0.97,-52.381,5.632)" id="line-63" title="迎春913线" /> 
   <line x1="492" y1="427" x2="517.5" y2="427" stroke="#27fb06" transform="matrix(1.007,0,0,0.97,-6.728,10.45)" id="line-68" title="迎春928线" /> 
   <line x1="517.5" y1="427" x2="517.5" y2="446" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-69" title="迎春928线" /> 
   <line x1="491" y1="437.5" x2="512" y2="437.5" stroke="#27fb06" transform="matrix(1.006,0,0,0.97,-5.856,9.965)" id="line-72" title="迎春911线" /> 
   <line x1="512" y1="437" x2="512" y2="452" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-73" title="迎春911线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,486.424,318.102)" stroke-width="0.25">
     23
   </text> 
   <line x1="592.5" y1="445.5" x2="685.5" y2="445.5" stroke="#27fb06" transform="matrix(0.96,0,0,0.97,21.14,9.965)" id="line-71" title="迎春928线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,553.554,284.152)" stroke-width="0.25">
     35
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,547.764,237.455)" stroke-width="0.25">
     22
   </text> 
   <line x1="593" y1="454" x2="732" y2="454" stroke="#27fb06" transform="matrix(0.96,0,0,0.97,20.72732,9.632002)" id="line-75" title="迎春911线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,682.914,317.617)" stroke-width="0.25">
     53
   </text> 
   <line x1="491" y1="449.5" x2="505.5" y2="449.5" stroke="#27fb06" transform="matrix(1.058,0,0,0.97,-32.092,9.965)" id="line-78" title="迎春924线" /> 
   <line x1="505.5" y1="449.5" x2="505.5" y2="526.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.918,7.194,33.329)" id="line-79" title="迎春924线" /> 
   <line x1="589" y1="526.5" x2="589" y2="542" stroke="#27fb06" transform="matrix(0.98,0,0,0.689,7.694,146.429)" id="line-1050" title="迎春924线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-173.011,381.776)">
     2216
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-182.381,390.991)">
     2155
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,468.294,378.867)" stroke-width="0.25">
     40
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,444.774,386.142)" stroke-width="0.25">
     38
   </text> 
   <line x1="1027.5" y1="422.5" x2="1027.5" y2="411.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,6.694,4.375)" id="line-1078" title="青山927线" /> 
   <line x1="1542.5" y1="120" x2="1542.5" y2="96" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.97,5.734,73.35)" id="line-265" title="青园9111线" /> 
   <line x1="1319.5" y1="220.5" x2="1319.5" y2="255" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-282" title="青园913线" /> 
   <line x1="1320" y1="255" x2="1449.5" y2="255" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.204,9.965)" id="line-281" title="青园913线" /> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,233.176,-183.55)" stroke-width="0.25">
     青园变913线
   </text> 
   <line x1="1484" y1="324.5" x2="1484" y2="349" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.527,9.965)" id="line-260" title="青园9111线" /> 
   <line x1="1485" y1="349" x2="1552.5" y2="349" stroke="#27fb06" transform="matrix(0.804,0,0,0.97,268.668,9.965)" id="line-261" title="青园9111线" /> 
   <line x1="1540.5" y1="294" x2="1540.5" y2="276" stroke="#27fb06" transform="matrix(0.98,0,0,0.533,7.694,134.367)" id="line-263" title="青园9111线" /> 
   <line x1="1540" y1="265" x2="1540" y2="199" stroke="#27fb06" transform="matrix(0.98,0,0,0.892,7.694,29.423)" id="line-264" title="青园9111线" /> 
   <line x1="1539" y1="229" x2="1556" y2="229" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.184,9.965)" id="line-1090" title="青园9111线" /> 
   <line x1="1573" y1="228.5" x2="1589.5" y2="228.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.184,10.298)" id="line-1091" title="青园9111线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,750.806,161.932)">
     2331
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,749.933,134.56)">
     2352
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,748.463,60.689)">
     2318
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,756.793,105.672)">
     2319
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,726.426,61.022)">
     69
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,733.716,94.032)">
     54
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,726.396,135.197)">
     53
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,726.886,161.402)">
     36
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,762.086,82.877)">
     -1
   </text> 
   <line x1="1473.5" y1="324" x2="1473.5" y2="360.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.194,9.965)" id="line-271" title="青园919线" /> 
   <line x1="1474" y1="360.5" x2="1514" y2="360.5" stroke="#27fb06" transform="matrix(1.029,0,0,0.97,-66.041,9.965)" id="line-272" title="青园919线" /> 
   <line x1="1514" y1="360" x2="1514" y2="558" stroke="#27fb06" transform="matrix(0.98,0,0,0.877,7.694,43.431)" id="line-273" title="青园919线" /> 
   <line x1="1494" y1="325" x2="1494" y2="340.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.067,8.194,-23.209)" id="line-266" title="青园9110线" /> 
   <line x1="1494" y1="340.5" x2="1521.5" y2="340.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-267" title="青园9110线" /> 
   <line x1="1521.5" y1="339" x2="1521.5" y2="445" stroke="#27fb06" transform="matrix(0.98,0,0,0.63,7.027,162.012)" id="line-269" title="青园9110线" /> 
   <line x1="1449" y1="275" x2="1309.5" y2="275" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-275" title="青园914线" /> 
   <line x1="1309.5" y1="275.5" x2="1309.5" y2="229.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-276" title="青园914线" /> 
   <line x1="1275.5" y1="229.5" x2="1421.5" y2="229.5" stroke="#27fb06" transform="matrix(1.156,0,0,0.97,-243.146,9.965)" id="line-277" title="青园914线" /> 
   <line x1="1430" y1="223" x2="1430" y2="200.5" stroke="#27fb06" stroke-opacity="1" transform="matrix(0,0.98,-0.97,0,1633.501,-1170.047)" id="line-278" title="青园914线" /> 
   <line x1="1466.5" y1="201.5" x2="1499.5" y2="201.5" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.97,19.69384,35.96596)" id="line-279" title="青园914线" /> 
   <line x1="1285" y1="220" x2="1320" y2="220" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-283" title="青园913线" /> 
   <line x1="1294" y1="220" x2="1294" y2="159.5" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.892,7.694,27.037)" id="line-1099" title="青园913线" /> 
   <line x1="1313" y1="219" x2="1313" y2="181.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.854,7.694,35.942)" id="line-1097" title="青园913线" /> 
   <line x1="1293.5" y1="149" x2="1293.5" y2="130" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,6.465)" id="line-1100" title="青园913线" /> 
   <line x1="1313.5" y1="170.5" x2="1313.5" y2="130" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,7.42)" id="line-1098" title="青园913线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,625.649,104.854)">
     2349
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,683.453,99.33)">
     2340
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,665.679,82.914)">
     -42
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,627.34,81.225)">
     -7
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,414.966,-151.54)" stroke-width="0.25">
     青园变913线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,415.456,-131.17)" stroke-width="0.25">
     青园变914线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,413.986,-175.79)" stroke-width="0.25">
     青园变914线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,505.913,98.649)">
     28
   </text> 
   <line x1="1250" y1="229.5" x2="1250" y2="265" stroke="#27fb06" transform="matrix(0.98,0,0,0.834,6.704,41.063)" id="line-280" title="青园914线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,475.436,75.117)">
     2303
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,442.116,80.937)">
     50
   </text> 
   <line x1="1250.5" y1="277.5" x2="1250.5" y2="417.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.951,7.694,16.6)" id="line-290" title="民主924线" /> 
   <line x1="1250" y1="400" x2="1278.5" y2="400" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-1106" title="民主924线" /> 
   <line x1="1250" y1="400" x2="1278.5" y2="400" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,54.244,10.45)" id="line-1107" title="民主924线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,487.686,272.512)">
     2147
   </text> 
   <line x1="1237.5" y1="265.5" x2="1237.5" y2="219.5" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,0.854,7.694,37.028)" id="line-285" title="青园913线" /> 
   <line x1="1237.5" y1="278" x2="1237.5" y2="295.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.611,7.694,112.88)" id="line-288" title="民主913线" /> 
   <line x1="1237" y1="306" x2="1237" y2="359" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.956,7.694,16.414)" id="line-287" title="民主913线" /> 
   <line x1="1237.5" y1="348.5" x2="1216" y2="348.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.97,7.194,0.965)" id="line-1103" title="民主913线" /> 
   <line x1="1250" y1="316" x2="1354.5" y2="316" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-1108" title="民主924线" /> 
   <line x1="1301" y1="314.5" x2="1301" y2="325" stroke="#27fb06" transform="matrix(0.98,0,0,1.247,7.204,-83.883)" id="line-2020" title="民主924线" /> 
   <path d="M 1121 190.25 L 1120.5 192.875 L 1119.063 195.0625 L 1116.875 196.5 L 1114.25 197 L 1111.625 196.5 L 1109.5 195.0625 L 1108.063 192.875 L 1107.5 190.25 L 1108.063 187.625 L 1109.5 185.5 L 1111.625 184.0625 L 1114.25 183.5 L 1116.875 184.0625 L 1119.063 185.5 L 1120.5 187.625 L 1121 190.25 ZM 1121 200.25 L 1120.5 202.875 L 1119.063 205.0625 L 1116.875 206.5 L 1114.25 207 L 1111.625 206.5 L 1109.5 205.0625 L 1108.063 202.875 L 1107.5 200.25 L 1108.063 197.625 L 1109.5 195.5 L 1111.625 194.0625 L 1114.25 193.5 L 1116.875 194.0625 L 1119.063 195.5 L 1120.5 197.625 L 1121 200.25 Z" fill="none" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,370.784,137.52)" /> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,402.716,-58.42)" stroke-width="0.25">
     青园站用变
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,422.706,235.952)">
     2263
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,408.306,213.307)">
     2167
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,518.556,192.487)">
     2151
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,517.056,161.857)">
     2153
   </text> 
   <line x1="1300" y1="296.5" x2="1300" y2="284.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,9.194,2.132)" id="line-2021" title="民主924线" /> 
   <line x1="1301" y1="336" x2="1301" y2="348" stroke="#27fb06" transform="matrix(0.98,0,0,0.648,7.694,121.987)" id="line-2022" title="民主924线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,448.559,178.42)">
     40
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,420.186,162.887)">
     2268
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,420.186,137.682)">
     2213
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,467.036,132.272)">
     2211
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,435.296,121.072)">
     70
   </text> 
   <line x1="1169" y1="379" x2="1169" y2="333" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,1.207,7.694,-79.868)" id="line-318" title="民主915线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,368.576,170.45)">
     2257
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,388.176,180.242)">
     13
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,506.306,264.752)">
     11-1
   </text> 
   <line x1="1159" y1="380" x2="1159" y2="351.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-326" title="民主918线" /> 
   <line x1="1159" y1="352" x2="1020.5" y2="352" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-327" title="民主918线" /> 
   <line x1="1020.5" y1="352" x2="1020.5" y2="389.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.184,9.965)" id="line-328" title="民主918线" /> 
   <line x1="1021.5" y1="389.5" x2="886.5" y2="389.5" stroke="#27fb06" transform="matrix(1.037,0,0,0.97,-104.979,9.965)" id="line-330" title="民主918线" /> 
   <line x1="887" y1="388.5" x2="887" y2="424.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.204,10.935)" id="line-1126" title="民主918线" /> 
   <line x1="1180.5" y1="378.5" x2="1180.5" y2="358.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-312" title="民主917线" /> 
   <line x1="1180.5" y1="358.5" x2="1028.5" y2="358.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.184,9.965)" id="line-313" title="民主917线" /> 
   <line x1="1029.5" y1="358.5" x2="1029.5" y2="395" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-314" title="民主917线" /> 
   <line x1="1030" y1="395" x2="896.5" y2="395" stroke="#27fb06" transform="matrix(0.54,0,0,0.97,398.61,9.965)" id="line-316" title="厂前917线" /> 
   <line x1="896" y1="395.5" x2="896" y2="424.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,5.244,8.995)" id="line-317" title="厂前917线" /> 
   <line x1="984" y1="390.5" x2="1021" y2="390.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.184,8.51)" id="line-329" title="民主918线" /> 
   <line x1="983.5" y1="395" x2="1029.5" y2="395" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.184,9.965)" id="line-315" title="民主917线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,180.923,235.652)">
     2228
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,181.413,271.057)">
     2136
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,152.326,-57.45)" stroke-width="0.25">
     民主918线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,152.816,-39.99)" stroke-width="0.25">
     民主917线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-30.244,-19.135)" stroke-width="0.25">
     民主918线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-30.087,-5.555)" stroke-width="0.25">
     厂前917线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,248.523,283.972)">
     2277
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,241.523,305.187)">
     36
   </text> 
   <line x1="1248" y1="439" x2="1359.5" y2="439" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.019,0,0,0.97,-44.285,9.965)" id="line-291" title="民主922线" /> 
   <line x1="1359.5" y1="439" x2="1359.5" y2="474.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,1.368,7.694,-164.625)" id="line-292" title="民主922线" /> 
   <circle cx="959.75" cy="563.25" r="5.75" fill="none" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,507.885,-56.48)" /> 
   <line x1="1178.5" y1="447" x2="1178.5" y2="475.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.681,7.694,-310.237)" id="line-302" title="民主914线" /> 
   <line x1="1178.5" y1="475" x2="1240" y2="475" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,27.91)" id="line-303" title="民主914线" /> 
   <line x1="1257.5" y1="475" x2="1282" y2="475" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.674,27.91)" id="line-304" title="民主914线" /> 
   <line x1="1298.5" y1="475.5" x2="1319.5" y2="475.5" stroke="#27fb06" transform="matrix(0.921,0,0,0.97,86.29,27.91)" id="line-305" title="民主914线" /> 
   <line x1="1337" y1="476" x2="1356.5" y2="476" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.892,0,0,0.97,127.381,27.91)" id="line-306" title="民主914线" /> 
   <line x1="1178.5" y1="469.5" x2="1196.5" y2="469.5" stroke="#27fb06" transform="matrix(5.022,0,0,0.97,-4755.492,9.965)" id="line-1115" title="民主914线" /> 
   <line x1="1213.5" y1="470" x2="1232.5" y2="470" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,81.037,9.965)" id="line-1116" title="民主914线" /> 
   <line x1="1213.5" y1="470" x2="1232.5" y2="470" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,116.964,9.965)" id="line-1117" title="民主914线" /> 
   <line x1="1365.5" y1="496" x2="1365.5" y2="616.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.647,7.694,170.147)" id="line-307" title="民主914线" /> 
   <line x1="1358.5" y1="500" x2="1358.5" y2="617" stroke="#27fb06" transform="matrix(0.98,0,0,0.637,7.694,176.489)" id="line-293" title="民主922线" /> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,346.186,27.58)" stroke-width="0.25">
     民主922线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,449.933,360.782)">
     2205
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,528.823,362.722)">
     2255
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,452.873,338.472)">
     14
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,495.013,342.837)">
     18
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,530.293,340.412)">
     19
   </text> 
   <line x1="1164.5" y1="447" x2="1164.5" y2="529.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.224,8.861,-104.71)" id="line-310" title="民主916线" /> 
   <line x1="1358" y1="627.5" x2="1358" y2="680" stroke="#27fb06" transform="matrix(0.98,0,0,1.156,8.694,-138.354)" id="line-294" title="民主922线" /> 
   <line x1="1358.5" y1="693.5" x2="1358.5" y2="704.5" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.98,0,0,1.986,7.694,-711.968)" id="line-295" title="民主922线" /> 
   <line x1="1361" y1="762.5" x2="1361" y2="816" stroke="#27fb06" stroke-dasharray="4,4" transform="matrix(0.98,0,0,0.97,7.195,35.298)" id="line-298" title="民主922线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,-33.535)" id="line-1109" title="民主922线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,-43.756,-34.065)" id="line-1110" title="民主922线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.892,0,0,0.97,157.732,-21.73)" id="line-1111" title="民主922线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(3.089,0,0,0.9699999,-2704.938,-21.73004)" id="line-1094" title="青园919线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,41.014,29.095)" id="line-1112" title="民主922线" /> 
   <line x1="1389.5" y1="676" x2="1433.5" y2="676" stroke="#27fb06" transform="matrix(1,0,0,1,0,-1)" id="line-1146" title="民主922线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,572.923,350.597)">
     20
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,555.773,359.327)">
     1
   </text> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,47.384,-108.86)" id="line-1118" title="民主914线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,97.854,-108.375)" id="line-1119" title="民主914线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(1.098,0,0,0.97,7.136,-257.755)" id="line-270" title="青园9110线" /> 
   <line x1="1521.5" y1="339" x2="1521.5" y2="445" stroke="#27fb06" transform="matrix(0.98,0,0,1.533,-35.426,-124.011)" id="line-309" title="民主914线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(3.268,0,0,0.97,-2984.55,-88.49)" id="line-308" title="民主914线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,200.264,-239.325)" id="line-1092" title="青园9110线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.47,0,0,0.97,925.72,-239.173)" id="line-1093" title="青园9110线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,658.109,249.779)">
     2334
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,756.852,280.143)">
     2305
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,674.859,235.204)">
     -7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,759.419,257.09)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,723.873,272.329)">
     63
   </text> 
   <circle cx="959.75" cy="563.25" r="5.75" fill="none" stroke="#27fb06" transform="matrix(0.495,0,0,0.553,1020.118,130.817)" stroke-width="2" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,729.256,307.432)">
     67
   </text> 
   <line x1="1514" y1="360" x2="1514" y2="558" stroke="#27fb06" transform="matrix(0.9799999,0,0,0.3699999,7.694011,418.0573)" id="line-274" title="青园919线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,193.404,-44.355)" id="line-1095" title="青园919线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.47,0,0,0.97,919.016,-43.87)" id="line-1096" title="青园919线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,727.786,404.432)">
     2323
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,697.896,404.432)">
     70
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,705.569,464.087)">
     73
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,749.856,475.432)">
     2120
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,754.726,453.197)">
     76
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,571.769,414.647)">
     63
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,604.796,411.222)">
     2140
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,606.266,387.942)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,547.623,454.245)">
     2232
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,575.869,453.564)">
     2110
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,542.173,440.757)">
     60
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,581.626,441.287)">
     73
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,515.616,485.047)">
     2115
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,520.536,462.752)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,595.879,498.077)">
     2119
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,599.376,475.557)">
     -12
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,571.239,518.534)">
     2125
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,568.426,473.952)">
     66
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,555.036,485.837)">
     71
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,555.346,537.977)">
     83
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,598.946,547.51)">
     2168
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,572.513,598.339)">
     4508
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,602.329,526.567)">
     -4
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,570.446,558.707)">
     117
   </text> 
   <line x1="1178.5" y1="475" x2="1240" y2="475" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,-5.046,82.23)" id="line-311" title="民主916线" /> 
   <rect x="879.5" y="519.5" width="45.5" height="14" fill="none" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.651,0,0,0.97,658.572,22.575)" /> 
   <text x="891.5" y="526.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,448.44,25.637)" stroke-width="0.25">
     公 安 局
   </text> 
   <text x="891.5" y="526.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,482.387,25.485)" stroke-width="0.25">
     区 政 府
   </text> 
   <circle cx="959.75" cy="563.25" r="5.75" fill="none" stroke="#27fb06" transform="matrix(0.564,0,0,0.553,670.6,233.637)" stroke-width="2" /> 
   <line x1="1178.5" y1="475" x2="1240" y2="475" stroke="#27fb06" transform="matrix(0.578,0,0,0.97,433.005,27.91)" id="line-1120" title="民主916线" /> 
   <line x1="1178.5" y1="447" x2="1178.5" y2="475.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.16,-37.876,-110.783)" id="line-2024" title="民主916线" /> 
   <line x1="1178.5" y1="475" x2="1240" y2="475" stroke="#27fb06" transform="matrix(0.686,0,0,0.97,266.708,-39.02)" id="line-2025" title="民主916线" /> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,159.303,13.512)" stroke-width="0.25">
     民主916线
   </text> 
   <line x1="1178.5" y1="447" x2="1178.5" y2="475.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.036,-37.876,-3.559)" id="line-2023" title="民主916线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,415.716,370.255)">
     PI
   </text> 
   <line x1="1178.5" y1="447" x2="1178.5" y2="475.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.52,47.384,-218.519)" id="line-299" title="民主911线" /> 
   <line x1="1261" y1="518.5" x2="1261" y2="533" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.892,7.694,51.571)" id="line-393" title="民主911线" /> 
   <rect x="879.5" y="519.5" width="45.5" height="14" fill="none" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.813,0,0,0.97,450.897,13.845)" /> 
   <text x="891.5" y="526.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,382.82,16.392)" stroke-width="0.25">
     青东热源厂
   </text> 
   <line x1="1178.5" y1="447" x2="1178.5" y2="475.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.947,36.604,-408.108)" id="line-301" title="民主912线" /> 
   <line x1="1178.5" y1="475" x2="1240" y2="475" stroke="#27fb06" transform="matrix(1.068,0,0,0.97,-114.679,86.595)" id="line-1089" title="青山911线" /> 
   <line x1="1027.5" y1="422.5" x2="1027.5" y2="411.5" stroke="#27fb06" transform="matrix(0.98,0,0,2.533,137.367,-522.392)" id="line-1088" title="青山911线" /> 
   <line x1="1300" y1="512.5" x2="1300" y2="534.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.97,-30.213,42.945)" id="line-2016" title="青山911线" /> 
   <line x1="1300" y1="512.5" x2="1300" y2="534.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,1.379,10.007,-166.351)" id="line-2019" title="青山911线" /> 
   <line x1="1227.5" y1="519" x2="1262" y2="519" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.215,0,0,0.97,-287.658,57.01)" id="line-2015" title="青山911线" /> 
   <line x1="1227.5" y1="512" x2="1300" y2="512" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.211,0,0,0.97,-290.089,73.015)" id="line-2018" title="青山911线" /> 
   <line x1="1261" y1="518.5" x2="1261" y2="533" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.97,-32.486,43.915)" id="line-2014" title="青山911线" /> 
   <line x1="1261" y1="518.5" x2="1261" y2="533" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,1.571,-38.856,-267.727)" id="line-2017" title="青山911线" /> 
   <rect x="879.5" y="519.5" width="45.5" height="14" fill="none" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.651,0,0,0.97,586.542,71.075)" /> 
   <text x="891.5" y="526.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,382.33,73.985)" stroke-width="0.25">
     蒙牛
   </text> 
   <line x1="1190" y1="575.5" x2="1190" y2="584" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.98,0,0,0.582,7.694,235.778)" id="line-1123" title="民主916线" /> 
   <line x1="1190" y1="596.5" x2="1190" y2="604.5" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-334" title="青山918线" /> 
   <line x1="1169" y1="608.5" x2="1181.5" y2="608.5" stroke="#27fb06" stroke-dasharray="2,2" transform="matrix(2.047,0,0,0.97,-1244.426,32.609)" id="line-332" title="青山918线" /> 
   <line x1="1170" y1="623" x2="1190.5" y2="623" stroke="#27fb06" stroke-opacity="1" transform="matrix(1.283,0,0,0.97,-353.635,31.305)" id="line-201" title="青山912线" /> 
   <line x1="1189.5" y1="622" x2="1189.5" y2="762.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.807,7.694,133.393)" id="line-202" title="青山912线" /> 
   <line x1="1189" y1="646.5" x2="1217.5" y2="646.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.674,28.4)" id="line-1071" title="青山912线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,-79.683,9.97)" id="line-1072" title="青山912线" /> 
   <line x1="1189" y1="646.5" x2="1217.5" y2="646.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.674,64.77)" id="line-1073" title="青山912线" /> 
   <line x1="1358.5" y1="666" x2="1325" y2="666" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,-78.546,46.34)" id="line-1074" title="青山912线" /> 
   <line x1="1361" y1="762.5" x2="1361" y2="816" stroke="#27fb06" stroke-dasharray="4,4" transform="matrix(0.98,0,0,0.97,-159.396,48.035)" id="line-204" title="青山912线" /> 
   <line x1="1142.5" y1="578" x2="1142.5" y2="551.5" stroke="#27fb06" transform="matrix(0.98,0,0,2.083,8.618,-608.239)" id="line-210" title="青山923线" /> 
   <line x1="1142.5" y1="578" x2="1142.5" y2="551.5" stroke="#27fb06" transform="matrix(0.98,0,0,4.265,8.184,-1943.132)" id="line-1077" title="青山923线" /> 
   <line x1="1043.5" y1="494.5" x2="1068" y2="494.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,-1.472,9.965)" id="line-251" title="青山911线" /> 
   <rect x="879.5" y="519.5" width="45.5" height="14" fill="none" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.8129999,0,0,0.9699998,367.217,28.88017)" /> 
   <line x1="1124" y1="577.5" x2="1124" y2="592.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.416,15.544,-250.005)" id="line-258" title="青山917线" /> 
   <line x1="1124" y1="592.5" x2="1071.5" y2="592.5" stroke="#27fb06" transform="matrix(1.117,0,0,0.97,-138.394,13.845)" id="line-257" title="青山917线" /> 
   <line x1="1072.5" y1="592.5" x2="1072.5" y2="679.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.921,7.694,42.945)" id="line-254" title="青山917线" /> 
   <text x="891.5" y="526.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.8679999,0,0,0.97,301.904,31.60804)" stroke-width="0.25">
     调度大楼
   </text> 
   <line x1="1124.5" y1="552.5" x2="1124.5" y2="566" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-259" title="青山917线" /> 
   <line x1="1124.5" y1="552.5" x2="1124.5" y2="566" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,-13.866,10.45)" id="line-1083" title="青山914线" /> 
   <line x1="1124" y1="577.5" x2="1124" y2="592.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.193,10.144,-109.618)" id="line-248" title="青山911线" /> 
   <line x1="1124" y1="592.5" x2="1071.5" y2="592.5" stroke="#27fb06" transform="matrix(1.248,0,0,0.97,-290.839,4.75)" id="line-249" title="青山911线" /> 
   <line x1="1124" y1="592.5" x2="1071.5" y2="592.5" stroke="#27fb06" transform="matrix(1.341,0,0,0.97,-407.865,7.54)" id="line-232" title="青山914线" /> 
   <line x1="1124" y1="577.5" x2="1124" y2="592.5" stroke="#27fb06" transform="matrix(0.98,0,0,1.022,-2.596,-8.056)" id="line-231" title="青山914线" /> 
   <line x1="998.6666" y1="678.6666" x2="998.6666" y2="661.3333" stroke="#27fb06" transform="matrix(0.868,0,0,1.648,162.554,-536.258)" id="line-233" title="青山914线" /> 
   <line x1="1124" y1="592.5" x2="1071.5" y2="592.5" stroke="#27fb06" transform="matrix(0.269,0,0,0.97,776.752,-8.95)" id="line-1082" title="青山914线" /> 
   <line x1="998.6666" y1="678.6666" x2="998.6666" y2="661.3333" stroke="#27fb06" transform="matrix(0.868,0,0,0.969,197.814,-75.436)" id="line-1081" title="青山914线" /> 
   <line x1="1238" y1="601" x2="1238" y2="622" stroke="#27fb06" transform="matrix(0.868,0,0,0.429,98.824,355.714)" id="line-333" title="青山918线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,348.711,547.225)">
     1HG
   </text> 
   <line x1="1238" y1="601" x2="1238" y2="622" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,41.504,113.11)" stroke-dasharray="3,3" id="line-200" title="青山928线" /> 
   <line x1="1071.5" y1="662.5" x2="1083.5" y2="662.5" stroke="#27fb06" transform="matrix(3.596,0,0,0.97,-2794.17,14.965)" id="line-253" title="青山917线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-62.409,500.21)">
     1HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.8679999,0,0,0.9699999,-16.01938,483.178)">
     棉纺9212
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,8.477,547.915)">
     青山变925
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,8.967,565.495)">
     青山变926
   </text> 
   <line x1="703" y1="709.5" x2="772.5" y2="709.5" stroke="#27fb06" transform="matrix(3.282,0,0,0.97,-1570.366,9.465)" id="line-188" title="青山926线" /> 
   <line x1="457.5" y1="525" x2="438.5" y2="525" stroke="#27fb06" transform="matrix(5.229,0,0,0.97,-1789.83,0.405)" id="line-80" title="迎春924线" /> 
   <line x1="1069.5" y1="542.5" x2="1077.5" y2="542.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-1149" title="青山911线" /> 
   <line x1="1077.5" y1="521.5" x2="1092" y2="521.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-1086" title="青山911线" /> 
   <line x1="1065.5" y1="526" x2="1065.5" y2="542.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,1.445,33.694,-239.013)" id="line-1085" title="青山911线" /> 
   <line x1="623.5" y1="527.5" x2="650.5" y2="527.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.892,0,0,0.97,63.143,-1.535)" id="line-243" title="青山914线" /> 
   <line x1="881" y1="249.5" x2="881" y2="259.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,9.965)" id="line-1128" title="厂前917线" /> 
   <line x1="971.5" y1="525.5" x2="988" y2="525.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.97,6.027,1.113)" id="line-236" title="青山914线" /> 
   <line x1="937" y1="526.5" x2="954.5" y2="526.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.97,7.694,-0.22)" id="line-237" title="青山914线" /> 
   <line x1="907.5" y1="526.5" x2="920" y2="526.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.97,7.694,-0.22)" id="line-238" title="青山914线" /> 
   <line x1="992" y1="536" x2="1133.5" y2="536" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.009,0,0,0.97,-21.441,9.965)" id="line-211" title="青山923线" /> 
   <line x1="927.5" y1="534.5" x2="943.5" y2="534.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.97,7.694,11.632)" id="line-213" title="青山923线" /> 
   <line x1="960" y1="534" x2="975" y2="534" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.97,7.694,12.298)" id="line-212" title="青山923线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,86.663,453.934)">
     1HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,146.404,517.63)">
     2201
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,125.181,495.716)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,125.161,536.573)">
     -2
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,158.918,577.702)">
     46
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,188.935,574.18)">
     48
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,389.432,605.22)">
     25
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,388.962,555.81)">
     18
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,393.442,519.425)">
     2
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,430.018,565.773)">
     2157
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,428.911,529.608)">
     2161
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,357.399,506.767)">
     912-7
   </text> 
   <text x="1149.5" y="619.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,23.42,29.664)">
     青山918线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,409.516,462.965)">
     918
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,377.489,425.772)">
     916
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,354.645,406.882)">
     1HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,289.703,284.637)">
     -10
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,318.793,313.417)">
     2101
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,331.353,297.247)">
     -2
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,297.053,362.775)">
     2210
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,276.813,342.822)">
     22
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,328.593,342.822)">
     24
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,273.646,356.115)">
     -2
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,324.926,357.66)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,338.213,356.902)">
     21
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,478.353,315.677)">
     2131
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,514.123,316.647)">
     2171
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-295.479,182.985)">
     7HG
   </text> 
   <line x1="667.5" y1="331.5" x2="770.5" y2="331.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.068,0,0,0.97,-51.135,9.965)" id="line-340" title="厂前924线" /> 
   <line x1="416.5" y1="331" x2="482" y2="331" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.078,0,0,0.97,-39.542,9.965)" id="line-347" title="厂前924线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-263.579,183)">
     6PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-132.319,183.47)">
     1HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-237.089,183.5)">
     5PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-209.599,183.485)">
     4PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-185.169,182.985)">
     3PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-157.769,183.455)">
     2PI
   </text> 
   <line x1="802.5" y1="332" x2="859.5" y2="332" stroke="#27fb06" transform="matrix(0.758,0,0,0.97,182.552,9.965)" id="line-348" title="厂前924线" /> 
   <line x1="859.5" y1="332.5" x2="859.5" y2="371.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,-7.796,8.995)" id="line-349" title="厂前924线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,15.467,223.647)">
     2245
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,618.124,258.23)" stroke-width="0.25">
     64
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,676.698,259.23)" stroke-width="0.25">
     29
   </text> 
   <line x1="694.5" y1="286.5" x2="694.5" y2="309" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,8.184,9.965)" id="line-353" title="厂前915线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-65.109,166.45)">
     1PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-42.579,167.45)">
     2PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-3.369,168.95)">
     3PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,19.651,168.95)">
     4PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,43.651,168.935)">
     5PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,208.751,169.072)">
     6PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,234.711,169.602)">
     5PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,285.601,170.087)">
     3PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,315.561,170.057)">
     2PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,343.501,170.072)">
     1PI
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,256.751,170.042)">
     4HG
   </text> 
   <line x1="889.5" y1="272" x2="988.5" y2="272" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.637,0,0,0.97,313.65,9.965)" id="line-370" title="厂前918线" /> 
   <line x1="889.5" y1="281" x2="989" y2="281" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.794,0,0,0.97,173.598,9.965)" id="line-372" title="厂前928线" /> 
   <line x1="889" y1="293" x2="988.5" y2="293" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,7.694,7.54)" stroke-dasharray="none" id="line-374" title="厂前929线" /> 
   <line x1="833.5" y1="281" x2="868.5" y2="281" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.09,0,0,0.97,-84.061,9.965)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,112.602,149.519)">
     928-7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,113.025,157.873)">
     929-7
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,73.901,72.994)" stroke-width="0.25">
     2113
   </text> 
   <line x1="584.5" y1="243.5" x2="673.5" y2="243.5" stroke="#27fb06" transform="matrix(0.823,0,0,0.97,113.265,25.965)" id="line-46" title="青北933线" /> 
   <line x1="457" y1="526.5" x2="457" y2="453.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.822,7.694,95.657)" id="line-81" title="迎春925线" /> 
   <line x1="680" y1="157.5" x2="680" y2="87" stroke="#27fb06" transform="matrix(0,-0.98,0.97,0,531.687,810.457)" id="line-37" title="青北941线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-55.419,539.945)">
     2262
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-54.919,574.945)">
     2260
   </text> 
   <line x1="1249.5" y1="477.5" x2="1249.5" y2="495.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-394" title="民主911线" transform="matrix(1,0,0,1,32,32.667)" /> 
   <line x1="1485.5" y1="277" x2="1485.5" y2="336.5" stroke="#27fb06" transform="matrix(1,0,0,0.8,32,87.4)" id="line-262" title="青园9111线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,268.428,273.47)" stroke-width="0.25">
     926-7
   </text> 
   <line x1="138" y1="366.5" x2="189.5" y2="366.5" stroke="#27fb06" transform="matrix(1.569,0,0,1,-84.257,32.5)" id="line-9" title="南排913线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,271.927,291.47)" stroke-width="0.25">
     919-7
   </text> 
   <text x="144.6666" y="301.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-opacity="1" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,227.248,120.502)" stroke-width="0.25">
     迎春919线
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,271.094,315.137)" stroke-width="0.25">
     917-7
   </text> 
   <line x1="379" y1="385" x2="324.5" y2="385" stroke="#27fb06" transform="matrix(0.818,0,0,1,113.976,32)" id="line-88" title="迎春919线" /> 
   <line x1="412" y1="395" x2="420.5" y2="395" stroke="#27fb06" transform="matrix(1.781,0,0,0.97,-387.698,35.485)" id="line-114" title="棉纺926线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,213.118,312.244)" stroke-width="0.25">
     2217
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,515.053,188.027)">
     4HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,514.931,206.967)">
     4HG01
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(1,0,0,1,78,-6)" id="line-112" title="棉纺926线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0.88,0,0,1.04,66.43,-7.66)" /> 
   <line x1="299" y1="453.5" x2="299" y2="459.5" stroke="#27fb06" stroke-dasharray="none" transform="matrix(1,0,0,1.58,29.5,-257.27)" id="line-111" title="棉纺926线" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,515.553,227.027)">
     3HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,515.431,246.467)">
     3HG01
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(1,0,0,1,78.5,34.5)" id="line-110" title="棉纺926线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0.88,0,0,1,66.93,50)" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,515.553,269.027)">
     2HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,515.431,288.467)">
     2HG01
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(1,0,0,1,78.5,75.5)" id="line-108" title="棉纺926线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0.88,0,0,1,66.93,91.833)" /> 
   <line x1="300" y1="494" x2="300" y2="502.5" stroke="#27fb06" stroke-opacity="1" stroke-dasharray="none" transform="matrix(1,0,0,1,29,6.5)" id="line-109" title="棉纺926线" /> 
   <line x1="298" y1="385.5" x2="298" y2="397.5" stroke="#27fb06" stroke-opacity="1" stroke-dasharray="2,2" id="line-113" title="棉纺926线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,341.428,273.137)" stroke-width="0.25">
     927-7
   </text> 
   <line x1="389.5" y1="529.5" x2="389.5" y2="529.5" stroke="#27fb06" stroke-dasharray="2,2" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="639.5" y1="527.5" x2="639.5" y2="537.5" stroke="#27fb06" stroke-dasharray="2,2" transform="matrix(1,0,0,1.903,32,-449.286)" id="line-128" title="棉纺923线" /> 
   <line x1="589" y1="526.5" x2="589" y2="542" stroke="#27fb06" transform="matrix(0.98,0,0,0.689,7.527,174.096)" id="line-1051" title="迎春924线" /> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-326.236,146.068)" stroke-width="0.25">
     棉纺923线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-326.403,159.735)" stroke-width="0.25">
     棉纺913线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="6" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-353.236,187.568)" stroke-width="0.25">
     棉纺926线
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,261.027,366.509)">
     1HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,280.467,366.13)">
     1HG01
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,1,0,68,804.562)" id="line-130" title="棉纺923线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0,-0.88,1,0,84,814.632)" /> 
   <line x1="639.5" y1="527.5" x2="502" y2="527.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.02,0,0,1,19.136,26)" id="line-129" title="棉纺923线" /> 
   <line x1="488.5" y1="608.5" x2="488.5" y2="608.5" stroke="none" stroke-opacity="0" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,127.027,380.009)">
     1HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,146.967,380.13)">
     1HG01
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,1,0,-66,817.062)" id="line-118" title="棉纺变913线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0,-0.88,1,0,-50.5,827.632)" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,42.527,369.009)">
     2HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,62.467,369.13)">
     2HG01
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,1,0,-150.5,806.062)" id="line-132" title="棉纺923线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0,-0.88,1,0,-134.5,817.132)" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,78.527,390.009)">
     2HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,98.967,390.13)">
     2HG01
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,1,0,-114,827.062)" id="line-120" title="棉纺变913线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0,-0.88,1,0,-98,838.132)" /> 
   <line x1="240" y1="525" x2="240" y2="557.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-134" title="棉纺923线" transform="matrix(1,0,0,1,32,31)" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,458.053,350.027)">
     3HG01
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,457.931,369.967)">
     3HG02
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(1,0,0,1,21,157)" id="line-135" title="棉纺923线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0.88,0,0,1,9.93,172.5)" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,482.553,347.027)">
     3HG01
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,482.431,366.967)">
     3HG02
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(1,0,0,1,45.5,154)" id="line-123" title="棉纺变913线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0.88,0,0,1,33.93,170)" /> 
   <line x1="85" y1="486.5" x2="85" y2="629" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1.058,24.5,3.958)" id="line-157" title="中心变917线" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.6569999,0,0,0.6499999,170.027,400.509)">
     2292
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,196.567,400.03)">
     2293
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,1.749,0,-355.705,837.962)" id="line-94" title="棉纺926线" /> 
   <line x1="324" y1="561" x2="324" y2="574.5" stroke="#27fb06" stroke-dasharray="none" transform="matrix(1,0,0,0.84,40.833,121.709)" id="line-97" title="棉纺926线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-413.215,475.491)">
     2910
   </text> 
   <line x1="324" y1="561" x2="324" y2="574.5" stroke="#27fb06" stroke-dasharray="none" transform="matrix(1,0,0,1.023,40.5,48.561)" id="line-105" title="青山925线" /> 
   <line x1="333" y1="578" x2="345" y2="578" stroke="#27fb06" transform="matrix(2.816,0,0,1,-592.964,14.5)" id="line-96" title="棉纺926线" /> 
   <line x1="333" y1="578" x2="345" y2="578" stroke="#27fb06" transform="matrix(2.437,0,0,1,-466.247,58.5)" id="line-104" title="青山925线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-407.548,462.324)">
     2911
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-408.214,509.991)">
     2921
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,196.867,452.63)">
     3HG04
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,1.932,0,-438.527,887.862)" id="line-102" title="青山925线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-483.048,474.991)">
     乌兰开闭站
   </text> 
   <line x1="594" y1="549" x2="418" y2="549" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.989,0,0,1,37.664,38.5)" id="line-93" title="棉纺926线" /> 
   <line x1="474.5" y1="605" x2="474.5" y2="605" stroke="#27fb06" stroke-dasharray="2,2" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="409" y1="606.5" x2="424" y2="606.5" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.8799998,0,0,0.9999998,91.29997,30.76662)" id="line-1053" title="青山925线" /> 
   <line x1="469" y1="586.5" x2="469" y2="586.5" stroke="#27fb06" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="540" y1="609.5" x2="540" y2="609.5" stroke="#27fb06" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="583" y1="563.5" x2="518" y2="563.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-89" title="棉纺911线" transform="matrix(0.96,0,0,1,55.36,32)" /> 
   <line x1="583" y1="563.5" x2="518" y2="563.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.97,0,0,1,50.52,39)" id="line-90" title="棉纺912线" /> 
   <line x1="583" y1="563.5" x2="518" y2="563.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.978,0,0,1,45.061,46.5)" id="line-91" title="棉纺921线" /> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="6" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-360.736,196.068)" stroke-width="0.25">
     棉纺911线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="6" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-360.736,203.402)" stroke-width="0.25">
     棉纺912线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="6" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-360.57,210.902)" stroke-width="0.25">
     棉纺921线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="6" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-359.903,218.568)" stroke-width="0.25">
     棉纺922线
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,181.578,504.796)">
     2#HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,203.919,504.317)">
     2#HG01
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,1.284,0,-136.338,941.648)" id="line-198" title="青山925线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0,-0.88,1.226,0,-91.453,952.418)" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,235.129,504.545)">
     1#HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,254.569,504.466)">
     1#HG01
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,0.8809999,0,97.12399,941.598)" id="line-196" title="青山925线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0,-0.88,1.168,0,-13.938,952.368)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-610.881,524.491)">
     中心917线
   </text> 
   <rect x="201.5" y="730.5" width="11" height="7" fill="none" stroke="#27fb06" transform="matrix(1,0,0,1,52,-64.5)" id="line-917-158-1058" title="中心变917线" /> 
   <rect x="201.5" y="730.5" width="11" height="7" fill="none" stroke="#27fb06" transform="matrix(1,0,0,1,113.5,-64.5)" id="line-917-158-1059" title="中心变917线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-537.048,523.324)">
     中接头
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-477.048,522.158)">
     中接头
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-248.919,540.445)">
     2261
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-248.919,575.445)">
     2258
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-208.881,566.491)">
     中心变917
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-196.419,585.945)">
     2177
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-236.381,547.491)">
     青山变925
   </text> 
   <line x1="559.5" y1="626" x2="559.5" y2="626" stroke="#27fb06" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="559" y1="649" x2="559" y2="625.5" stroke="#27fb06" transform="matrix(1,0,0,0.523,58,323.61)" id="line-1134" title="中心变917线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-181.919,534.445)">
     2163
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-156.419,513.945)">
     -2
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-12.586,592.278)">
     2173
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-52.419,593.111)">
     63-1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-26.086,627.945)">
     -10
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-162.419,566.945)">
     7
   </text> 
   <line x1="76.5" y1="501" x2="76.5" y2="663.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1.062,7.5,46.205)" id="line-162" title="中心变923线" /> 
   <line x1="85.5" y1="616.5" x2="339.5" y2="616.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.03,0,0,1,20.77,53)" id="line-158" title="中心变917线" /> 
   <line x1="338.5" y1="777.5" x2="338.5" y2="777.5" stroke="#27fb06" stroke-dasharray="2,2" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="284.5" y1="702.5" x2="284.5" y2="702.5" stroke="#27fb06" stroke-dasharray="2,2" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="240" y1="591.5" x2="240" y2="659.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,0.83,32,132.47)" id="line-136" title="棉纺923线" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,457.553,439.027)">
     4HG01
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,457.431,457.967)">
     4HG02
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(1,0,0,1,20.5,247)" id="line-137" title="棉纺923线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0.88,0,0,1,9.43,261.5)" /> 
   <line x1="264" y1="587.5" x2="264" y2="647.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-124" title="棉纺变913线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-469.919,545.445)">
     2105
   </text> 
   <line x1="68" y1="701.5" x2="68" y2="724.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1.235,5.167,-69.545)" id="line-1065" title="中心变922线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-704.266,693.652)">
     2PI
   </text> 
   <line x1="39.99999" y1="545.9999" x2="39.99999" y2="732.6666" stroke="#27fb06" stroke-dasharray="3,3" id="line-166" title="中心变922线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="98.5" y1="730.5" x2="111" y2="730.5" stroke="#27fb06" transform="matrix(1,0,0,1,41.5,21)" id="line-164" title="中心变923线" /> 
   <line x1="104.5" y1="730.5" x2="104.5" y2="716.5" stroke="#27fb06" transform="matrix(1,0,0,0.8,41.5,167.2)" id="line-1062" title="中心变923线" /> 
   <line x1="103.5" y1="676" x2="103.5" y2="685" stroke="#27fb06" transform="matrix(1,0,0,1,43.501,16.334)" id="line-1064" title="中心变923线" /> 
   <line x1="316" y1="891" x2="316" y2="891" stroke="#27fb06" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="312" y1="892" x2="312" y2="892" stroke="#27fb06" fill="none" transform="matrix(1,0,0,1,32,32)" /> 
   <rect x="78" y="704" width="54.5" height="38" fill="none" fill-opacity="0" stroke="#27fb06" transform="matrix(0.828,0,0,1,59.62,19.834)" xmlns="http://www.w3.org/2000/svg" /> 
   <rect x="86.5" y="662.5" width="43.5" height="33.5" fill="none" fill-opacity="0" stroke="#27fb06" transform="matrix(1.034,0,0,1.19,34.661,-111.637)" xmlns="http://www.w3.org/2000/svg" /> 
   <line x1="676" y1="666" x2="676" y2="690.5" stroke="#27fb06" transform="matrix(1,0,0,1,79.5,32)" id="line-1067" title="青山926线" /> 
   <line x1="676.5" y1="708.5" x2="676.5" y2="730.5" stroke="#27fb06" transform="matrix(1,0,0,1,79.5,32)" id="line-1068" title="青山926线" /> 
   <line x1="703" y1="709.5" x2="772.5" y2="709.5" stroke="#27fb06" transform="matrix(3.23,0,0,0.97,-1533.978,3.465)" id="line-193" title="青山925线" /> 
   <line x1="703" y1="709.5" x2="772.5" y2="709.5" stroke="#27fb06" transform="matrix(2.549,0,0,0.97,-1249.293,10.965)" id="line-161" title="中心变917线" /> 
   <line x1="703" y1="709.5" x2="772.5" y2="709.5" stroke="#27fb06" transform="matrix(2.542,0,0,0.97,-1245.879,2.465)" id="line-194" title="青山925线" /> 
   <line x1="606.5" y1="636.5" x2="606.5" y2="667.5" stroke="#27fb06" transform="matrix(1,0,0,0.61,10.5,292.52)" id="line-1133" title="中心变917线" /> 
   <line x1="529.5" y1="667" x2="529.5" y2="685" stroke="#27fb06" transform="matrix(1,0,0,1,40.5,32)" id="line-1060" title="中心变917线" /> 
   <line x1="530" y1="702" x2="530" y2="719" stroke="#27fb06" transform="matrix(1,0,0,1,40.5,31.5)" id="line-1061" title="中心变917线" /> 
   <line x1="469.5" y1="659.5" x2="492.5" y2="659.5" stroke="#27fb06" id="line-195" title="青山925线" transform="matrix(0.67,0,0,1,194.09,31.19999)" /> 
   <line x1="406.5" y1="659.5" x2="433.5" y2="659.5" stroke="#27fb06" id="line-197" title="青山925线" transform="matrix(0.71,0,0,1,170.26,31.2)" /> 
   <line x1="492" y1="674" x2="338" y2="674" stroke="#27fb06" stroke-dasharray="3,3" id="line-160" title="中心变917线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="339.5" y1="637.5" x2="339.5" y2="674.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-159" title="中心变917线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="559" y1="649" x2="559" y2="625.5" stroke="#27fb06" transform="matrix(1,0,0,0.798,83.5,148.827)" id="line-1138" title="中心变917线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-123.419,537.445)">
     2270
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-127.252,516.945)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-137.419,566.945)">
     33
   </text> 
   <line x1="396.5" y1="547.5" x2="396.5" y2="569" stroke="#27fb06" id="line-99" title="棉纺926线" transform="matrix(1,0,0,1.001,33.4,31.237)" /> 
   <line x1="396" y1="575.5" x2="396" y2="586" stroke="#27fb06" id="line-100" title="棉纺926线" transform="matrix(1,0,0,1.1,33.8,-26.7)" /> 
   <line x1="395.5" y1="593" x2="395.5" y2="606.5" stroke="#27fb06" id="line-101" title="青山925线" transform="matrix(1,0,0,2.019,34.2,-573.658)" /> 
   <line x1="360.5" y1="605.5" x2="380.5" y2="605.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-103" title="青山925线" transform="matrix(0.8649999,0,0,0.9999999,81.93199,31.19999)" /> 
   <line x1="363" y1="555" x2="380" y2="555" stroke="#27fb06" stroke-dasharray="none" id="line-95" title="棉纺926线" transform="matrix(1,0,0,1,32.333,32)" /> 
   <rect x="372.5" y="538" width="49" height="41" fill="none" stroke="#27fb06" transform="matrix(0.9999999,0,0,0.9999999,34.53357,33.13108)" /> 
   <line x1="301.5" y1="503.5" x2="396.5" y2="503.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-107" title="棉纺926线" transform="matrix(1.03,0,0,1,22.91,32)" /> 
   <line x1="395.5" y1="503.5" x2="395.5" y2="539.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(-1,0,0,-1.119,825.4,1135.57)" id="line-106" title="棉纺926线" /> 
   <line x1="282.5" y1="523.5" x2="469.5" y2="523.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,32,31)" id="line-131" title="棉纺923线" /> 
   <line x1="240" y1="524" x2="250.5" y2="524" stroke="#27fb06" stroke-dasharray="2,2" id="line-133" title="棉纺923线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="98.5" y1="730.5" x2="111" y2="730.5" stroke="#27fb06" transform="matrix(1,0,0,1,164.5,19)" id="line-140" title="棉纺923线" /> 
   <line x1="104.5" y1="730.5" x2="104.5" y2="716.5" stroke="#27fb06" transform="matrix(1,0,0,0.68,164.5,252.92)" id="line-139" title="棉纺923线" /> 
   <rect x="78" y="704" width="54.5" height="38" fill="none" fill-opacity="0" stroke="#27fb06" transform="matrix(0.969,0,0,0.89,166.218,97.786)" /> 
   <line x1="113" y1="681.5" x2="113" y2="699" stroke="#27fb06" stroke-dasharray="2,2" id="line-1063" title="中心变923线" transform="matrix(1,0,0,0.77,33.333,189.296)" /> 
   <line x1="238" y1="682" x2="238" y2="696.5" stroke="#27fb06" stroke-dasharray="2,2" id="line-138" title="棉纺923线" transform="matrix(1,0,0,0.88,32.667,113.387)" /> 
   <line x1="132.5" y1="720" x2="219" y2="720" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,32,30)" id="line-165" title="棉纺923线" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,258.553,522.527)">
     3HG01
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0,0.657,-0.65,0,258.431,541.967)">
     3HG02
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(1,0,0,1,-178.5,330)" id="line-167" title="中心变922线" /> 
   <line x1="39.5" y1="748.5" x2="52" y2="748.5" stroke="#27fb06" id="line-168" title="中心变922线" transform="matrix(1,0,0,1,32.667,32)" /> 
   <line x1="65" y1="748" x2="81.5" y2="748" stroke="#27fb06" id="line-169" title="中心变922线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="98.5" y1="748.5" x2="113.5" y2="748.5" stroke="#27fb06" id="line-170" title="棉纺变913线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,-112.533,564.63)">
     1HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,-91.033,564.63)">
     1HG01
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,-86.033,540.13)">
     1HG03
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,-88.366,514.463)">
     2HG01
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,-87.366,493.463)">
     2HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,33.967,561.63)">
     5HG03
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,33.967,540.63)">
     5HG01
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,9.467,562.13)">
     5HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,-157.533,594.13)">
     3HG03
   </text> 
   <rect x="23.5" y="729" width="49" height="41.5" fill="none" fill-opacity="0" stroke="#27fb06" transform="matrix(1,0,0,1,33,32)" xmlns="http://www.w3.org/2000/svg" /> 
   <line x1="268.5" y1="664.5" x2="268.5" y2="750.5" stroke="#27fb06" transform="matrix(1,0,0,0.667,30,276.636)" id="line-126" title="棉纺变913线" /> 
   <line x1="265" y1="663.5" x2="265" y2="672.5" stroke="#27fb06" id="line-125" title="棉纺变913线" transform="matrix(1,0,0,0.69,32,238.197)" /> 
   <line x1="129.5" y1="749" x2="266.5" y2="749" stroke="#27fb06" transform="matrix(0.84,0,0,1,52.8,32)" id="line-127" title="棉纺变913线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-469.919,571.945)">
     2280
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,113.978,563.496)">
     6HG01
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,137.419,563.617)">
     6HG02
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,1.493,0,-298.433,1000.048)" id="line-142" title="棉纺923线" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0,-0.88,1.226,0,-160.253,1012.118)" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,170.929,564.545)">
     7HG01
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,193.869,564.666)">
     7HG02
   </text> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,1.493,0,-241.983,1000.598)" id="line-144" title="棉纺923线" /> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,1.493,0,-298.983,1074.597)" id="line-150" title="棉纺923线" /> 
   <line x1="251" y1="446" x2="251" y2="454" stroke="#27fb06" transform="matrix(0,-1,1.493,0,-240.983,1074.598)" id="line-152" title="棉纺923线" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,113.429,637.545)">
     8HG01
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,136.929,637.545)">
     8HG02
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,170.429,639.045)">
     9HG01
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,194.929,638.545)">
     9HG02
   </text> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0,-0.88,1.226,0,-101.753,1012.118)" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0,-0.88,1.226,0,-159.753,1085.118)" /> 
   <rect x="284.5" y="416" width="21.5" height="37.5" fill="none" stroke="#27fb06" transform="matrix(0,-0.88,1.226,0,-101.42,1085.618)" /> 
   <line x1="255.5" y1="718.5" x2="323.5" y2="718.5" stroke="#27fb06" stroke-dasharray="none" id="line-141" title="棉纺923线" transform="matrix(1,0,0,1,32,31)" /> 
   <line x1="359" y1="718" x2="379.5" y2="718" stroke="#27fb06" id="line-143" title="棉纺923线" transform="matrix(0.95,0,0,1,51,32)" /> 
   <line x1="415.5" y1="718.5" x2="440.5" y2="718.5" stroke="#27fb06" id="line-145" title="棉纺923线" transform="matrix(1,0,0,1,32.333,32.333)" /> 
   <line x1="440.5" y1="718.5" x2="440.5" y2="752" stroke="#27fb06" id="line-146" title="棉纺923线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="441" y1="752" x2="308" y2="752" stroke="#27fb06" id="line-147" title="棉纺923线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="308" y1="752" x2="308" y2="792" stroke="#27fb06" id="line-148" title="棉纺923线" transform="matrix(1,0,0,1,32.333,32)" /> 
   <line x1="307" y1="792" x2="322" y2="792" stroke="#27fb06" id="line-149" title="棉纺923线" transform="matrix(1,0,0,1,32.667,32)" /> 
   <line x1="358.5" y1="792" x2="380.5" y2="792" stroke="#27fb06" id="line-151" title="棉纺923线" transform="matrix(1,0,0,1,32,32)" /> 
   <rect x="533" y="742.5" width="21.5" height="12.5" fill="none" fill-opacity="0" stroke="#27fb06" transform="matrix(1,0,0,1,32,32)" /> 
   <rect x="533" y="742.5" width="21.5" height="12.5" fill="none" fill-opacity="0" stroke="#27fb06" transform="matrix(1,0,0,1,32,52.5)" /> 
   <rect x="533" y="742.5" width="21.5" height="12.5" fill="none" fill-opacity="0" stroke="#27fb06" transform="matrix(1,0,0,1,32,72.5)" /> 
   <rect x="533" y="742.5" width="21.5" height="12.5" fill="none" fill-opacity="0" stroke="#27fb06" transform="matrix(1,0,0,1,32,94)" /> 
   <rect x="578" y="727.5" width="29" height="97" fill="none" fill-opacity="0" stroke="#27fb06" transform="matrix(1,0,0,1,32.5,32)" /> 
   <path fill="#27fb06" fill-opacity="1" stroke="none" transform="matrix(1,0,0,1,33,42)" stroke-width="0.25" d="M 589.5574 748.4551 C 589.7463 749.7054 589.4371 750.4085 588.6296 750.5645 C 588.3239 750.6169 588.0016 750.6234 587.6628 750.584 C 587.611 750.3173 587.5392 750.0536 587.448 749.793 L 587.448 752.2734 L 586.7156 752.2734 L 586.7156 743.2598 L 589.5281 743.2598 L 589.5281 743.9434 C 589.0789 745.363 588.7957 746.2484 588.6785 746.5996 C 589.1994 747.3162 589.4924 747.9344 589.5574 748.4551 ZM 590.2507 745.4766 L 593.239 745.4766 L 593.239 749.5781 L 590.9539 749.5781 L 590.9539 750.2227 L 590.2507 750.2227 ZM 589.9382 743.377 L 595.9734 743.377 L 595.9734 744.0996 L 595.0847 744.0996 L 595.0847 750.7305 C 595.0847 751.6552 594.6453 752.1172 593.7664 752.1172 C 593.3953 752.1172 592.8908 752.1141 592.2527 752.1074 C 592.2136 751.8666 592.1617 751.5868 592.0964 751.2676 C 592.7214 751.3198 593.2195 751.3457 593.5906 751.3457 C 594.0789 751.3457 594.323 751.082 594.323 750.5547 L 594.323 744.0996 L 589.9382 744.0996 ZM 588.3464 749.8418 C 588.7892 749.7704 588.9391 749.305 588.7957 748.4453 C 588.7111 747.9573 588.4182 747.3845 587.9167 746.7266 C 588.2683 745.5614 588.5353 744.6337 588.7175 743.9434 L 587.448 743.9434 L 587.448 749.7637 C 587.7932 749.8485 588.0925 749.8748 588.3464 749.8418 ZM 592.5359 746.1699 L 590.9539 746.1699 L 590.9539 748.8848 M 587.1941 758.0156 L 587.1941 757.2734 L 588.3123 754.6758 L 586.3933 754.6758 L 586.3933 753.9336 L 588.6296 753.9336 L 589.2058 752.5957 L 590.0457 752.7715 L 589.5378 753.9336 L 595.7878 753.9336 L 595.7878 754.6758 L 589.2156 754.6758 L 588.0828 757.2734 L 591.0222 757.2734 L 591.0222 755.1348 L 591.8425 755.1348 L 591.8425 757.2734 L 595.3289 757.2734 L 595.3289 758.0156 L 591.8425 758.0156 L 591.8425 760.8965 C 591.8425 761.7104 591.4196 762.1172 590.573 762.1172 C 590.1433 762.1172 589.655 762.1141 589.1082 762.1074 C 589.0691 761.8535 589.0203 761.5605 588.9617 761.2285 C 589.3914 761.2841 589.8537 761.3134 590.3484 761.3164 C 590.7976 761.3198 591.0222 761.0887 591.0222 760.623 L 591.0222 758.0156 ZM 588.6199 758.6016 L 589.2742 759.0996 C 588.532 759.9724 587.6857 760.8708 586.7351 761.7949 C 586.566 761.6127 586.3805 761.4305 586.1785 761.248 C 587.0446 760.428 587.8582 759.5458 588.6199 758.6016 ZM 592.7898 759.2559 L 593.3367 758.7188 C 594.2351 759.4612 595.1335 760.2391 596.032 761.0527 L 595.4265 761.668 C 594.5348 760.7894 593.6559 759.9852 592.7898 759.2559 M 589.9285 766.2285 L 590.3484 765.6719 C 590.6481 765.8544 590.9459 766.0384 591.2419 766.2236 C 591.343 765.7845 591.3967 765.3044 591.4031 764.7832 L 590.2019 764.7832 L 590.2019 764.0801 L 591.4177 764.0801 C 591.4308 763.5399 591.4357 763.0486 591.4324 762.6055 L 592.1843 762.6055 C 592.1843 763.0291 592.1779 763.5204 592.1648 764.0801 L 594.4304 764.0801 C 594.3718 766.0076 594.4142 767.3128 594.5574 767.9961 C 594.6422 768.3806 594.7658 768.5726 594.9285 768.5723 C 595.0588 768.5726 595.1433 768.4618 595.1824 768.2402 C 595.241 767.9216 595.2932 767.4852 595.3386 766.9316 C 595.5861 767.0232 595.8269 767.1013 596.0613 767.166 C 595.9963 767.7458 595.9279 768.2048 595.8562 768.543 C 595.7195 769.1423 595.4167 769.4417 594.948 769.4414 C 594.3883 769.4417 594.0105 768.9891 593.8152 768.084 C 593.698 767.4788 593.6492 766.3787 593.6687 764.7832 L 592.1501 764.7832 C 592.1404 765.4637 592.0623 766.0872 591.9158 766.6533 C 592.3748 766.95 592.8258 767.2509 593.2683 767.5566 L 592.78 768.25 C 592.3961 767.954 592.025 767.6757 591.6667 767.415 C 591.2599 768.3885 590.6057 769.1454 589.7039 769.6855 C 589.5412 769.4841 589.3523 769.2723 589.1375 769.0508 C 590.0261 768.5823 590.653 767.8841 591.0173 766.9561 C 590.6398 766.6927 590.277 766.4501 589.9285 766.2285 ZM 586.364 766.6582 C 586.8718 766.5282 587.3732 766.3933 587.8679 766.2529 L 587.8679 764.7637 L 586.4812 764.7637 L 586.4812 764.0898 L 587.8679 764.0898 L 587.8679 762.6445 L 588.6101 762.6445 L 588.6101 764.0898 L 589.7625 764.0898 L 589.7625 764.7637 L 588.6101 764.7637 L 588.6101 766.0381 C 588.9684 765.9276 589.323 765.8153 589.6746 765.7012 C 589.6746 766.0009 589.6813 766.2484 589.6941 766.4434 C 589.6584 766.4568 589.2971 766.5706 588.6101 766.7852 L 588.6101 768.2207 C 588.6101 769.0087 588.2424 769.4026 587.5066 769.4023 C 587.2267 769.4026 586.924 769.3962 586.5984 769.3828 C 586.5724 769.1619 586.5334 768.8948 586.4812 768.582 C 586.8004 768.6345 587.09 768.6605 587.3503 768.6602 C 587.6955 768.6605 587.8679 768.4847 587.8679 768.1328 L 587.8679 767.0146 C 587.4773 767.1385 587.025 767.2802 586.5105 767.4395 ZM 593.9714 769.9688 L 594.5964 769.5977 C 595.0197 770.223 595.4396 770.8837 595.8562 771.5801 L 595.1628 771.9902 C 594.818 771.3457 594.4207 770.6722 593.9714 769.9688 ZM 587.4968 769.8223 L 588.1804 770.1152 C 587.8875 770.786 587.5295 771.4794 587.1062 772.1953 C 586.9109 772.0848 586.6863 771.9707 586.4324 771.8535 C 586.8816 771.1504 587.2365 770.4735 587.4968 769.8223 ZM 589.0886 770.2129 L 589.7332 769.9297 C 590.0328 770.4769 590.342 771.082 590.6609 771.7461 L 589.9382 772.0586 C 589.6584 771.3881 589.3752 770.7732 589.0886 770.2129 ZM 591.5691 770.1641 L 592.2136 769.8809 C 592.5457 770.4607 592.8582 771.0561 593.1511 771.668 L 592.4382 771.9707 C 592.191 771.3588 591.9011 770.7567 591.5691 770.1641 M 590.6707 775.1152 L 591.9402 775.1152 C 592.0803 774.7478 592.217 774.3636 592.3503 773.9629 L 589.8796 773.9629 L 589.8796 776.7754 C 589.8796 779.3343 589.3785 781.1669 588.3757 782.2734 C 588.2195 782.0717 588.0309 781.87 587.8093 781.668 C 588.7078 780.6658 589.157 779.038 589.157 776.7852 L 589.157 773.2988 L 595.9343 773.2988 L 595.9343 773.9629 L 593.1951 773.9629 C 593.0162 774.3538 592.8322 774.738 592.6433 775.1152 L 595.2214 775.1152 L 595.2214 779.1191 L 594.5183 779.1191 L 594.5183 778.8652 L 593.2585 778.8652 L 593.2585 781.1602 C 593.2585 781.8569 592.9201 782.2051 592.2429 782.2051 C 592.0217 782.2051 591.7385 782.202 591.3933 782.1953 C 591.361 782 591.3152 781.7754 591.2566 781.5215 C 591.5822 781.5477 591.8654 781.5605 592.1062 781.5605 C 592.4059 781.5605 592.5554 781.4043 592.5554 781.0918 L 592.5554 778.8652 L 591.3738 778.8652 L 591.3738 779.1191 L 590.6707 779.1191 ZM 587.3894 778.0254 C 587.6238 778.1755 587.8551 778.286 588.0828 778.3574 C 587.816 779.4646 587.5164 780.7308 587.1843 782.1563 L 586.4324 781.9023 C 586.8102 780.5681 587.1291 779.2757 587.3894 778.0254 ZM 591.3738 778.2207 L 594.5183 778.2207 L 594.5183 777.293 L 591.3738 777.293 ZM 594.5183 775.7598 L 591.3738 775.7598 L 591.3738 776.668 L 594.5183 776.668 ZM 595.9148 781.3359 L 595.2996 781.8047 C 594.8375 781.1083 594.3361 780.4314 593.7957 779.7734 L 594.3621 779.373 C 594.9547 780.0634 595.4723 780.7177 595.9148 781.3359 ZM 589.782 781.4238 C 590.3356 780.8318 590.8269 780.1644 591.2566 779.4219 L 591.8816 779.8027 C 591.3869 780.5907 590.8791 781.2807 590.3582 781.873 ZM 586.7156 775.3008 C 587.2234 775.6658 587.7965 776.1019 588.4343 776.6094 C 588.2067 776.8831 588.0211 777.0946 587.8777 777.2441 C 587.2527 776.6912 586.7028 776.2288 586.2273 775.8574 ZM 587.1355 772.791 C 587.65 773.1755 588.1804 773.615 588.7273 774.1094 C 588.4996 774.3309 588.3043 774.5296 588.1414 774.7051 C 587.575 774.1454 587.0739 773.6864 586.6375 773.3281 M 587.6531 783.3574 L 595.7976 783.3574 L 595.7976 784.1582 L 588.532 784.1582 L 588.532 786.4531 C 588.532 787.9052 588.4246 789.012 588.2097 789.7734 C 588.0016 790.5486 587.5817 791.3393 586.95 792.1465 C 586.8004 791.9838 586.5627 791.7787 586.2371 791.5313 C 586.8166 790.822 587.1974 790.1384 587.3796 789.4805 C 587.5621 788.8622 587.6531 787.9119 587.6531 786.6289 " /> 
   <line x1="554" y1="748.5" x2="578.5" y2="748.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,32.5,32)" id="line-156" title="棉纺923线" /> 
   <line x1="554" y1="770" x2="578.5" y2="770" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,32.5,32)" /> 
   <line x1="553.5" y1="789" x2="578" y2="789" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,33,33)" /> 
   <line x1="554" y1="810.5" x2="577.5" y2="810.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="467.5" y1="752" x2="533" y2="752" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,32,29)" id="line-155" title="棉纺923线" /> 
   <line x1="468" y1="748.5" x2="468" y2="793" stroke="#27fb06" stroke-dasharray="3,3" id="line-154" title="棉纺923线" transform="matrix(1,0,0,0.98,32,47.213)" /> 
   <line x1="417.5" y1="792" x2="469" y2="792" stroke="#27fb06" stroke-dasharray="3,3" id="line-153" title="棉纺923线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-250.033,637.495)">
     棉纺923线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-250.033,657.995)">
     和平923线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-249.033,677.995)">
     和平928线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-250.033,698.995)">
     幸福9114线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,107.496,361.601)">
     4HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,133.496,361.601)">
     3HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,165.496,362.101)">
     2HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,200.496,363.101)">
     1HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,127.496,402.601)">
     4HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,159.496,403.601)">
     3HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,188.996,403.601)">
     2HG
   </text> 
   <line x1="793" y1="480" x2="847.5" y2="480" stroke="#27fb06" stroke-dasharray="3,3" id="line-239" title="青山914线" transform="matrix(1,0,0,1,32,31.333)" /> 
   <line x1="793" y1="498" x2="869" y2="498" stroke="#27fb06" stroke-dasharray="3,3" id="line-214" title="青山923线" transform="matrix(1,0,0,1,32.333,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-129.337,363.434)">
     7HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-39.004,362.601)">
     6HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-3.004,362.601)">
     5HG
   </text> 
   <line x1="755" y1="479.5" x2="776" y2="479.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-240" title="青山914线" transform="matrix(1,0,0,1,32,31.667)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-129.337,402.267)">
     7HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-16.004,405.101)">
     6HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,34.827,361.846)">
     2276
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,35.827,403.846)">
     2236
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,319.496,370.101)">
     5HG
   </text> 
   <line x1="1077.5" y1="489" x2="1112.5" y2="489" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.05,0,0,1,-21.35,31)" id="line-1087" title="青山911线" /> 
   <line x1="462.5" y1="300" x2="474" y2="300" stroke="#27fb06" stroke-dasharray="3,3" id="line-346" title="厂前924线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="491" y1="300.5" x2="500" y2="300.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-345" title="厂前924线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="517.5" y1="300.5" x2="527.5" y2="300.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-344" title="厂前924线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="544.5" y1="300.5" x2="553.5" y2="300.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-343" title="厂前924线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="569.5" y1="300.5" x2="581.5" y2="300.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-342" title="厂前924线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="598.5" y1="300.5" x2="608.5" y2="300.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-341" title="厂前924线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="664" y1="284.5" x2="672.5" y2="284.5" stroke="#27fb06" id="line-354" title="厂前915线" transform="matrix(0.85,0,0,1,132.95,32)" /> 
   <line x1="688" y1="284" x2="695" y2="284" stroke="#27fb06" stroke-dasharray="none" id="line-355" title="厂前915线" transform="matrix(1,0,0,1,32.667,32)" /> 
   <line x1="711.5" y1="284" x2="733" y2="284" stroke="#27fb06" stroke-dasharray="3,3" id="line-356" title="厂前915线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="749" y1="284.5" x2="758" y2="284.5" stroke="#27fb06" stroke-dasharray="none" id="line-357" title="厂前915线" transform="matrix(0.68,0,0,1,273.453,32)" /> 
   <line x1="774.5" y1="284.5" x2="783" y2="284.5" stroke="#27fb06" id="line-358" title="厂前915线" transform="matrix(1,0,0,1,31.667,32)" /> 
   <line x1="965" y1="286" x2="975" y2="286" stroke="#27fb06" stroke-dasharray="none" id="line-324" title="民主915线" transform="matrix(0.73,0,0,1,293.232,32.667)" /> 
   <line x1="990" y1="286" x2="998" y2="286" stroke="#27fb06" id="line-323" title="民主915线" transform="matrix(1,0,0,1,32.333,32.667)" /> 
   <line x1="1015.5" y1="285.5" x2="1025.5" y2="285.5" stroke="#27fb06" id="line-322" title="民主915线" transform="matrix(1,0,0,1,31.999,33)" /> 
   <line x1="1042.5" y1="285" x2="1053.5" y2="285" stroke="#27fb06" id="line-321" title="民主915线" transform="matrix(0.9999999,0,0,0.9999999,32.33228,32.66699)" /> 
   <line x1="1071" y1="284.5" x2="1083.5" y2="284.5" stroke="#27fb06" id="line-320" title="民主915线" transform="matrix(0.84,0,0,1,204.027,33.667)" /> 
   <line x1="1099" y1="285.5" x2="1112.5" y2="285.5" stroke="#27fb06" id="line-319" title="民主915线" transform="matrix(1,0,0,1,31.999,32.667)" /> 
   <line x1="654.5" y1="610.5" x2="654.5" y2="631.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0,-1,0.6539999,0,297.0333,1280.123)" id="line-171" title="棉纺9212线" /> 
   <circle cx="959.75" cy="563.25" r="5.75" fill="none" stroke="#27fb06" transform="matrix(0.563,0,0,0.64,325.63,333.74)" stroke-width="2" /> 
   <circle cx="959.75" cy="563.25" r="5.75" fill="none" stroke="#27fb06" transform="matrix(0.563,0,0,0.64,372.13,333.74)" stroke-width="2" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,643.198,221.397)" stroke-width="0.25">
     25
   </text> 
   <line x1="798.5" y1="285.5" x2="832" y2="285.5" stroke="#27fb06" id="line-359" title="厂前915线" transform="matrix(0.95,0,0,1,73.65,32)" /> 
   <line x1="869" y1="285.5" x2="949" y2="285.5" stroke="#27fb06" transform="matrix(1.23,0,0,1,-186.5,32)" id="line-325" title="民主915线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-133.205,168.847)">
     2244
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-94.705,188.347)">
     2234
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-402.319,151.803)">
     1HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-659.919,652.945)">
     2241
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-628.419,653.945)">
     2240
   </text> 
   <line x1="533" y1="770.5" x2="487" y2="770.5" stroke="#999999" stroke-dasharray="3,3" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="533" y1="770.5" x2="487" y2="770.5" stroke="#999999" stroke-dasharray="3,3" transform="matrix(1,0,0,1,31.5,52.5)" fill="#999999" /> 
   <line x1="533" y1="770.5" x2="487" y2="770.5" stroke="#999999" stroke-dasharray="3,3" transform="matrix(1,0,0,1,31.5,72.5)" /> 
   <line x1="654.5" y1="631" x2="672.5" y2="631" stroke="#27fb06" stroke-dasharray="3,3" id="line-172" title="棉纺9212线" transform="matrix(0.9999999,0,0,0.9999999,71.99988,-5.000029)" /> 
   <line x1="690.5" y1="632" x2="731" y2="632" stroke="#27fb06" stroke-dasharray="none" id="line-173" title="棉纺9212线" transform="matrix(0.739,0,0,1,248.435,-6.167)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,87,481.005)">
     60
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,45.334,477.505)">
     36
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,44.07,499.388)">
     2285
   </text> 
   <line x1="628" y1="480" x2="702.5" y2="480" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,32.333,30.833)" id="line-242" title="青山914线" /> 
   <line x1="719.5" y1="481" x2="738.5" y2="481" stroke="#27fb06" stroke-dasharray="3,3" id="line-241" title="青山914线" transform="matrix(1,0,0,1,32,30.333)" /> 
   <line x1="741" y1="500.5" x2="776" y2="500.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-215" title="青山923线" transform="matrix(1,0,0,1,32,29.333)" /> 
   <line x1="628" y1="500.5" x2="724" y2="500.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-216" title="青山923线" transform="matrix(1,0,0,1,31.667,29)" /> 
   <line x1="628.5" y1="483" x2="667" y2="483" stroke="#27fb06" stroke-dasharray="3,3" id="line-244" title="青山914线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="666.5" y1="483.5" x2="666.5" y2="507.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-245" title="青山914线" transform="matrix(1,0,0,0.864,32,97.488)" /> 
   <line x1="444.5" y1="552" x2="745" y2="552" stroke="#27fb06" transform="matrix(0.68,0,0,1,197.907,32)" id="line-84" title="迎春925线" /> 
   <line x1="428" y1="548" x2="667" y2="548" stroke="#27fb06" id="line-247" title="青山914线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="666.5" y1="548" x2="666.5" y2="518" stroke="#27fb06" id="line-246" title="青山914线" transform="matrix(1,0,0,0.9,32,86.8)" /> 
   <line x1="688" y1="500.5" x2="688" y2="513" stroke="#27fb06" transform="matrix(1,0,0,1.054,49,1.813)" id="line-217" title="青山923线" /> 
   <line x1="688.5" y1="524" x2="688.5" y2="552.5" stroke="#27fb06" transform="matrix(1,0,0,0.86,49.5,109.42)" id="line-218" title="青山923线" /> 
   <line x1="445.5" y1="552" x2="445.5" y2="566.5" stroke="#27fb06" transform="matrix(1,0,0,0.978,55.167,44.309)" id="line-85" title="迎春925线" /> 
   <line x1="446.5" y1="580.5" x2="446.5" y2="620" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,54.5,35)" id="line-86" title="迎春925线" /> 
   <line x1="443" y1="608" x2="443" y2="583.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-116" title="棉纺变914线" transform="matrix(0,1,-1,0,1145.75,196.25)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-299.548,482.324)">
     2108
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-220.714,512.991)">
     2281
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-324.903,231.735)" stroke-width="0.25">
     棉纺914线
   </text> 
   <line x1="754" y1="510" x2="754" y2="522" stroke="#27fb06" transform="matrix(1,0,0,1,32.667,28.333)" id="line-222" title="青山923线" /> 
   <line x1="754.5" y1="534" x2="754.5" y2="546" stroke="#27fb06" id="line-221" title="青山923线" transform="matrix(1,0,0,0.87,32,102.753)" /> 
   <line x1="720.5" y1="552" x2="745" y2="552" stroke="#27fb06" transform="matrix(0.623,0,0,1,313.497,32)" id="line-220" title="青山923线" /> 
   <line x1="265.5" y1="556.5" x2="265.5" y2="544" stroke="#27fb06" stroke-dasharray="2,2" id="line-122" title="棉纺变913线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="265.5" y1="544.5" x2="287.5" y2="544.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-121" title="棉纺变913线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="320" y1="545" x2="336.5" y2="534.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-119" title="棉纺变913线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="367" y1="534" x2="626.5" y2="534" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,32,34)" id="line-117" title="棉纺变913线" /> 
   <line x1="515.5" y1="552" x2="515.5" y2="502.5" stroke="#27fb06" id="line-83" title="迎春925线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="516" y1="503.5" x2="431" y2="503.5" stroke="#27fb06" transform="matrix(1,0,0,1,32,31.5)" id="line-82" title="迎春925线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-326.931,407.391)">
     2222
   </text> 
   <line x1="454" y1="353.5" x2="454" y2="334.5" stroke="#27fb06" id="line-53" title="迎春914线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="448" y1="330.5" x2="378.5" y2="330.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-54" title="迎春914线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="373.5" y1="336.5" x2="373.5" y2="347" stroke="#27fb06" id="line-55" title="迎春914线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="373" y1="358" x2="373" y2="391" stroke="#27fb06" id="line-56" title="迎春914线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-296.319,215.47)">
     1HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-376.819,217.47)">
     2HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-388.819,245.47)">
     3HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,526.786,43.497)">
     2332
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,478.786,20.997)">
     2333
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,521.346,29.747)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,491.179,7.58)">
     -2
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-564.102,143.122)">
     1PI
   </text> 
   <line x1="581" y1="183.5" x2="581" y2="147" stroke="#27fb06" stroke-opacity="1" transform="matrix(0.868,0,0,1.323,69.747,-104.309)" id="line-27" title="北重915线" /> 
   <line x1="692.5" y1="44" x2="811.5" y2="44" stroke="#27fb06" transform="matrix(0.72,0,0,0.97,-10.213,95.535)" id="line-26" title="北重915线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-27.919,455.945)">
     2172
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,603.794,453.7)" stroke-width="0.25">
     -7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,4.496,456.934)">
     9HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,19.496,419.601)">
     10HG
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-101.919,406.945)">
     2107
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-26.919,416.945)">
     2237
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,550.794,438.367)" stroke-width="0.25">
     -2
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,581.294,431.867)" stroke-width="0.25">
     20
   </text> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,32,25.5)" d="M 1135.258 331.457 C 1135.066 331.7905 1134.969 332.1499 1134.969 332.5351 C 1134.969 333.0769 1135.182 333.4968 1135.61 333.7949 C 1136.037 334.0932 1136.644 334.2422 1137.43 334.2422 C 1137.425 334.237 1137.425 334.2319 1137.43 334.2265 C 1136.925 333.9609 1136.672 333.5144 1136.672 332.8867 C 1136.672 332.3789 1136.846 331.9585 1137.196 331.625 C 1137.544 331.2917 1137.998 331.125 1138.555 331.125 C 1139.149 331.125 1139.636 331.3073 1140.018 331.6718 C 1140.399 332.0366 1140.59 332.5092 1140.59 333.0898 C 1140.59 333.6914 1140.354 334.1616 1139.881 334.5 C 1139.409 334.8386 1138.72 335.0078 1137.817 335.0078 C 1136.7 335.0078 1135.84 334.789 1135.239 334.3515 C 1134.637 333.914 1134.337 333.3086 1134.337 332.5351 C 1134.337 332.1108 1134.405 331.7514 1134.544 331.457 ZM 1138.653 331.8984 C 1138.246 331.8984 1137.924 332.0027 1137.686 332.2109 C 1137.448 332.4194 1137.328 332.707 1137.329 333.0742 C 1137.328 333.3921 1137.437 333.6589 1137.655 333.875 C 1137.872 334.0913 1138.136 334.1992 1138.446 334.1992 C 1138.88 334.1992 1139.24 334.0918 1139.526 333.8769 C 1139.811 333.6621 1139.953 333.3789 1139.954 333.0273 C 1139.953 332.7019 1139.83 332.4323 1139.582 332.2187 C 1139.335 332.0053 1139.025 331.8984 1138.653 331.8984 M 1134.438 339.6328 L 1134.438 336.164 L 1135.098 336.164 L 1135.098 337.5195 L 1139.692 337.5195 L 1139.29 336.1289 L 1139.993 336.1289 L 1140.618 338.2812 L 1135.098 338.2812 M 1140.223 344.4179 L 1134.438 342.0508 L 1134.438 341.2578 L 1139.813 343.5078 L 1139.813 340.4843 L 1140.489 340.4843 M 1136.54 347.7187 L 1136.54 345.4179 L 1137.129 345.4179 M 1140.223 352.5703 L 1134.438 350.2031 L 1134.438 349.4101 L 1139.813 351.6601 L 1139.813 348.6367 L 1140.489 348.6367 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,20.5,24)" d="M 1135.258 331.457 C 1135.066 331.7905 1134.969 332.1499 1134.969 332.5351 C 1134.969 333.0769 1135.182 333.4968 1135.61 333.7949 C 1136.037 334.0932 1136.644 334.2422 1137.43 334.2422 C 1137.425 334.237 1137.425 334.2319 1137.43 334.2265 C 1136.925 333.9609 1136.672 333.5144 1136.672 332.8867 C 1136.672 332.3789 1136.846 331.9585 1137.196 331.625 C 1137.544 331.2917 1137.998 331.125 1138.555 331.125 C 1139.149 331.125 1139.636 331.3073 1140.018 331.6718 C 1140.399 332.0366 1140.59 332.5092 1140.59 333.0898 C 1140.59 333.6914 1140.354 334.1616 1139.881 334.5 C 1139.409 334.8386 1138.72 335.0078 1137.817 335.0078 C 1136.7 335.0078 1135.84 334.789 1135.239 334.3515 C 1134.637 333.914 1134.337 333.3086 1134.337 332.5351 C 1134.337 332.1108 1134.405 331.7514 1134.544 331.457 ZM 1138.653 331.8984 C 1138.246 331.8984 1137.924 332.0027 1137.686 332.2109 C 1137.448 332.4194 1137.328 332.707 1137.329 333.0742 C 1137.328 333.3921 1137.437 333.6589 1137.655 333.875 C 1137.872 334.0913 1138.136 334.1992 1138.446 334.1992 C 1138.88 334.1992 1139.24 334.0918 1139.526 333.8769 C 1139.811 333.6621 1139.953 333.3789 1139.954 333.0273 C 1139.953 332.7019 1139.83 332.4323 1139.582 332.2187 C 1139.335 332.0053 1139.025 331.8984 1138.653 331.8984 M 1134.438 339.6328 L 1134.438 336.164 L 1135.098 336.164 L 1135.098 337.5195 L 1139.692 337.5195 L 1139.29 336.1289 L 1139.993 336.1289 L 1140.618 338.2812 L 1135.098 338.2812 M 1135.368 340.8086 C 1135.102 341.2148 1134.969 341.6382 1134.969 342.0781 C 1134.969 342.4948 1135.086 342.8308 1135.319 343.0859 C 1135.552 343.3413 1135.861 343.4687 1136.247 343.4687 C 1136.634 343.4687 1136.935 343.3393 1137.149 343.08 C 1137.362 342.821 1137.469 342.4453 1137.469 341.9531 C 1137.469 341.7163 1137.451 341.3972 1137.415 340.9961 L 1140.489 340.9961 L 1140.489 343.9726 L 1139.813 343.9726 L 1139.813 341.707 L 1138.102 341.707 C 1138.115 341.9336 1138.121 342.1042 1138.122 342.2187 C 1138.121 342.8569 1137.96 343.3542 1137.637 343.7109 C 1137.314 344.0678 1136.869 344.2461 1136.301 344.2461 C 1135.715 344.2461 1135.241 344.0547 1134.879 343.6718 C 1134.517 343.289 1134.337 342.7605 1134.337 342.0859 C 1134.337 341.521 1134.42 341.0952 1134.587 340.8086 M 1136.54 347.7187 L 1136.54 345.4179 L 1137.129 345.4179 M 1140.223 352.5703 L 1134.438 350.2031 L 1134.438 349.4101 L 1139.813 351.6601 L 1139.813 348.6367 L 1140.489 348.6367 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,10.5,25)" d="M 1135.258 331.457 C 1135.066 331.7905 1134.969 332.1499 1134.969 332.5351 C 1134.969 333.0769 1135.182 333.4968 1135.61 333.7949 C 1136.037 334.0932 1136.644 334.2422 1137.43 334.2422 C 1137.425 334.237 1137.425 334.2319 1137.43 334.2265 C 1136.925 333.9609 1136.672 333.5144 1136.672 332.8867 C 1136.672 332.3789 1136.846 331.9585 1137.196 331.625 C 1137.544 331.2917 1137.998 331.125 1138.555 331.125 C 1139.149 331.125 1139.636 331.3073 1140.018 331.6718 C 1140.399 332.0366 1140.59 332.5092 1140.59 333.0898 C 1140.59 333.6914 1140.354 334.1616 1139.881 334.5 C 1139.409 334.8386 1138.72 335.0078 1137.817 335.0078 C 1136.7 335.0078 1135.84 334.789 1135.239 334.3515 C 1134.637 333.914 1134.337 333.3086 1134.337 332.5351 C 1134.337 332.1108 1134.405 331.7514 1134.544 331.457 ZM 1138.653 331.8984 C 1138.246 331.8984 1137.924 332.0027 1137.686 332.2109 C 1137.448 332.4194 1137.328 332.707 1137.329 333.0742 C 1137.328 333.3921 1137.437 333.6589 1137.655 333.875 C 1137.872 334.0913 1138.136 334.1992 1138.446 334.1992 C 1138.88 334.1992 1139.24 334.0918 1139.526 333.8769 C 1139.811 333.6621 1139.953 333.3789 1139.954 333.0273 C 1139.953 332.7019 1139.83 332.4323 1139.582 332.2187 C 1139.335 332.0053 1139.025 331.8984 1138.653 331.8984 M 1134.438 339.6328 L 1134.438 336.164 L 1135.098 336.164 L 1135.098 337.5195 L 1139.692 337.5195 L 1139.29 336.1289 L 1139.993 336.1289 L 1140.618 338.2812 L 1135.098 338.2812 M 1137.622 341.8281 C 1137.957 341.1069 1138.444 340.7461 1139.083 340.7461 C 1139.528 340.7461 1139.89 340.9155 1140.17 341.2539 C 1140.45 341.5925 1140.59 342.0249 1140.59 342.5508 C 1140.59 343.0327 1140.458 343.4297 1140.196 343.7422 C 1139.932 344.0547 1139.593 344.2109 1139.176 344.2109 C 1138.504 344.2109 1137.987 343.8347 1137.626 343.082 L 1137.61 343.082 C 1137.292 343.9648 1136.75 344.4062 1135.985 344.4062 C 1135.482 344.4062 1135.082 344.2246 1134.784 343.8613 C 1134.485 343.498 1134.337 342.9909 1134.337 342.3398 C 1134.337 341.8061 1134.483 341.3711 1134.778 341.0351 C 1135.072 340.6992 1135.453 340.5312 1135.922 340.5312 C 1136.693 340.5312 1137.254 340.9636 1137.606 341.8281 ZM 1139.086 343.4375 C 1139.357 343.4375 1139.571 343.353 1139.727 343.1836 C 1139.883 343.0144 1139.961 342.7851 1139.961 342.4961 C 1139.961 342.2253 1139.88 341.9948 1139.717 341.8047 C 1139.554 341.6147 1139.347 341.5195 1139.094 341.5195 C 1138.589 341.5195 1138.205 341.8359 1137.942 342.4687 C 1138.21 343.1147 1138.591 343.4375 1139.086 343.4375 ZM 1137.258 342.4218 C 1136.956 341.6745 1136.524 341.3008 1135.961 341.3008 C 1135.67 341.3008 1135.43 341.4101 1135.243 341.6289 C 1135.055 341.8476 1134.961 342.1328 1134.962 342.4843 C 1134.961 342.8257 1135.054 343.103 1135.241 343.3164 C 1135.427 343.53 1135.659 343.6367 1135.938 343.6367 C 1136.524 343.6367 1136.964 343.2319 1137.258 342.4218 M 1136.54 347.7187 L 1136.54 345.4179 L 1137.129 345.4179 M 1140.223 352.5703 L 1134.438 350.2031 L 1134.438 349.4101 L 1139.813 351.6601 L 1139.813 348.6367 L 1140.489 348.6367 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,33,95)" d="M 1135.258 331.457 C 1135.066 331.7905 1134.969 332.1499 1134.969 332.5351 C 1134.969 333.0769 1135.182 333.4968 1135.61 333.7949 C 1136.037 334.0932 1136.644 334.2422 1137.43 334.2422 C 1137.425 334.237 1137.425 334.2319 1137.43 334.2265 C 1136.925 333.9609 1136.672 333.5144 1136.672 332.8867 C 1136.672 332.3789 1136.846 331.9585 1137.196 331.625 C 1137.544 331.2917 1137.998 331.125 1138.555 331.125 C 1139.149 331.125 1139.636 331.3073 1140.018 331.6718 C 1140.399 332.0366 1140.59 332.5092 1140.59 333.0898 C 1140.59 333.6914 1140.354 334.1616 1139.881 334.5 C 1139.409 334.8386 1138.72 335.0078 1137.817 335.0078 C 1136.7 335.0078 1135.84 334.789 1135.239 334.3515 C 1134.637 333.914 1134.337 333.3086 1134.337 332.5351 C 1134.337 332.1108 1134.405 331.7514 1134.544 331.457 ZM 1138.653 331.8984 C 1138.246 331.8984 1137.924 332.0027 1137.686 332.2109 C 1137.448 332.4194 1137.328 332.707 1137.329 333.0742 C 1137.328 333.3921 1137.437 333.6589 1137.655 333.875 C 1137.872 334.0913 1138.136 334.1992 1138.446 334.1992 C 1138.88 334.1992 1139.24 334.0918 1139.526 333.8769 C 1139.811 333.6621 1139.953 333.3789 1139.954 333.0273 C 1139.953 332.7019 1139.83 332.4323 1139.582 332.2187 C 1139.335 332.0053 1139.025 331.8984 1138.653 331.8984 M 1134.438 339.6328 L 1134.438 336.164 L 1135.098 336.164 L 1135.098 337.5195 L 1139.692 337.5195 L 1139.29 336.1289 L 1139.993 336.1289 L 1140.618 338.2812 L 1135.098 338.2812 M 1136.008 344.5234 L 1136.008 343.75 L 1134.438 343.75 L 1134.438 343.0078 L 1136.008 343.0078 L 1136.008 340.1875 L 1136.504 340.1875 L 1140.489 342.8633 L 1140.489 343.75 L 1136.614 343.75 L 1136.614 344.5234 ZM 1136.614 343.0078 L 1139.149 343.0078 C 1139.328 343.0078 1139.535 343.0132 1139.77 343.0234 L 1139.77 343.0078 C 1139.671 342.9714 1139.516 342.8945 1139.305 342.7773 M 1136.54 347.7187 L 1136.54 345.4179 L 1137.129 345.4179 M 1140.223 352.5703 L 1134.438 350.2031 L 1134.438 349.4101 L 1139.813 351.6601 L 1139.813 348.6367 L 1140.489 348.6367 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,6,96)" d="M 1135.258 331.457 C 1135.066 331.7905 1134.969 332.1499 1134.969 332.5351 C 1134.969 333.0769 1135.182 333.4968 1135.61 333.7949 C 1136.037 334.0932 1136.644 334.2422 1137.43 334.2422 C 1137.425 334.237 1137.425 334.2319 1137.43 334.2265 C 1136.925 333.9609 1136.672 333.5144 1136.672 332.8867 C 1136.672 332.3789 1136.846 331.9585 1137.196 331.625 C 1137.544 331.2917 1137.998 331.125 1138.555 331.125 C 1139.149 331.125 1139.636 331.3073 1140.018 331.6718 C 1140.399 332.0366 1140.59 332.5092 1140.59 333.0898 C 1140.59 333.6914 1140.354 334.1616 1139.881 334.5 C 1139.409 334.8386 1138.72 335.0078 1137.817 335.0078 C 1136.7 335.0078 1135.84 334.789 1135.239 334.3515 C 1134.637 333.914 1134.337 333.3086 1134.337 332.5351 C 1134.337 332.1108 1134.405 331.7514 1134.544 331.457 ZM 1138.653 331.8984 C 1138.246 331.8984 1137.924 332.0027 1137.686 332.2109 C 1137.448 332.4194 1137.328 332.707 1137.329 333.0742 C 1137.328 333.3921 1137.437 333.6589 1137.655 333.875 C 1137.872 334.0913 1138.136 334.1992 1138.446 334.1992 C 1138.88 334.1992 1139.24 334.0918 1139.526 333.8769 C 1139.811 333.6621 1139.953 333.3789 1139.954 333.0273 C 1139.953 332.7019 1139.83 332.4323 1139.582 332.2187 C 1139.335 332.0053 1139.025 331.8984 1138.653 331.8984 M 1134.438 339.6328 L 1134.438 336.164 L 1135.098 336.164 L 1135.098 337.5195 L 1139.692 337.5195 L 1139.29 336.1289 L 1139.993 336.1289 L 1140.618 338.2812 L 1135.098 338.2812 M 1139.711 344.0937 C 1139.873 343.7788 1139.953 343.4492 1139.954 343.1054 C 1139.953 342.582 1139.725 342.1616 1139.27 341.8437 C 1138.814 341.5261 1138.192 341.3647 1137.403 341.3593 L 1137.403 341.3789 C 1137.957 341.6655 1138.235 342.1225 1138.235 342.75 C 1138.235 343.2734 1138.064 343.6914 1137.723 344.0039 C 1137.382 344.3164 1136.929 344.4726 1136.364 344.4726 C 1135.773 344.4726 1135.287 344.2924 1134.907 343.9316 C 1134.526 343.571 1134.337 343.1108 1134.337 342.5508 C 1134.337 341.9362 1134.577 341.4538 1135.057 341.1035 C 1135.537 340.7534 1136.219 340.5781 1137.102 340.5781 C 1138.169 340.5781 1139.018 340.8081 1139.647 341.2675 C 1140.276 341.7273 1140.59 342.332 1140.59 343.082 C 1140.59 343.5117 1140.531 343.8491 1140.415 344.0937 ZM 1136.418 341.4062 C 1136.02 341.4062 1135.679 341.5124 1135.395 341.7246 C 1135.111 341.937 1134.969 342.2187 1134.969 342.5703 C 1134.969 342.9038 1135.091 343.1745 1135.336 343.3828 C 1135.581 343.5913 1135.896 343.6953 1136.282 343.6953 C 1136.698 343.6953 1137.022 343.5971 1137.254 343.4004 C 1137.486 343.2038 1137.602 342.9245 1137.602 342.5625 C 1137.602 342.2187 1137.485 341.9402 1137.25 341.7265 C 1137.016 341.5132 1136.739 341.4062 1136.418 341.4062 M 1136.54 347.7187 L 1136.54 345.4179 L 1137.129 345.4179 M 1140.223 352.5703 L 1134.438 350.2031 L 1134.438 349.4101 L 1139.813 351.6601 L 1139.813 348.6367 L 1140.489 348.6367 " /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,342.595,300.804)" stroke-width="0.25">
     928-7
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,331.428,334.137)" stroke-width="0.25">
     924-7
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,310.094,338.47)" stroke-width="0.25">
     925-7
   </text> 
   <line x1="388" y1="408.5" x2="388" y2="446" stroke="#27fb06" transform="matrix(1,0,0,2.109,36.667,-418.359)" id="line-49" title="迎春917线" /> 
   <line x1="389" y1="464.5" x2="389" y2="491.5" stroke="#27fb06" transform="matrix(0,-1,0.94,0,-37.98,877.001)" id="line-1042" title="迎春917线" /> 
   <line x1="389.5" y1="491" x2="338" y2="491" stroke="#27fb06" id="line-50" title="迎春917线" transform="matrix(0.9999999,0,0,0.9999999,34.99997,30.99931)" /> 
   <line x1="389" y1="464.5" x2="389" y2="491.5" stroke="#27fb06" transform="matrix(0,-1,1,0,-110.667,877)" id="line-1043" title="迎春917线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,233.117,379.91)" stroke-width="0.25">
     2138
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,236.603,358.437)" stroke-width="0.25">
     -1
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,275.19,396.777)" stroke-width="0.25">
     28
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,478.746,160.482)">
     51北-1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,477.412,191.982)">
     51南-1
   </text> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,18,30.5)" d="M 1050.258 568.457 C 1050.066 568.7905 1049.969 569.1498 1049.969 569.5351 C 1049.969 570.0768 1050.182 570.4968 1050.61 570.7949 C 1051.037 571.0932 1051.644 571.2421 1052.43 571.2421 C 1052.425 571.237 1052.425 571.2319 1052.43 571.2265 C 1051.925 570.9609 1051.672 570.5143 1051.672 569.8867 C 1051.672 569.3788 1051.846 568.9584 1052.196 568.6249 C 1052.544 568.2917 1052.998 568.1249 1053.555 568.1249 C 1054.149 568.1249 1054.636 568.3073 1055.018 568.6718 C 1055.399 569.0366 1055.59 569.5092 1055.59 570.0898 C 1055.59 570.6913 1055.354 571.1616 1054.881 571.4999 C 1054.409 571.8386 1053.72 572.0078 1052.817 572.0078 C 1051.7 572.0078 1050.84 571.789 1050.239 571.3515 C 1049.637 570.914 1049.337 570.3085 1049.337 569.5351 C 1049.337 569.1108 1049.405 568.7514 1049.544 568.457 ZM 1053.653 568.8984 C 1053.246 568.8984 1052.924 569.0026 1052.686 569.2109 C 1052.448 569.4194 1052.328 569.707 1052.329 570.0742 C 1052.328 570.392 1052.437 570.6589 1052.655 570.8749 C 1052.872 571.0912 1053.136 571.1992 1053.446 571.1992 C 1053.88 571.1992 1054.24 571.0917 1054.526 570.8769 C 1054.811 570.662 1054.953 570.3788 1054.954 570.0273 C 1054.953 569.7018 1054.83 569.4323 1054.582 569.2187 C 1054.335 569.0053 1054.025 568.8984 1053.653 568.8984 M 1049.438 576.6328 L 1049.438 573.164 L 1050.098 573.164 L 1050.098 574.5195 L 1054.692 574.5195 L 1054.29 573.1288 L 1054.993 573.1288 L 1055.618 575.2812 L 1050.098 575.2812 M 1050.45 577.6757 C 1050.129 578.0898 1049.969 578.5573 1049.969 579.0781 C 1049.969 579.4948 1050.071 579.8249 1050.276 580.0683 C 1050.48 580.312 1050.754 580.4335 1051.098 580.4335 C 1051.864 580.4335 1052.246 579.8854 1052.247 578.789 L 1052.247 578.2851 L 1052.879 578.2851 L 1052.879 578.7656 C 1052.879 579.737 1053.239 580.2226 1053.958 580.2226 C 1054.621 580.2226 1054.953 579.8515 1054.954 579.1093 C 1054.953 578.685 1054.81 578.2851 1054.524 577.9101 L 1055.247 577.9101 C 1055.476 578.3061 1055.59 578.7682 1055.59 579.2968 C 1055.59 579.8124 1055.455 580.2265 1055.186 580.539 C 1054.916 580.8515 1054.567 581.0078 1054.137 581.0078 C 1053.345 581.0078 1052.836 580.6042 1052.61 579.7968 L 1052.594 579.7968 C 1052.547 580.2343 1052.393 580.58 1052.131 580.8339 C 1051.87 581.0878 1051.543 581.2148 1051.153 581.2148 C 1050.609 581.2148 1050.17 581.019 1049.836 580.6269 C 1049.503 580.235 1049.337 579.7136 1049.337 579.0624 C 1049.337 578.4897 1049.443 578.0273 1049.657 577.6757 " /> 
   <text x="1019" y="481.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(1,0,0,1,22.833,35.833)">
     青山911线
   </text> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(0.9999999,0,0,0.9999999,-18.66712,-0.0008943779)" d="M 1050.258 568.457 C 1050.066 568.7905 1049.969 569.1498 1049.969 569.5351 C 1049.969 570.0768 1050.182 570.4968 1050.61 570.7949 C 1051.037 571.0932 1051.644 571.2421 1052.43 571.2421 C 1052.425 571.237 1052.425 571.2319 1052.43 571.2265 C 1051.925 570.9609 1051.672 570.5143 1051.672 569.8867 C 1051.672 569.3788 1051.846 568.9584 1052.196 568.6249 C 1052.544 568.2917 1052.998 568.1249 1053.555 568.1249 C 1054.149 568.1249 1054.636 568.3073 1055.018 568.6718 C 1055.399 569.0366 1055.59 569.5092 1055.59 570.0898 C 1055.59 570.6913 1055.354 571.1616 1054.881 571.4999 C 1054.409 571.8386 1053.72 572.0078 1052.817 572.0078 C 1051.7 572.0078 1050.84 571.789 1050.239 571.3515 C 1049.637 570.914 1049.337 570.3085 1049.337 569.5351 C 1049.337 569.1108 1049.405 568.7514 1049.544 568.457 ZM 1053.653 568.8984 C 1053.246 568.8984 1052.924 569.0026 1052.686 569.2109 C 1052.448 569.4194 1052.328 569.707 1052.329 570.0742 C 1052.328 570.392 1052.437 570.6589 1052.655 570.8749 C 1052.872 571.0912 1053.136 571.1992 1053.446 571.1992 C 1053.88 571.1992 1054.24 571.0917 1054.526 570.8769 C 1054.811 570.662 1054.953 570.3788 1054.954 570.0273 C 1054.953 569.7018 1054.83 569.4323 1054.582 569.2187 C 1054.335 569.0053 1054.025 568.8984 1053.653 568.8984 M 1049.438 576.6328 L 1049.438 573.164 L 1050.098 573.164 L 1050.098 574.5195 L 1054.692 574.5195 L 1054.29 573.1288 L 1054.993 573.1288 L 1055.618 575.2812 L 1050.098 575.2812 M 1051.008 581.5234 L 1051.008 580.7499 L 1049.438 580.7499 L 1049.438 580.0078 L 1051.008 580.0078 L 1051.008 577.1874 L 1051.504 577.1874 L 1055.489 579.8632 L 1055.489 580.7499 L 1051.614 580.7499 L 1051.614 581.5234 ZM 1051.614 580.0078 L 1054.149 580.0078 C 1054.328 580.0078 1054.535 580.0131 1054.77 580.0234 L 1054.77 580.0078 C 1054.671 579.9714 1054.516 579.8945 1054.305 579.7773 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(0.9999999,0,0,0.9999999,-1.166767,-3.167024)" d="M 1050.258 568.457 C 1050.066 568.7905 1049.969 569.1498 1049.969 569.5351 C 1049.969 570.0768 1050.182 570.4968 1050.61 570.7949 C 1051.037 571.0932 1051.644 571.2421 1052.43 571.2421 C 1052.425 571.237 1052.425 571.2319 1052.43 571.2265 C 1051.925 570.9609 1051.672 570.5143 1051.672 569.8867 C 1051.672 569.3788 1051.846 568.9584 1052.196 568.6249 C 1052.544 568.2917 1052.998 568.1249 1053.555 568.1249 C 1054.149 568.1249 1054.636 568.3073 1055.018 568.6718 C 1055.399 569.0366 1055.59 569.5092 1055.59 570.0898 C 1055.59 570.6913 1055.354 571.1616 1054.881 571.4999 C 1054.409 571.8386 1053.72 572.0078 1052.817 572.0078 C 1051.7 572.0078 1050.84 571.789 1050.239 571.3515 C 1049.637 570.914 1049.337 570.3085 1049.337 569.5351 C 1049.337 569.1108 1049.405 568.7514 1049.544 568.457 ZM 1053.653 568.8984 C 1053.246 568.8984 1052.924 569.0026 1052.686 569.2109 C 1052.448 569.4194 1052.328 569.707 1052.329 570.0742 C 1052.328 570.392 1052.437 570.6589 1052.655 570.8749 C 1052.872 571.0912 1053.136 571.1992 1053.446 571.1992 C 1053.88 571.1992 1054.24 571.0917 1054.526 570.8769 C 1054.811 570.662 1054.953 570.3788 1054.954 570.0273 C 1054.953 569.7018 1054.83 569.4323 1054.582 569.2187 C 1054.335 569.0053 1054.025 568.8984 1053.653 568.8984 M 1049.438 576.6328 L 1049.438 573.164 L 1050.098 573.164 L 1050.098 574.5195 L 1054.692 574.5195 L 1054.29 573.1288 L 1054.993 573.1288 L 1055.618 575.2812 L 1050.098 575.2812 M 1049.438 581.3242 L 1049.438 577.8554 L 1050.098 577.8554 L 1050.098 579.2109 L 1054.692 579.2109 L 1054.29 577.8203 L 1054.993 577.8203 L 1055.618 579.9726 L 1050.098 579.9726 " /> 
   <text x="999.5" y="520.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.9999999,0,0,0.9999999,17.6666,41.16591)">
     2202
   </text> 
   <text x="999.5" y="520.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(1,0,0,1,42.833,35.333)">
     2242
   </text> 
   <text x="999.5" y="520.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(1,0,0,1,67.667,57)">
     2921
   </text> 
   <text x="999.5" y="520.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(1,0,0,1,94,57)">
     2911
   </text> 
   <circle cx="959.75" cy="563.25" r="5.75" fill="none" stroke="#27fb06" transform="matrix(0.563,0,0,0.64,800.63,129.24)" stroke-width="2" /> 
   <text x="1179.5" y="369" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" baseline-shift="baseline" stroke-width="0.25" transform="matrix(1,0,0,1,28.5,35)">
     913
   </text> 
   <text x="1179.5" y="369" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" baseline-shift="baseline" stroke-width="0.25" transform="matrix(1,0,0,1,27.667,54.833)">
     924
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-396.06,-7.961)">
     2185
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-436.893,-8.128)">
     2174
   </text> 
   <line x1="432.5" y1="87" x2="432.5" y2="67" stroke="#27fb06" id="line-2005" title="青北934线" transform="matrix(1,0,0,1.49,32,-10.63)" /> 
   <line x1="415" y1="87" x2="415" y2="55.5" stroke="#27fb06" id="line-2007" title="青北934线" transform="matrix(1,0,0,0.95,32,36.35)" /> 
   <line x1="377.5" y1="86.5" x2="377.5" y2="56.5" stroke="#27fb06" id="line-2009" title="青北934线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-388.06,-60.128)">
     2184
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-351.56,-59.128)">
     2182
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-303.56,-60.461)">
     2181
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-285.06,-30.128)">
     -17
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-214.06,29.372)">
     33
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-312.56,-91.628)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-331.56,-92.128)">
     -2
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-352.727,-30.128)">
     -33
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-369.56,-93.128)">
     -2
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-393.893,-30.128)">
     -65
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-435.727,-29.628)">
     -99
   </text> 
   <line x1="1000" y1="621.5" x2="1054" y2="621.5" stroke="#27fb06" id="line-205" title="青山916线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="933.5" y1="570.5" x2="967.5" y2="570.5" stroke="#27fb06" transform="matrix(1.06,0,0,1,-25.147,30.167)" id="line-191" title="青山925线" /> 
   <line x1="967.5" y1="570.5" x2="967.5" y2="587" stroke="#27fb06" transform="matrix(1,0,0,1.12,32.333,-38.107)" id="line-190" title="青山925线" /> 
   <line x1="967.5" y1="587.5" x2="1028" y2="587.5" stroke="#27fb06" id="line-189" title="青山925线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="934.5" y1="574" x2="964" y2="574" stroke="#27fb06" transform="matrix(1,0,0,1,32.333,30)" id="line-186" title="青山926线" /> 
   <line x1="964" y1="574" x2="964" y2="591" stroke="#27fb06" transform="matrix(1,0,0,1.149,32,-54.893)" id="line-185" title="青山926线" /> 
   <line x1="963.5" y1="591" x2="1028.5" y2="591" stroke="#27fb06" transform="matrix(1,0,0,1,32,33.833)" id="line-184" title="青山926线" /> 
   <line x1="933" y1="578" x2="959.5" y2="578" stroke="#27fb06" transform="matrix(1,0,0,1,33.333,28.833)" id="line-181" title="青山915线" /> 
   <line x1="958.5" y1="578" x2="958.5" y2="600" stroke="#27fb06" transform="matrix(1,0,0,1.09,34,-22.597)" id="line-180" title="青山915线" /> 
   <line x1="959" y1="600" x2="1028.5" y2="600" stroke="#27fb06" transform="matrix(0.98,0,0,1,52.58,31.334)" id="line-179" title="青山915线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-17.519,470.345)">
     棉纺9112
   </text> 
   <line x1="445" y1="183" x2="445" y2="196.5" stroke="#27fb06" transform="matrix(1,0,0,1.42,32,-44.86)" id="line-18" title="北重918线" /> 
   <line x1="883" y1="691" x2="909.5" y2="691" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.548,0,0,1,431.316,32)" id="line-1142" title="幸福917线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,86.994,567.84)">
     42
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,77.994,545.84)">
     -8
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,142.494,565.34)">
     34
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,122.494,543.84)">
     64
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,221.703,285.804)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,653.306,110.252)">
     913-7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,653.806,130.252)">
     914-7
   </text> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,20,46.5)" d="M 1445.758 281.5898 C 1445.566 281.9233 1445.469 282.2827 1445.469 282.6679 C 1445.469 283.2097 1445.682 283.6296 1446.11 283.9277 C 1446.537 284.226 1447.144 284.375 1447.93 284.375 C 1447.925 284.3698 1447.925 284.3647 1447.93 284.3593 C 1447.425 284.0937 1447.172 283.6472 1447.172 283.0195 C 1447.172 282.5117 1447.346 282.0913 1447.696 281.7578 C 1448.044 281.4245 1448.498 281.2578 1449.055 281.2578 C 1449.649 281.2578 1450.136 281.4402 1450.518 281.8047 C 1450.899 282.1694 1451.09 282.6421 1451.09 283.2226 C 1451.09 283.8242 1450.854 284.2944 1450.381 284.6328 C 1449.909 284.9714 1449.22 285.1406 1448.317 285.1406 C 1447.2 285.1406 1446.34 284.9218 1445.739 284.4843 C 1445.137 284.0468 1444.837 283.4414 1444.837 282.6679 C 1444.837 282.2436 1444.905 281.8842 1445.044 281.5898 ZM 1449.153 282.0312 C 1448.746 282.0312 1448.424 282.1355 1448.186 282.3437 C 1447.948 282.5522 1447.828 282.8398 1447.829 283.207 C 1447.828 283.5249 1447.937 283.7917 1448.155 284.0078 C 1448.372 284.2241 1448.636 284.332 1448.946 284.332 C 1449.38 284.332 1449.74 284.2246 1450.026 284.0097 C 1450.311 283.7949 1450.453 283.5117 1450.454 283.1601 C 1450.453 282.8347 1450.33 282.5652 1450.082 282.3515 C 1449.835 282.1382 1449.525 282.0312 1449.153 282.0312 M 1444.938 289.7656 L 1444.938 286.2968 L 1445.598 286.2968 L 1445.598 287.6523 L 1450.192 287.6523 L 1449.79 286.2617 L 1450.493 286.2617 L 1451.118 288.414 L 1445.598 288.414 M 1444.938 294.457 L 1444.938 290.9883 L 1445.598 290.9883 L 1445.598 292.3437 L 1450.192 292.3437 L 1449.79 290.9531 L 1450.493 290.9531 L 1451.118 293.1054 L 1445.598 293.1054 M 1447.844 295.2968 C 1448.912 295.2968 1449.719 295.4741 1450.268 295.8281 C 1450.816 296.1823 1451.09 296.6953 1451.09 297.3672 C 1451.09 298.6484 1450.056 299.289 1447.989 299.289 C 1446.968 299.289 1446.187 299.1089 1445.647 298.748 C 1445.106 298.3874 1444.837 297.8816 1444.837 297.2304 C 1444.837 296.6159 1445.093 296.1401 1445.606 295.8027 C 1446.119 295.4655 1446.865 295.2968 1447.844 295.2968 ZM 1447.879 296.0781 C 1446.273 296.0781 1445.469 296.4858 1445.469 297.3008 C 1445.469 298.103 1446.286 298.5039 1447.919 298.5039 C 1449.608 298.5039 1450.453 298.1108 1450.454 297.3242 C 1450.453 296.4936 1449.595 296.0781 1447.879 296.0781 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,10.667,46.5)" d="M 1445.758 281.5898 C 1445.566 281.9233 1445.469 282.2827 1445.469 282.6679 C 1445.469 283.2097 1445.682 283.6296 1446.11 283.9277 C 1446.537 284.226 1447.144 284.375 1447.93 284.375 C 1447.925 284.3698 1447.925 284.3647 1447.93 284.3593 C 1447.425 284.0937 1447.172 283.6472 1447.172 283.0195 C 1447.172 282.5117 1447.346 282.0913 1447.696 281.7578 C 1448.044 281.4245 1448.498 281.2578 1449.055 281.2578 C 1449.649 281.2578 1450.136 281.4402 1450.518 281.8047 C 1450.899 282.1694 1451.09 282.6421 1451.09 283.2226 C 1451.09 283.8242 1450.854 284.2944 1450.381 284.6328 C 1449.909 284.9714 1449.22 285.1406 1448.317 285.1406 C 1447.2 285.1406 1446.34 284.9218 1445.739 284.4843 C 1445.137 284.0468 1444.837 283.4414 1444.837 282.6679 C 1444.837 282.2436 1444.905 281.8842 1445.044 281.5898 ZM 1449.153 282.0312 C 1448.746 282.0312 1448.424 282.1355 1448.186 282.3437 C 1447.948 282.5522 1447.828 282.8398 1447.829 283.207 C 1447.828 283.5249 1447.937 283.7917 1448.155 284.0078 C 1448.372 284.2241 1448.636 284.332 1448.946 284.332 C 1449.38 284.332 1449.74 284.2246 1450.026 284.0097 C 1450.311 283.7949 1450.453 283.5117 1450.454 283.1601 C 1450.453 282.8347 1450.33 282.5652 1450.082 282.3515 C 1449.835 282.1382 1449.525 282.0312 1449.153 282.0312 M 1444.938 289.7656 L 1444.938 286.2968 L 1445.598 286.2968 L 1445.598 287.6523 L 1450.192 287.6523 L 1449.79 286.2617 L 1450.493 286.2617 L 1451.118 288.414 L 1445.598 288.414 M 1444.938 294.457 L 1444.938 290.9883 L 1445.598 290.9883 L 1445.598 292.3437 L 1450.192 292.3437 L 1449.79 290.9531 L 1450.493 290.9531 L 1451.118 293.1054 L 1445.598 293.1054 M 1444.938 299.1484 L 1444.938 295.6797 L 1445.598 295.6797 L 1445.598 297.0351 L 1450.192 297.0351 L 1449.79 295.6445 L 1450.493 295.6445 L 1451.118 297.7968 L 1445.598 297.7968 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,-2.167,47)" d="M 1445.758 281.5898 C 1445.566 281.9233 1445.469 282.2827 1445.469 282.6679 C 1445.469 283.2097 1445.682 283.6296 1446.11 283.9277 C 1446.537 284.226 1447.144 284.375 1447.93 284.375 C 1447.925 284.3698 1447.925 284.3647 1447.93 284.3593 C 1447.425 284.0937 1447.172 283.6472 1447.172 283.0195 C 1447.172 282.5117 1447.346 282.0913 1447.696 281.7578 C 1448.044 281.4245 1448.498 281.2578 1449.055 281.2578 C 1449.649 281.2578 1450.136 281.4402 1450.518 281.8047 C 1450.899 282.1694 1451.09 282.6421 1451.09 283.2226 C 1451.09 283.8242 1450.854 284.2944 1450.381 284.6328 C 1449.909 284.9714 1449.22 285.1406 1448.317 285.1406 C 1447.2 285.1406 1446.34 284.9218 1445.739 284.4843 C 1445.137 284.0468 1444.837 283.4414 1444.837 282.6679 C 1444.837 282.2436 1444.905 281.8842 1445.044 281.5898 ZM 1449.153 282.0312 C 1448.746 282.0312 1448.424 282.1355 1448.186 282.3437 C 1447.948 282.5522 1447.828 282.8398 1447.829 283.207 C 1447.828 283.5249 1447.937 283.7917 1448.155 284.0078 C 1448.372 284.2241 1448.636 284.332 1448.946 284.332 C 1449.38 284.332 1449.74 284.2246 1450.026 284.0097 C 1450.311 283.7949 1450.453 283.5117 1450.454 283.1601 C 1450.453 282.8347 1450.33 282.5652 1450.082 282.3515 C 1449.835 282.1382 1449.525 282.0312 1449.153 282.0312 M 1444.938 289.7656 L 1444.938 286.2968 L 1445.598 286.2968 L 1445.598 287.6523 L 1450.192 287.6523 L 1449.79 286.2617 L 1450.493 286.2617 L 1451.118 288.414 L 1445.598 288.414 M 1445.758 290.9726 C 1445.566 291.3061 1445.469 291.6655 1445.469 292.0508 C 1445.469 292.5925 1445.682 293.0124 1446.11 293.3105 C 1446.537 293.6089 1447.144 293.7578 1447.93 293.7578 C 1447.925 293.7527 1447.925 293.7475 1447.93 293.7422 C 1447.425 293.4765 1447.172 293.03 1447.172 292.4023 C 1447.172 291.8945 1447.346 291.4741 1447.696 291.1406 C 1448.044 290.8073 1448.498 290.6406 1449.055 290.6406 C 1449.649 290.6406 1450.136 290.823 1450.518 291.1875 C 1450.899 291.5522 1451.09 292.0249 1451.09 292.6054 C 1451.09 293.207 1450.854 293.6772 1450.381 294.0156 C 1449.909 294.3542 1449.22 294.5234 1448.317 294.5234 C 1447.2 294.5234 1446.34 294.3047 1445.739 293.8672 C 1445.137 293.4297 1444.837 292.8242 1444.837 292.0508 C 1444.837 291.6264 1444.905 291.2671 1445.044 290.9726 ZM 1449.153 291.414 C 1448.746 291.414 1448.424 291.5183 1448.186 291.7265 C 1447.948 291.935 1447.828 292.2226 1447.829 292.5898 C 1447.828 292.9077 1447.937 293.1745 1448.155 293.3906 C 1448.372 293.6069 1448.636 293.7148 1448.946 293.7148 C 1449.38 293.7148 1449.74 293.6074 1450.026 293.3925 C 1450.311 293.1777 1450.453 292.8945 1450.454 292.5429 C 1450.453 292.2175 1450.33 291.948 1450.082 291.7343 C 1449.835 291.521 1449.525 291.414 1449.153 291.414 " /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,480.246,99.982)">
     48
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,549.346,519.477)">
     73
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,265.462,538.81)">
     16
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,144.494,531.84)">
     67
   </text> 
   <text x="480.6666" y="135.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-75.919,81.435)" stroke-width="0.25">
     北重918线
   </text> 
   <text x="480.6666" y="135.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-51.252,99.602)" stroke-width="0.25">
     北重912线
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,277.206,102.101)" stroke-width="0.25">
     12
   </text> 
   <line x1="793" y1="251" x2="793" y2="228.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,735.914,263.617)" stroke-width="0.25">
     59
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,748.414,281.617)" stroke-width="0.25">
     66
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,67.834,460.505)">
     23
   </text> 
   <line x1="1027.5" y1="653" x2="1027.5" y2="691.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-255" title="青山917线" transform="matrix(1,0,0,1.008,32,26.784)" /> 
   <line x1="1466" y1="307.5" x2="1466" y2="327" stroke="#27fb06" id="line-268" title="青园9110线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,733.306,229.432)">
     2329
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,707.886,230.402)">
     26
   </text> 
   <rect x="879.5" y="519.5" width="45.5" height="14" fill="none" stroke="#27fb06" stroke-dasharray="none" transform="matrix(0.651,0,0,0.97,693.072,22.575)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,726.706,251.162)">
     55
   </text> 
   <line x1="664.5" y1="20" x2="664.5" y2="4.5" stroke="#27fb06" id="line-1023" title="北重915线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,91.295,188.847)">
     2226
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,569.764,208.122)" stroke-width="0.25">
     16
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,66.53397,137.822)" stroke-width="0.25">
     63
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,184.457,217.729)" stroke-width="0.25">
     68-7
   </text> 
   <line x1="474.5" y1="339.5" x2="526.5" y2="339.5" stroke="#27fb06" id="line-60" title="迎春927线" transform="matrix(1,0,0,1,32.333,32)" /> 
   <line x1="480.5" y1="357.5" x2="527" y2="357.5" stroke="#27fb06" id="line-65" title="迎春913线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="542.5" y1="357.5" x2="707.5" y2="357.5" stroke="#27fb06" stroke-opacity="1" fill="none" transform="matrix(0.841,0,0,1,119.309,32)" id="line-66" title="迎春913线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-214.849,220.662)">
     2246
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-215.349,262.162)">
     2227
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,439.924,248.102)" stroke-width="0.25">
     24
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,440.424,275.102)" stroke-width="0.25">
     24
   </text> 
   <line x1="468" y1="202.5" x2="468" y2="173.5" stroke="#27fb06" transform="matrix(1,0,0,0.54,32,126.84)" id="line-30" title="北重916线" /> 
   <line x1="468" y1="157.5" x2="468" y2="129.5" stroke="#27fb06" transform="matrix(1,0,0,1.47,32,-28.63)" id="line-31" title="北重916线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-268.905,70.204)">
     2294
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-273.893,88.372)">
     8
   </text> 
   <line x1="958" y1="479.5" x2="997.5" y2="479.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-235" title="青山914线" transform="matrix(0.97,0,0,1,61.94,32)" /> 
   <line x1="997.5" y1="479.5" x2="997.5" y2="504" stroke="#27fb06" stroke-dasharray="3,3" id="line-234" title="青山914线" transform="matrix(1,0,0,0.998,32,32.684)" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,45.804,73.772)" stroke-width="0.25">
     112
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,85.971,88.105)" stroke-width="0.25">
     108
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,142.471,91.105)" stroke-width="0.25">
     89
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,180.138,102.772)" stroke-width="0.25">
     72
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,183.291,195.063)" stroke-width="0.25">
     2150
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,211.171,143.183)" stroke-width="0.25">
     -4
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,207.158,-9.927)">
     5
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,114.587,66.63)">
     -1
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,41.486,78.81)">
     24
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,18.986,113.81)">
     7
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,296.904,157.571)" stroke-width="0.25">
     27-1
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.9799999,0,0,0.97,323.9044,183.571)" stroke-width="0.25">
     27
   </text> 
   <line x1="1014.5" y1="504" x2="1014.5" y2="457.5" stroke="#27fb06" id="line-250" title="青山911线" transform="matrix(1,0,0,1.868,32,-362.106)" /> 
   <line x1="468" y1="202.5" x2="468" y2="173.5" stroke="#27fb06" transform="matrix(1,0,0,1,21,33)" id="line-24" title="北重915线" /> 
   <line x1="468" y1="157.5" x2="468" y2="129.5" stroke="#27fb06" transform="matrix(1,0,0,1.81,20.5,-96.17)" id="line-25" title="北重915线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-310.238,60.037)">
     2243
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-294.56,45.872)">
     11
   </text> 
   <line x1="468" y1="147" x2="501" y2="147" stroke="#27fb06" id="line-1026" title="北重916线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="468" y1="147" x2="501" y2="147" stroke="#27fb06" transform="matrix(1,0,0,1,32.5,48.5)" id="line-1024" title="北重916线" /> 
   <line x1="518.5" y1="147" x2="535" y2="147" stroke="#27fb06" id="line-1027" title="北重916线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="519" y1="164" x2="536" y2="164" stroke="#27fb06" id="line-1025" title="北重916线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-240.738,69.037)">
     2146
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-239.738,31.537)">
     2179
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,436.237,76.904)" stroke-width="0.25">
     -1
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,433.737,60.404)" stroke-width="0.25">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-253.56,35.872)">
     36
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-221.06,117.872)">
     11
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-211.393,118.372)">
     24
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-178.56,119.372)">
     16
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,29.986,109.31)">
     3#
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-38.257,121.547)">
     913-7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-38.257,133.547)">
     924-7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-37.757,145.047)">
     915-7
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,35.486,153.81)">
     11
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,58.243,129.547)">
     917-7
   </text> 
   <text x="729.9999" y="152" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,225.587,121.63)">
     7
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,18.256,-81.135)" stroke-width="0.25">
     民主915线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,344.353,284.247)">
     -6
   </text> 
   <line x1="1174" y1="331" x2="1157.5" y2="331" stroke="#27fb06" transform="matrix(1.64,0,0,1,-712,38)" id="line-1105" title="民主913线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,453.176,230.742)">
     7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,408.343,190.575)">
     -3
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.8679999,0,0,0.9699999,449.5591,161.087)">
     26
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,436.226,149.087)">
     41
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,459.226,148.587)">
     -1
   </text> 
   <line x1="918.5" y1="649" x2="918.5" y2="660" stroke="#27fb06" id="line-1069" title="青山925线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="918" y1="632" x2="918" y2="614.5" stroke="#27fb06" id="line-1070" title="青山925线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,152.904,539.63)">
     2178
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,169.827,504.84)">
     -1
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,580.624,278.897)" stroke-width="0.25">
     64
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,666.624,279.397)" stroke-width="0.25">
     61
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.8679999,0,0,0.9699999,-307.2812,-17.95196)" stroke-width="0.25">
     迎春913线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.8679999,0,0,0.9699999,-307.2814,-35.78503)" stroke-width="0.25">
     迎春927线
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="6" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-63.337,217.854)">
     厂前919
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="6" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.8679999,0,0,0.9699999,-63.96701,224.9923)">
     厂前9211
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,603.764,236.622)" stroke-width="0.25">
     16
   </text> 
   <line x1="901.5" y1="338" x2="901.5" y2="356.5" stroke="#27fb06" id="line-1124" title="厂前917线" transform="matrix(1,0,0,1.096,32,2.747)" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,793.414,279.617)" stroke-width="0.25">
     46
   </text> 
   <line x1="902.5" y1="278" x2="902.5" y2="327" stroke="#27fb06" stroke-dasharray="3,3" id="line-1125" title="厂前917线" transform="matrix(1,0,0,0.85,32,77.375)" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,837.914,263.617)" stroke-width="0.25">
     45
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,428.604,409.937)" stroke-width="0.25">
     -1
   </text> 
   <line x1="1142.5" y1="525.5" x2="1142.5" y2="510.5" stroke="#27fb06" stroke-dasharray="2,2" id="line-1122" title="民主916线" transform="matrix(1,0,0,0.69,32,190.1)" /> 
   <circle cx="959.75" cy="563.25" r="5.75" fill="none" stroke="#27fb06" transform="matrix(0.503,0,0,0.442,-99.705,171.421)" stroke-width="2" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,245.024,309.277)" stroke-width="0.25">
     26
   </text> 
   <line x1="351.5" y1="390.5" x2="373.5" y2="390.5" stroke="#27fb06" id="line-57" title="迎春914线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,469.013,322.837)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,533.68,323.337)">
     -15
   </text> 
   <line x1="51.5" y1="718.5" x2="96.5" y2="718.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-163" title="中心变923线" transform="matrix(0.97,0,0,1,33.53,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,325.187,526.735)">
     7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,278.187,522.235)">
     9
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-17.419,565.945)">
     58
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,360.757,252.102)" stroke-width="0.25">
     15
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,378.924,288.602)" stroke-width="0.25">
     2
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,379.924,303.602)" stroke-width="0.25">
     2
   </text> 
   <circle cx="959.75" cy="563.25" r="5.75" fill="none" stroke="#27fb06" transform="matrix(0.503,0,0,0.442,-131.039,238.921)" stroke-width="2" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,197.77,361.27)" stroke-width="0.25">
     -19
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,39.834,469.005)">
     11
   </text> 
   <text x="480.5" y="487.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" baseline-shift="baseline" stroke-width="0.25" transform="matrix(1,0,0,1,17,36.333)">
     BX201
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,339.771,402.937)" stroke-width="0.25">
     -1
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,711.937,341.937)" stroke-width="0.25">
     -1
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,635.271,342.437)" stroke-width="0.25">
     -2
   </text> 
   <line x1="700" y1="393.5" x2="700" y2="415" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,0.72,32,143.98)" id="line-1079" title="青山927线" /> 
   <line x1="699" y1="361" x2="699" y2="378" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,0.61,32,179.42)" id="line-1080" title="青山927线" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,578.414,298.117)" stroke-width="0.25">
     63
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,563.414,318.117)" stroke-width="0.25">
     69
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,530.914,319.117)" stroke-width="0.25">
     38
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,274.313,363.782)">
     9
   </text> 
   <text x="1149.5" y="619.5" xml:space="preserve" font-family="宋体" font-size="6" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,-121.246,17.83)">
     青山925线
   </text> 
   <text x="1149.5" y="619.5" xml:space="preserve" font-family="宋体" font-size="6" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.9799999,0,0,0.97,-120.5789,29.16266)">
     青山926线
   </text> 
   <text x="1149.5" y="619.5" xml:space="preserve" font-family="宋体" font-size="6" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.9799999,0,0,0.97,-120.5796,35.83003)">
     青山915线
   </text> 
   <circle cx="959.75" cy="563.25" r="5.75" fill="none" stroke="#27fb06" transform="matrix(0.729,0,0,0.64,-401.072,420.24)" stroke-width="2" /> 
   <line x1="266" y1="751.5" x2="266" y2="765.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-1054" title="棉纺变913线" transform="matrix(1,0,0,1,32,32)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-467.753,702.778)">
     -1
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-473.419,667.445)">
     -2
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-497.419,685.945)">
     100
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-468.919,641.945)">
     6
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,326.104,420.937)" stroke-width="0.25">
     26
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,343.271,473.437)" stroke-width="0.25">
     49
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,395.104,456.437)" stroke-width="0.25">
     62
   </text> 
   <line x1="469" y1="601" x2="486" y2="601" stroke="#27fb06" id="line-1052" title="迎春925线" transform="matrix(1,0,0,1,31.667,33)" /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,341.937,514.104)" stroke-width="0.25">
     65
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,410.346,636.172)">
     4504
   </text> 
   <path d="M 465.5 483.5 L 476.5 483.5 L 476.5 494 L 465.5 494 ZM 477 483.5 L 465.5 494 " fill="none" stroke="#27fb06" transform="matrix(1,0,0,1,32,33)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-145.895,0.917)">
     青北941线
   </text> 
   <line x1="580.5" y1="220" x2="580.5" y2="201" stroke="#27fb06" transform="matrix(0.868,0,0,0.97,58.914,13.29)" id="line-1033" title="北重911线" /> 
   <line x1="1192.5" y1="380" x2="1202.5" y2="380" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1,0,0,1,32,33.333)" id="line-289" title="民主924线" /> 
   <line x1="1187.5" y1="345" x2="1187.5" y2="359" stroke="#27fb06" stroke-dasharray="3,3" id="line-286" title="民主913线" transform="matrix(1,0,0,0.77,32,112.96)" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.6569999,0,0,0.6499999,195.567,382.33)">
     2290
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,194.567,409.73)">
     2291
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.6569999,0,0,0.6499999,194.667,427.73)">
     2288
   </text> 
   <line x1="789" y1="115" x2="812" y2="115" stroke="#27fb06" id="line-41" title="青北943线" transform="matrix(0.42,0,0,1,501.931,32)" /> 
   <line x1="828" y1="114" x2="856.5" y2="114" stroke="#27fb06" id="line-42" title="青北943线" transform="matrix(0.3559999,0,0,0.9999999,566.265,32.66666)" /> 
   <line x1="280" y1="270.5" x2="256" y2="270.5" stroke="#27fb06" transform="matrix(0.98,0,0,0.97,-34.286,9.965)" id="line-1018" title="北重918线" /> 
   <line x1="542.5" y1="357.5" x2="707.5" y2="357.5" stroke="#27fb06" stroke-opacity="1" fill="none" transform="matrix(1.104,0,0,1,-22.651,14.5)" id="line-61" title="迎春927线" /> 
   <line x1="979" y1="434" x2="1002" y2="434" stroke="#27fb06" transform="matrix(0.8679999,0,0,0.9699999,-14.716,29.30528)" id="line-226" title="青山913线" /> 
   <line x1="698.5" y1="357.5" x2="724.5" y2="357.5" stroke="#27fb06" id="line-67" title="迎春913线" transform="matrix(1,0,0,1,33,32)" /> 
   <line x1="741.5" y1="358" x2="767" y2="358" stroke="#27fb06" id="line-331" title="民主918线" transform="matrix(0.9999999,0,0,0.9999999,32.33332,32)" /> 
   <line x1="743.5" y1="341" x2="758.5" y2="341" stroke="#27fb06" id="line-62" title="迎春927线" transform="matrix(0.86,0,0,1,137.02,31.333)" /> 
   <line x1="775" y1="339" x2="785.5" y2="339" stroke="#27fb06" id="line-350" title="厂前924线" transform="matrix(1,0,0,1,32,33)" /> 
   <line x1="720.5" y1="552" x2="745" y2="552" stroke="#27fb06" transform="matrix(0.92,0,0,1,59.02,32)" id="line-219" title="青山923线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-68.086,433.778)">
     2238
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-468.086,685.278)">
     2239
   </text> 
   <line x1="265" y1="817" x2="265" y2="830" stroke="#27fb06" id="line-1057" title="棉纺变913线" transform="matrix(1,0,0,1,31.333,47.666)" /> 
   <line x1="265.3333" y1="781.9999" x2="265.3333" y2="790.9999" stroke="#27fb06" id="line-1055" title="棉纺变913线" transform="matrix(1,0,0,1,32,32)" /> 
   <line x1="264.6666" y1="806.6666" x2="264.6666" y2="814.9999" stroke="#27fb06" id="line-1056" title="棉纺变913线" transform="matrix(1,0,0,1,32,32.667)" /> 
   <line x1="687" y1="572.5" x2="702" y2="572.5" stroke="#27fb06" transform="matrix(1,0,0,1,27.5,30.333)" id="line-177" title="棉纺9112线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,346.399,515.267)">
     928
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-263.57,52.402)" stroke-width="0.25">
     迎春911线
   </text> 
   <line x1="1029.5" y1="457.5" x2="1041" y2="457.5" stroke="#27fb06" id="line-252" title="青山911线" transform="matrix(0.7049999,0,0,0.9999999,337.1736,32)" /> 
   <line x1="1055.5" y1="456" x2="1067.5" y2="456" stroke="#27fb06" transform="matrix(0.679,0,0,1,372.395,33.5)" id="line-1121" title="民主916线" /> 
   <line x1="1014" y1="510.5" x2="1024" y2="510.5" stroke="#27fb06" stroke-dasharray="none" id="line-1084" title="青山911线" transform="matrix(0.7,0,0,1,336.233,32)" /> 
   <line x1="1237.5" y1="348.5" x2="1216" y2="348.5" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(0.98,0,0,0.97,-30.639,1.465)" id="line-1104" title="民主913线" /> 
   <line x1="1308.5" y1="723.5" x2="1308.5" y2="705" stroke="#27fb06" id="line-297" title="民主922线" transform="matrix(1,0,0,0.663,32,278.321)" /> 
   <line x1="881" y1="639.5" x2="881" y2="627.5" stroke="#fffe01" id="line-388" title="幸福919线" transform="matrix(1,0,0,0.801,31.667,156.753)" /> 
   <line x1="882" y1="619.5" x2="882" y2="605.5" stroke="#27fb06" id="line-1144" title="青山915线" transform="matrix(1,0,0,0.502,32,336.069)" /> 
   <line x1="911.5" y1="241.5" x2="911.5" y2="213.5" stroke="#27fb06" stroke-dasharray="none" id="line-371" title="厂前918线" transform="matrix(1,0,0,0.91,31.333,54.023)" /> 
   <line x1="926.5" y1="250" x2="926.5" y2="212.5" stroke="#27fb06" stroke-dasharray="none" id="line-373" title="厂前928线" transform="matrix(1,0,0,0.91,31.667,55.167)" /> 
   <line x1="858" y1="229" x2="870" y2="229" stroke="#27fb06" id="line-377" title="厂前917线" transform="matrix(0.78,0,0,1,221.747,32)" /> 
   <line x1="883" y1="228" x2="892.5" y2="228" stroke="#27fb06" id="line-378" title="厂前917线" transform="matrix(0.72,0,0,1,280.57,32)" /> 
   <line x1="914" y1="692.5" x2="930.5" y2="692.5" stroke="#27fb06" transform="matrix(0.8,0,0,1,215.267,31)" id="line-1143" title="幸福917线" /> 
   <line x1="895.6666" y1="602.9999" x2="905.3333" y2="602.9999" stroke="#27fb06" id="line-1141" title="青山915线" transform="matrix(-0.021,-0.873,1,-0.024,329.505,1424.336)" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0,-0.97,0.98,0,87.1,263.776)" id="switch-2249=1" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,171.311,202.172)" id="switch-2215=1" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,214.444,72.51)" id="switch-2156" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,91.974,44.885)" id="switch-2275" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,214.934,111.795)" stroke="#00CC33" id="switch-2128" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,214.934,140.41)" id="switch-2117" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,-1.273,279.828)" id="switch-2249" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,-2.422,326.578)" id="switch-2250" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0,-0.97,0.98,0,86.274,311.142)" id="switch-2250=1" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.9799999,0,0,0.97,97.05064,113.27)" id="switch-2215" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,-3.566,375.91)" id="switch-2209" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0,-0.97,0.98,0,85.447,361.514)" id="switch-2209=1" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,212.888,390.018)" id="switch-2248=1" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.9799999,0,0,0.97,206.9673,302.42)" id="switch-2248" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,280.1109,389.851)" id="switch-2248=2" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,115.347,183.373)" id="switch-2158" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,246.481,64.285)" id="switch-2143" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,433.964,133.62)" id="switch-2152" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,341.874,63.8)" id="switch-2103" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,381.074,20.635)" id="switch-2183" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,446.734,20.15)" id="switch-2137" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,300.194,142.35)" id="switch-2113" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,124.824,286.525)" id="switch-2148" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,271.314,134.61)" id="switch-2235" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,320.314,134.61)" id="switch-2251" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,319.344,116.665)" id="switch-2264" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,182.654,296.468)" id="switch-2142" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0,-0.98,0.97,0,182.987,334.936)" id="switch-2295" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,183.144,365.732)" id="switch-2175" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.9799999,0,0,0.97,262.8273,164.68)" id="switch-2186" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,200.264,174.865)" id="switch-2187" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.9799999,0,0,0.97,278.5073,203.965)" stroke="#27fb06" id="switch-2150" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.9799999,0,0,0.97,476.4037,64.285)" id="switch-2221" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,526.214,-12.937)" id="switch-2220" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,716.204,12.855)" id="switch-2273" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,608.354,-15.24)" id="switch-2253" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,795.094,11.31)" id="switch-2274" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,814.558,137.893)" id="switch-2114=1" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,870.954,136.378)" id="switch-2114=2" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,802.964,48.28)" id="switch-2114" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,661.094,185.935)" id="switch-2127" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,535.674,163.705)" id="switch-2207" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,8.114,2.705)" id="switch-QB944" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,8.124,-9.98)" id="switch-QB933" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,8.624,-52.635)" id="switch-QB941" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,8.614,-34.245)" id="switch-QB934" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,53.084,-50.205)" id="switch-QB943" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,63.064,44.855)" id="switch-CQ922" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,697.615,117.635)" id="switch-2247" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,62.344,56.56)" id="switch-CQ913" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,969.534,194.685)" id="switch-2129" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,156.514,64.74)" id="switch-CQ917" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.9799999,0,0,0.97,186.2506,86.20167)" id="switch-CQ928" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1032.714,254.642)" id="switch-2265" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1031.954,315.295)" id="switch-2266" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,-0.97,0.98,0,579.034,946.575)" id="switch-CQ924" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,-0.97,0.98,0,591.284,946.59)" id="switch-CQ915" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,-0.97,0.98,0,605.004,946.59)" id="switch-CQ919" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,-0.97,0.98,0,617.254,946.575)" id="switch-CQ9211" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,872.731,251.171)" id="switch-2233=2" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,920.96,251.656)" id="switch-2233=1" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,858.805,163.225)" id="switch-2233" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(-0.03899999,-0.9689999,0.9789998,-0.039,-76.34701,1067.823)" id="switch-NP912" title="switch" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,-559.706,202.45)" fill="#27fb06" title="switch" id="switch-NP913" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,300.664,327.33)" id="switch-2116" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,184.634,228.33)" id="switch-2132" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,132.674,165.405)" id="switch-2162" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,91.02396,165.89)" id="switch-2279" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,418.11,330.814)" stroke="#27fb06" id="switch-2139" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,-252.986,203.66)" id="switch-YC926" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,0.97,-0.98,0,647.164,-304.285)" id="switch-YC918" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,0.97,-0.98,0,657.454,-304.315)" id="switch-YC915" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,442.784,281.695)" stroke="#27fb06" id="switch-2149" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,605.307,306.371)" id="switch-2133" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,3.284,-3.19)" id="switch-YC914" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,3.774,7.42)" id="switch-YC927" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,3.774,18.03)" id="switch-YC913" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,3.284,35.185)" id="switch-YC928" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,3.284,45.355)" id="switch-YC911" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,3.284,56.04)" id="switch-YC924" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,716.234,289.81)" id="switch-2230" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,531.994,340.735)" id="switch-2259" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,531.994,352.86)" id="switch-2204" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,733.844,368.845)" id="switch-2231" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,639.304,342.19)" id="switch-2223" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,829.81,369.904)" id="switch-2269" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,683.894,353.315)" id="switch-2267" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,722.115,342.675)" id="switch-2218" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,777.901,443.246)" id="switch-2212=2" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,776.504,353.83)" id="switch-2212" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,853.671,442.746)" id="switch-2212=1" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,765.694,259.265)" id="switch-2244" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,639.304,216.878)" id="switch-2234" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,561.884,410.715)" id="switch-2216" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,682.884,479.065)" id="switch-2155" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,405.291,435.382)" id="switch-2222" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1111.958,374.727)" id="switch-2277" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1614.864,149.625)" id="switch-2318" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,961.057,-132.988)" id="switch-QY913" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,961.547,-113.755)" id="switch-QY914" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,0.97,-0.98,0,1843.704,-155.875)" id="switch-QY919" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,0.97,-0.98,0,1855.995,-155.39)" id="switch-QY9111" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,0.97,-0.98,0,1865.794,-156.36)" id="switch-QY9110" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1614.864,250.99)" stroke="#27fb06" id="switch-2331" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1615.354,223.83)" stroke="#27fb06" id="switch-2352" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1491.904,134.125)" id="switch-2319" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1359.574,133.155)" id="switch-2349" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1399.575,133.564)" id="switch-2340" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1209.664,125.88)" id="switch-2303" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1392.404,132.665)" id="switch-2332" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1373.784,110.34)" id="switch-2333" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0,0.98,-0.97,0,1331.585,222.193)" id="switch-2211" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,740.163,22)" id="switch-MZ924" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1220.758,299.995)" id="switch-2147" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,740.183,1.993)" id="switch-MZ913" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0,0.98,-0.97,0,1316.504,224.133)" id="switch-2213" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1316.994,251.475)" id="switch-2268" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.014,-0.98,0.97,0.013,1119.909,416.691)" id="switch-2263" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1141.554,242.04)" id="switch-2167" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1381.654,249.93)" id="switch-2153" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1380.644,281.575)" id="switch-2151" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,770.115,857.7)" id="switch-MZ917" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,750.044,858.185)" id="switch-MZ918" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,760.334,858.185)" id="switch-MZ915" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1103.334,220.38)" id="switch-2257" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,914.194,286.415)" id="switch-2228" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,914.194,298.54)" id="switch-2136" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,0.97,-0.98,0,1557.094,-37.565)" id="switch-MZ914" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,0.97,-0.98,0,1544.199,-37.565)" id="switch-MZ916" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,741.007,45.34)" id="switch-MZ922" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1183.204,390.205)" id="switch-2205" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,1263.401,479.606)" id="switch-2205=2" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1261.604,390.69)" id="switch-2255" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1212.604,366.925)" id="switch-2131" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1247.884,367.41)" id="switch-2171" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1445.234,527.845)" id="switch-2110" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,1238.37,626.825)" id="switch-2232" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1437.514,607.47)" id="switch-2125" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0,0.97,-0.98,0,1349.152,685.893)" id="switch-4508=1" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,1242.004,785.573)" id="switch-4508" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0,0.97,-0.98,0,1349.966,756.453)" stroke="#27fb06" id="switch-4508=2" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1247.884,513.5)" id="switch-2115" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,1329.694,526.805)" id="switch-2119" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1332.164,576.66)" id="switch-2168" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1338.534,439.19)" id="switch-2140" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0,-0.98,0.97,0,1358.832,436.514)" id="switch-2334" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1490.767,308.725)" id="switch-2305" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1589.384,493.005)" id="switch-2323" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1484.064,503.695)" id="switch-2120" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,1030.814,391.175)" id="switch-2210" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,1095.481,479.106)" id="switch-2210=1" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,1044.211,480.091)" id="switch-2210=2" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,1018.714,499.47)" id="switch-2101" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,-0.97,0.98,0,807.844,925.645)" id="switch-MZ911" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,-0.97,0.98,0,796.564,925.645)" id="switch-MZ912" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1272.354,512.89)" id="switch-916" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1271.864,555.356)" id="switch-918" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,662.824,233.065)" id="switch-QS918" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,663.314,247.13)" id="switch-QS912" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1161.154,558.02)" id="switch-2161" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1162.134,594.39)" id="switch-2157" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,1076.404,828.845)" id="switch-4504" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1191.015,689.097)" id="switch-2124" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1016.115,711.275)" id="switch-2122" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1158.114,627.94)" id="switch-2256" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,733.13,1075.025)" id="switch-QS923" title="switch" /> 
   <image x="686.5" y="196" width="20" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,386.164,422.135)" id="switch-QS925" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.005,-0.918,0.97,0.005,714.277,1251.81)" id="switch-2201=3" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0,-0.689,0.794,0,906.129,640.676)" id="switch-2201=1" title="switch" /> 
   <image x="40.5" y="93.5" width="15" height="10" xlink:href="/images/open.gif" transform="matrix(0,-0.98,0.97,0,818.38,700.367)" id="switch-2201" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="15" height="10" transform="matrix(0,-0.97,0.98,0,904.9,682.137)" id="switch-2201=2" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,690.55,564.868)" id="switch-2160" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,740.874,550.619)" id="switch-2159" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,748.835,528.508)" id="switch-2112" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,717.704,1075.51)" id="switch-QS911" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,706.434,1075.51)" id="switch-QS914" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,0.97,-0.98,0,1473.284,134.155)" id="switch-QS913" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1037.674,466.35)" id="switch-D2921" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1064.543,465.865)" id="switch-D2911" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,919.094,624.945)" id="switch-2208" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_beiyong.gif" transform="matrix(0.98,0,0,0.97,831.874,668.595)" id="switch-2126" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_beiyong.gif" transform="matrix(0,-0.98,0.97,0,622.384,1500.34)" id="switch-XF919" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,152.214,636.525)" id="switch-XF917" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,931.864,593.363)" id="switch-2202" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1012.365,444.07)" id="switch-2242" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,767.694,413.215)" id="switch-2276" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,767.86,431.855)" id="switch-2236" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.9799999,0,0,0.97,701.3649,528.6382)" id="switch-2284" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,782.384,503.21)" id="switch-2282" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,688.784,505.513)" id="switch-2219" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,928.301,714.361)" id="switch-2208=1" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,-0.97,0.98,0,901.524,1326.688)" id="switch-QS917" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,678.364,592.14)" id="switch-2262" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,678.364,602.28)" id="switch-2260" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,853.834,681.855)" stroke="#27fb06" id="switch-2173" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,-253.476,220.71)" id="switch-YC919" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,306.064,-58.465)" id="switch-CQ924=25" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,748.874,274.895)" id="switch-2245" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,757.791,362.796)" id="switch-2245=1" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,816.031,362.114)" id="switch-2245=2" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.9799999,0,0,0.97,186.7407,77.1683)" id="switch-CQ918" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.9799999,0,0,0.97,185.7506,95.06832)" id="switch-CQ929" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,370.814,134.61)" id="switch-2206" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,-253.976,244.71)" id="switch-YC917" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,321.314,320.39)" stroke="#27fb06" id="switch-2217" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,395.798,400.903)" id="switch-MF926=4HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,395.553,420.753)" id="switch-MF926=4HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,396.298,441.403)" id="switch-MF926=3HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,396.053,461.253)" id="switch-MF926=3HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,396.298,482.403)" id="switch-MF926=2HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,396.053,502.253)" id="switch-MF926=2HG01" title="switch" /> 
   <image x="686.5" y="196" width="18" height="8" xlink:href="/images/m2_close.gif" transform="matrix(0.97,0,0,0.98,-41.745,391.994)" id="switch-MF926" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-1.125,0.98,0,459.494,1367.23)" id="switch-MF913" title="switch" /> 
   <image x="686.5" y="196" width="20" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,472.994,1258.245)" id="switch-MF923" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,474.903,486.764)" id="switch-MF923=1HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,494.753,487.009)" id="switch-MF923=1HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,340.903,500.264)" id="switch-MF913=1HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,360.753,500.509)" id="switch-MF913=1HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,256.403,488.264)" id="switch-MF923=2HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,276.253,488.509)" id="switch-MF923=2HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,292.903,509.264)" id="switch-MF913=2HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,312.753,509.509)" id="switch-MF913=2HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,338.798,563.903)" id="switch-MF923=3HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,338.553,583.753)" id="switch-MF923=3HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,363.298,560.903)" id="switch-MF913=3HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,363.053,580.753)" id="switch-MF913=3HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,384.903,520.764)" id="switch-2292" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.6569999,0,0,0.6499999,411.6188,520.9089)" id="switch-2293" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0,-0.98,0.97,0,266.478,662.175)" id="switch-2910" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,337.624,490.715)" id="switch-2911" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,335.624,538.215)" id="switch-2921" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.6499999,384.403,571.064)" id="switch-2289" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.6569999,0,0,0.6499999,412.053,570.909)" id="switch-QS925=3HG04" title="switch" /> 
   <image x="686.5" y="196" width="18" height="8" xlink:href="/images/m2_close.gif" transform="matrix(0.97,0,0,0.98,-51.245,398.994)" id="switch-MF911" title="switch" /> 
   <image x="686.5" y="196" width="18" height="8" xlink:href="/images/m2_close.gif" transform="matrix(0.97,0,0,0.98,-50.745,405.494)" id="switch-MF912" title="switch" /> 
   <image x="686.5" y="196" width="18" height="8" xlink:href="/images/m2_close.gif" transform="matrix(0.97,0,0,0.98,-50.245,413.494)" id="switch-MF921" title="switch" /> 
   <image x="686.5" y="196" width="18" height="8" xlink:href="/images/m2_close.gif" transform="matrix(0.97,0,0,0.98,-50.245,421.494)" id="switch-MF922" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.6569999,0,0,0.6499999,397.155,625.2499)" id="switch-QS925=2HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.6569999,0,0,0.6499999,420.105,625.295)" id="switch-QS925=2HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,450.805,625.2)" id="switch-QS925=1HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,470.355,625.045)" id="switch-QS925=1HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,483.874,591.875)" id="switch-2261" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,483.874,603.875)" id="switch-2258" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,668.625,675.874)" id="switch-2177" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,714.334,622.355)" id="switch-2163" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,338.298,653.903)" id="switch-MF923=4HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,338.053,673.753)" id="switch-MF923=4HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,394.625,638.374)" id="switch-2105" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,170.084,783.528)" id="switch-ZX922=2PI" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,-375.216,129.373)" id="switch-ZX917" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,0.98,-0.97,0,462.059,93.402)" id="switch-ZX922" title="switch" /> 
   <image x="40.5" y="93.5" width="15" height="10" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,87.374,654.375)" id="switch-ZX923=1HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="15" height="10" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,111.874,654.875)" id="switch-ZX923=1HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="15" height="10" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,50.202,780.46)" id="switch-ZX923=1HG03" title="switch" /> 
   <image x="40.5" y="93.5" width="15" height="10" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,50.202,754.293)" id="switch-ZX923=2HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="15" height="10" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,50.536,732.46)" id="switch-ZX923=2HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,740.834,626.355)" id="switch-2270" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.6569999,0,0,0.6499999,397.1527,510.509)" id="switch-2290" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.6569999,0,0,0.6499999,396.453,538.009)" id="switch-2291" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.657,0,0,0.6499999,396.253,555.5089)" id="switch-2288" title="switch" /> 
   <image x="40.5" y="93.5" width="15" height="10" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,210.374,652.375)" id="switch-MF923=5HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="15" height="10" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,234.874,652.375)" id="switch-MF923=5HG03" title="switch" /> 
   <image x="40.5" y="93.5" width="15" height="10" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,173.869,780.127)" id="switch-MF923=5HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,139.298,736.903)" id="switch-ZX922=3HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.657,-0.65,0,139.053,756.753)" id="switch-ZX922=3HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="15" height="10" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,44.374,684.375)" id="switch-ZX922=3HG03" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,72.874,681.375)" id="switch-2241" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,104.374,681.375)" id="switch-2240" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,394.125,662.374)" id="switch-2280" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,328.855,682.75)" id="switch-MF923=6HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,384.305,683.8)" id="switch-MF923=7HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,352.855,682.75)" id="switch-MF923=6HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,409.305,684.3)" id="switch-MF923=7HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,327.305,756.8)" id="switch-MF923=8HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,352.305,757.3)" id="switch-MF923=8HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,385.305,757.8)" id="switch-MF923=9HG01" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,410.305,758.3)" id="switch-MF923=9HG02" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,839.504,412.33)" id="switch-QS914=4HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,867.504,412.83)" id="switch-QS914=3HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,899.504,412.83)" id="switch-QS914=2HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,933.004,413.33)" id="switch-QS914=1HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,859.504,430.33)" id="switch-QS923=4HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,890.504,430.83)" id="switch-QS923=3HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,921.504,430.83)" id="switch-QS923=2HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,729.694,413.215)" id="switch-QS914=5HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,694.194,413.715)" id="switch-QS914=6HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,602.694,413.882)" id="switch-QS914=7HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,602.027,430.548)" id="switch-QS923=7HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,714.694,432.548)" id="switch-QS923=6HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1051.694,421.01)" id="switch-QS911=5HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1226.654,482.49)" id="switch-QS923=1HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,436.674,233.705)" id="switch-CQ924=7HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,465.674,233.705)" id="switch-CQ924=6PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,492.174,234.205)" id="switch-CQ924=5PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,519.174,234.205)" id="switch-CQ924=4PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,544.174,234.205)" id="switch-CQ924=3PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,572.674,234.705)" id="switch-CQ924=2PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,600.674,234.705)" id="switch-CQ924=1HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,663.174,217.705)" id="switch-CQ915=1PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,686.174,217.705)" id="switch-CQ915=2PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,724.174,219.205)" id="switch-CQ915=3PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,748.674,219.205)" id="switch-CQ915=4PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,773.8406,219.205)" id="switch-CQ915=5PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,939.674,220.205)" id="switch-MZ915=6PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,964.674,220.205)" id="switch-MZ915=5PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,989.674,220.205)" id="switch-MZ915=4HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1017.174,220.205)" id="switch-MZ915=3PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1045.674,220.205)" id="switch-MZ915=2PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,1073.674,220.205)" stroke="#27fb06" stroke-dasharray="3,3" id="switch-MZ915=1PI" title="switch" /> 
   <image x="473" y="395.5" width="20" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.9699998,0.016,-0.017,0.9799998,227.093,224.673)" id="switch-MF9212" title="switch" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,819.337,504.497)" id="switch-QS915=1HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,669.284,528.18)" id="switch-MF9212=1HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,330.494,203.18)" id="switch-YC915=1HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.9799999,0,0,0.97,777.6982,528.6379)" id="switch-2285" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,796.154,494.695)" id="switch-2107" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,835.154,502.195)" stroke="#27fb06" id="switch-2237" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.9799999,-0.97,0,597.384,557.6948)" id="switch-2108" title="switch" /> 
   <image x="473" y="395.5" width="20" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,-0.97,0.98,0,275.934,1098.01)" id="switch-MF914" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,522.1948,540.916)" id="switch-2281" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,704.194,485.048)" stroke="#27fb06" id="switch-2172" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,736.694,485.215)" stroke="#27fb06" id="switch-QS923=9HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,885.154,509.862)" stroke="#27fb06" id="switch-QS923=10HG" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,-0.98,0.97,0,65.54,937.216)" id="switch-YC925" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,452.403,297.764)" id="switch-YC914=1HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,371.903,299.431)" id="switch-YC914=2HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.657,0.65,0,339.264,416.597)" id="switch-YC914=3HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1214.48,638.154)" id="switch-QS928=1HG" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,302.634,232.385)" id="switch-NP913=1PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.657,0.65,0,1137.265,542.926)" id="switch-MZ911=PI" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,340.48,389.39)" stroke="#27fb06" id="switch-2138" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,339.407,20.135)" id="switch-2185" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,297.074,20.635)" id="switch-2174" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,507.865,29.574)" id="switch-2184" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,544.865,30.574)" id="switch-2182" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,563.365,30.574)" id="switch-2181" title="switch" /> 
   <image x="686.5" y="196" width="20" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,386.164,429.135)" id="switch-QS926" title="switch" /> 
   <image x="686.5" y="196" width="20" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0.98,0,0,0.97,386.164,435.635)" id="switch-QS915" title="switch" /> 
   <image x="686.5" y="196" width="20" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,-0.97,0.98,0,889.024,1321.855)" id="switch-QS916" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,0.97,-0.98,0,1482.784,133.155)" id="switch-QS927" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,-161.819,64.993)" id="switch-BZ911" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,270.534,920.575)" id="switch-BZ912" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,279.534,920.575)" id="switch-BZ918" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,290.034,920.575)" id="switch-BZ915" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,301.534,920.575)" id="switch-BZ916" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,0.9999999,-0.98,0,403.16,-353.073)" id="switch-2116=2" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1597.864,317.99)" stroke="#27fb06" id="switch-2329" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,824.174,219.205)" id="switch-2226" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.657,0,0,0.65,413.736,247.764)" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,712.791,380.296)" id="switch-2230=1" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,797.291,380.796)" id="switch-2230=2" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,517.674,271.705)" id="switch-2246" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,517.674,291.205)" id="switch-2227" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,598.365,163.074)" id="switch-2294" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,585.865,148.574)" id="switch-2243" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,492.634,97.955)" id="switch-2146" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,492.634,80.955)" id="switch-2179" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,851.394,721.745)" stroke="#27fb06" id="switch-2178" title="switch" /> 
   <image x="473" y="395.5" width="20" height="10" xlink:href="/images/m_close.gif" transform="matrix(0.98,0,0,0.97,-135.716,28.185)" id="switch-2217=1" title="switch" /> 
   <image x="473" y="395.5" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,0.98,-0.97,0,474.559,93.235)" id="switch-ZX923" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,274.721,770.351)" id="switch-2240=1" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,395.958,782.041)" stroke="#27fb06" id="switch-2239" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0,-0.98,0.97,0,287.226,815.609)" id="switch-2239=2" title="switch" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0,-0.98,0.97,0,286.559,865.775)" id="switch-2239=1" title="switch" /> 
   <image x="686.5" y="196" width="20" height="10" xlink:href="/images/m_close.gif" transform="matrix(1.125,0,0,0.9799999,-79.30103,404.375)" id="switch-MF9112" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/open.gif" transform="matrix(0.98,0,0,0.97,664.694,485.548)" stroke="#27fb06" id="switch-2238" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,-0.97,0.98,0,917.524,1326.856)" id="switch-QS928" title="switch" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m_close.gif" transform="matrix(0,-0.97,0.98,0,519.254,888.575)" id="switch-QB922" title="switch" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,-0.98,0.97,0,358.564,325.902)" id="switch-2121" title="switch" /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,31,24.667)" d="M 1490.958 291.6978 L 1490.958 292.5103 L 1494.114 292.5103 L 1494.114 291.6978 ZM 1492.146 286.9478 L 1492.896 287.2603 L 1492.614 287.4791 L 1492.614 288.0103 L 1494.646 288.0103 L 1495.114 287.5416 L 1495.739 288.1978 L 1492.614 288.1978 L 1492.614 288.8228 L 1494.271 288.8228 L 1494.677 288.4478 L 1495.208 289.0103 L 1492.614 289.0103 L 1492.614 289.8228 L 1495.114 289.8228 L 1495.583 289.3541 L 1496.208 290.0103 L 1489.896 290.0103 C 1489.626 290.0123 1489.376 290.0435 1489.146 290.1041 L 1488.864 289.8228 L 1492.177 289.8228 L 1492.177 289.0103 L 1490.771 289.0103 C 1490.501 289.0123 1490.251 289.0435 1490.021 289.1041 L 1489.739 288.8228 L 1492.177 288.8228 L 1492.177 288.1978 L 1490.083 288.1978 C 1489.813 288.1998 1489.563 288.231 1489.333 288.2916 L 1489.052 288.0103 L 1492.177 288.0103 C 1492.177 287.6373 1492.167 287.2838 1492.146 286.9478 ZM 1490.489 290.3228 L 1491.021 290.5728 L 1494.052 290.5728 L 1494.271 290.2916 L 1494.771 290.6666 L 1494.552 290.8541 L 1494.552 293.5103 C 1494.573 293.9283 1494.345 294.1978 1493.864 294.3228 C 1493.864 294.0318 1493.563 293.8228 1492.958 293.6978 L 1492.958 293.5728 C 1493.563 293.6158 1493.907 293.6314 1493.989 293.6197 C 1494.073 293.61 1494.114 293.5416 1494.114 293.4166 L 1494.114 292.6978 L 1490.958 292.6978 L 1490.958 294.1666 L 1490.489 294.3853 C 1490.511 293.9283 1490.521 293.2467 1490.521 292.3404 C 1490.521 291.4342 1490.511 290.7623 1490.489 290.3228 ZM 1490.958 290.7603 L 1490.958 291.5103 L 1494.114 291.5103 M 1489.521 302.2916 C 1489.542 301.9166 1489.552 301.5221 1489.552 301.1041 L 1489.552 296.2603 C 1489.552 295.9088 1489.542 295.5221 1489.521 295.1041 L 1490.021 295.3853 L 1495.146 295.3853 L 1495.364 295.0728 L 1495.833 295.4478 L 1495.583 295.6666 L 1495.583 300.6666 C 1495.583 301.065 1495.595 301.5123 1495.614 302.0103 L 1495.177 302.2291 L 1495.177 301.6666 L 1489.989 301.6666 L 1489.989 302.1353 ZM 1489.989 295.5728 L 1489.989 301.4791 L 1495.177 301.4791 L 1495.177 295.5728 ZM 1490.864 296.4166 L 1493.302 296.4166 L 1493.677 296.0416 L 1494.239 296.6041 L 1491.833 296.6041 C 1491.563 296.606 1491.333 296.6373 1491.146 296.6978 ZM 1490.177 297.7916 L 1493.864 297.7916 L 1494.302 297.3541 L 1494.927 297.9791 L 1493.239 297.9791 L 1493.239 300.0103 C 1493.22 300.3033 1493.376 300.44 1493.708 300.4166 L 1494.177 300.4166 C 1494.323 300.3971 1494.411 300.2467 1494.442 299.9654 C 1494.474 299.6842 1494.501 299.3873 1494.521 299.0728 L 1494.646 299.0728 C 1494.646 299.3248 1494.661 299.5865 1494.692 299.856 C 1494.724 300.1275 1494.833 300.2935 1495.021 300.3541 C 1494.896 300.6275 1494.657 300.7623 1494.302 300.7603 L 1493.364 300.7603 C 1492.97 300.7408 1492.792 300.5025 1492.833 300.0416 L 1492.833 297.9791 L 1491.958 297.9791 C 1491.938 299.0221 1491.771 299.7584 1491.458 300.1842 C 1491.146 300.6119 1490.739 300.9596 1490.239 301.2291 L 1490.177 301.1353 C 1490.636 300.8033 1490.974 300.4088 1491.192 299.9498 C 1491.411 299.4928 1491.521 298.8346 1491.521 297.9791 L 1491.208 297.9791 C 1490.938 297.981 1490.688 298.0123 1490.458 298.0728 M 1493.52 303.5103 C 1493.059 303.5103 1492.71 303.6021 1492.472 303.7838 C 1492.231 303.9673 1492.112 304.1978 1492.114 304.4752 C 1492.112 304.7974 1492.257 305.0767 1492.55 305.313 C 1492.841 305.5494 1493.112 305.6666 1493.364 305.6666 C 1493.862 305.6666 1494.263 305.5806 1494.565 305.4088 C 1494.866 305.2369 1495.018 304.9576 1495.02 304.5709 C 1495.018 304.2076 1494.878 303.94 1494.597 303.7681 C 1494.315 303.5963 1493.956 303.5103 1493.52 303.5103 ZM 1491.802 304.4009 C 1491.8 303.9791 1491.929 303.6431 1492.19 303.3892 C 1492.45 303.1373 1492.872 303.0103 1493.458 303.0103 C 1493.956 303.0103 1494.372 303.147 1494.706 303.4166 C 1495.038 303.688 1495.206 304.0728 1495.208 304.5728 C 1495.206 305.0943 1494.997 305.5005 1494.581 305.7916 C 1494.163 306.0845 1493.56 306.2291 1492.771 306.2291 C 1491.894 306.2291 1491.169 306.0572 1490.597 305.7134 C 1490.022 305.3697 1489.737 304.897 1489.739 304.2916 C 1489.737 304.022 1489.8 303.7877 1489.925 303.5884 C 1490.05 303.3912 1490.216 303.2916 1490.427 303.2916 C 1490.509 303.2916 1490.591 303.317 1490.675 303.3658 C 1490.757 303.4166 1490.8 303.5005 1490.802 303.6177 C 1490.8 303.7388 1490.751 303.8189 1490.653 303.858 C 1490.556 303.897 1490.442 303.9166 1490.315 303.9166 C 1490.226 303.9166 1490.155 303.9283 1490.103 303.9498 C 1490.048 303.9713 1490.011 303.9927 1489.991 304.0123 C 1489.968 304.0357 1489.95 304.0728 1489.94 304.1275 C 1489.929 304.1822 1489.925 304.2408 1489.927 304.3052 C 1489.925 304.6939 1490.136 305.0064 1490.558 305.2447 C 1490.978 305.483 1491.685 305.6236 1492.677 305.6666 C 1492.425 305.5611 1492.216 305.4029 1492.05 305.192 C 1491.882 304.981 1491.8 304.7173 1491.802 304.4009 M 1495.208 308.9478 L 1490.485 308.9478 C 1490.317 308.9478 1490.194 309.0005 1490.112 309.1041 C 1490.028 309.2095 1489.987 309.3541 1489.989 309.5416 L 1489.989 309.8541 L 1489.802 309.8541 L 1489.802 307.5728 L 1489.989 307.5728 L 1489.989 307.8541 C 1489.987 308.063 1490.028 308.2134 1490.112 308.3072 C 1490.194 308.4009 1490.317 308.4478 1490.485 308.4478 L 1494.241 308.4478 C 1494.321 308.4478 1494.388 308.4224 1494.44 308.3697 C 1494.491 308.3189 1494.518 308.2408 1494.52 308.1353 L 1494.52 307.5728 L 1494.708 307.5728 L 1494.708 307.8541 C 1494.706 308.1041 1494.747 308.3072 1494.831 308.4634 C 1494.913 308.6197 1495.04 308.7408 1495.208 308.8228 M 1495.208 312.9478 L 1490.485 312.9478 C 1490.317 312.9478 1490.194 313.0005 1490.112 313.1041 C 1490.028 313.2095 1489.987 313.3541 1489.989 313.5416 L 1489.989 313.8541 L 1489.802 313.8541 L 1489.802 311.5728 L 1489.989 311.5728 L 1489.989 311.8541 C 1489.987 312.063 1490.028 312.2134 1490.112 312.3072 C 1490.194 312.4009 1490.317 312.4478 1490.485 312.4478 L 1494.241 312.4478 C 1494.321 312.4478 1494.388 312.4224 1494.44 312.3697 C 1494.491 312.3189 1494.518 312.2408 1494.52 312.1353 L 1494.52 311.5728 L 1494.708 311.5728 L 1494.708 311.8541 C 1494.706 312.1041 1494.747 312.3072 1494.831 312.4634 C 1494.913 312.6197 1495.04 312.7408 1495.208 312.8228 M 1495.208 316.9478 L 1490.485 316.9478 C 1490.317 316.9478 1490.194 317.0005 1490.112 317.1041 C 1490.028 317.2095 1489.987 317.3541 1489.989 317.5416 L 1489.989 317.8541 L 1489.802 317.8541 L 1489.802 315.5728 L 1489.989 315.5728 L 1489.989 315.8541 C 1489.987 316.063 1490.028 316.2134 1490.112 316.3072 C 1490.194 316.4009 1490.317 316.4478 1490.485 316.4478 L 1494.241 316.4478 C 1494.321 316.4478 1494.388 316.4224 1494.44 316.3697 C 1494.491 316.3189 1494.518 316.2408 1494.52 316.1353 L 1494.52 315.5728 L 1494.708 315.5728 L 1494.708 315.8541 C 1494.706 316.1041 1494.747 316.3072 1494.831 316.4634 C 1494.913 316.6197 1495.04 316.7408 1495.208 316.8228 M 1493.427 321.2916 C 1493.427 321.5846 1493.448 321.9713 1493.489 322.4478 L 1494.958 322.2916 L 1495.364 321.8228 L 1495.989 322.3541 L 1493.521 322.6041 C 1493.583 323.2525 1493.688 323.7623 1493.833 324.1353 C 1494.292 323.7213 1494.657 323.2838 1494.927 322.8228 L 1495.489 323.3853 L 1495.208 323.4166 C 1494.813 323.7935 1494.417 324.1685 1494.021 324.5416 C 1494.396 325.065 1494.833 325.4283 1495.333 325.6353 L 1495.771 324.1353 L 1495.896 324.1666 C 1495.854 324.6471 1495.829 325.0435 1495.817 325.356 C 1495.808 325.6685 1495.849 325.9127 1495.942 326.0885 C 1496.036 326.2662 1495.958 326.3346 1495.708 326.2916 C 1495.458 326.2506 1495.151 326.1197 1494.786 325.901 C 1494.423 325.6822 1494.052 325.3346 1493.677 324.8541 C 1493.302 325.106 1492.923 325.315 1492.536 325.481 C 1492.151 325.6471 1491.667 325.8131 1491.083 325.9791 L 1491.052 325.8541 C 1491.948 325.5221 1492.751 325.065 1493.458 324.4791 C 1493.271 323.9185 1493.146 323.315 1493.083 322.6666 L 1491.802 322.8228 L 1491.552 322.9478 L 1491.208 322.6978 L 1493.052 322.5103 C 1493.032 322.2213 1493.011 321.8248 1492.989 321.3228 L 1492.083 321.3853 L 1491.896 321.5103 L 1491.614 321.2603 L 1492.989 321.1666 C 1492.97 320.44 1492.948 319.7096 1492.927 318.9791 L 1493.646 319.3228 L 1493.396 319.5416 C 1493.396 319.981 1493.407 320.5123 1493.427 321.1353 L 1494.771 321.0103 L 1495.177 320.5416 L 1495.802 321.1041 ZM 1493.896 319.5103 L 1493.927 319.4166 C 1494.573 319.5846 1494.938 319.7467 1495.021 319.9029 C 1495.104 320.0592 1495.104 320.2369 1495.021 320.4342 C 1494.938 320.6334 1494.829 320.6119 1494.692 320.3717 C 1494.558 320.1334 1494.292 319.8463 1493.896 319.5103 ZM 1490.458 319.1041 L 1491.083 319.5103 C 1490.917 319.5748 1490.739 319.7896 1490.552 320.1529 C 1490.364 320.5182 1490.021 321.0435 1489.521 321.7291 L 1490.802 321.6041 C 1491.052 321.19 1491.251 320.7721 1491.396 320.3541 L 1491.958 320.7603 C 1491.813 320.8463 1491.563 321.149 1491.208 321.6685 C 1490.854 322.19 1490.396 322.815 1489.833 323.5416 C 1490.126 323.5025 1490.771 323.3873 1491.771 323.1978 L 1491.771 323.3228 C 1491.208 323.4713 1490.771 323.6021 1490.458 323.7154 C 1490.146 323.8307 1489.833 323.9908 1489.521 324.1978 L 1489.146 323.5416 C 1489.376 323.481 1489.642 323.2584 1489.942 322.8717 C 1490.245 322.4869 1490.511 322.106 1490.739 321.7291 C 1490.511 321.7721 1490.271 321.8307 1490.021 321.9029 C 1489.771 321.9771 1489.542 322.106 1489.333 322.2916 L 1488.989 321.6978 C 1489.22 321.6588 1489.485 321.3619 1489.786 320.8092 C 1490.089 320.2584 1490.313 319.69 1490.458 319.1041 ZM 1488.958 325.0728 C 1489.542 324.9908 1490.011 324.9185 1490.364 324.856 C 1490.72 324.7935 1491.292 324.6783 1492.083 324.5103 L 1492.114 324.6353 C 1491.177 324.9088 1490.495 325.1217 1490.067 325.2779 C 1489.642 325.4342 1489.376 325.5631 1489.271 325.6666 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,19.333,48.333)" d="M 1464.291 437.3646 L 1464.291 438.1771 L 1467.447 438.1771 L 1467.447 437.3646 ZM 1465.479 432.6146 L 1466.229 432.9271 L 1465.947 433.1458 L 1465.947 433.6771 L 1467.979 433.6771 L 1468.447 433.2083 L 1469.072 433.8646 L 1465.947 433.8646 L 1465.947 434.4896 L 1467.604 434.4896 L 1468.01 434.1146 L 1468.541 434.6771 L 1465.947 434.6771 L 1465.947 435.4896 L 1468.447 435.4896 L 1468.916 435.0208 L 1469.541 435.6771 L 1463.229 435.6771 C 1462.959 435.679 1462.709 435.7103 1462.479 435.7708 L 1462.197 435.4896 L 1465.51 435.4896 L 1465.51 434.6771 L 1464.104 434.6771 C 1463.834 434.679 1463.584 434.7103 1463.354 434.7708 L 1463.072 434.4896 L 1465.51 434.4896 L 1465.51 433.8646 L 1463.416 433.8646 C 1463.146 433.8665 1462.896 433.8978 1462.666 433.9583 L 1462.385 433.6771 L 1465.51 433.6771 C 1465.51 433.304 1465.5 432.9505 1465.479 432.6146 ZM 1463.822 435.9896 L 1464.354 436.2396 L 1467.385 436.2396 L 1467.604 435.9583 L 1468.104 436.3333 L 1467.885 436.5208 L 1467.885 439.1771 C 1467.906 439.595 1467.678 439.8646 1467.197 439.9896 C 1467.197 439.6985 1466.896 439.4896 1466.291 439.3646 L 1466.291 439.2396 C 1466.896 439.2825 1467.24 439.2982 1467.322 439.2864 C 1467.406 439.2767 1467.447 439.2083 1467.447 439.0833 L 1467.447 438.3646 L 1464.291 438.3646 L 1464.291 439.8333 L 1463.822 440.0521 C 1463.844 439.595 1463.854 438.9134 1463.854 438.0071 C 1463.854 437.1009 1463.844 436.429 1463.822 435.9896 ZM 1464.291 436.4271 L 1464.291 437.1771 L 1467.447 437.1771 M 1462.854 447.9583 C 1462.875 447.5833 1462.885 447.1888 1462.885 446.7708 L 1462.885 441.9271 C 1462.885 441.5755 1462.875 441.1888 1462.854 440.7708 L 1463.354 441.0521 L 1468.479 441.0521 L 1468.697 440.7396 L 1469.166 441.1146 L 1468.916 441.3333 L 1468.916 446.3333 C 1468.916 446.7318 1468.928 447.179 1468.947 447.6771 L 1468.51 447.8958 L 1468.51 447.3333 L 1463.322 447.3333 L 1463.322 447.8021 ZM 1463.322 441.2396 L 1463.322 447.1458 L 1468.51 447.1458 L 1468.51 441.2396 ZM 1464.197 442.0833 L 1466.635 442.0833 L 1467.01 441.7083 L 1467.572 442.2708 L 1465.166 442.2708 C 1464.896 442.2728 1464.666 442.304 1464.479 442.3646 ZM 1463.51 443.4583 L 1467.197 443.4583 L 1467.635 443.0208 L 1468.26 443.6458 L 1466.572 443.6458 L 1466.572 445.6771 C 1466.553 445.97 1466.709 446.1068 1467.041 446.0833 L 1467.51 446.0833 C 1467.656 446.0638 1467.744 445.9134 1467.775 445.6321 C 1467.807 445.3509 1467.834 445.054 1467.854 444.7396 L 1467.979 444.7396 C 1467.979 444.9915 1467.994 445.2532 1468.025 445.5228 C 1468.057 445.7943 1468.166 445.9603 1468.354 446.0208 C 1468.229 446.2943 1467.99 446.429 1467.635 446.4271 L 1466.697 446.4271 C 1466.303 446.4075 1466.125 446.1693 1466.166 445.7083 L 1466.166 443.6458 L 1465.291 443.6458 C 1465.271 444.6888 1465.104 445.4251 1464.791 445.8509 C 1464.479 446.2786 1464.072 446.6263 1463.572 446.8958 L 1463.51 446.8021 C 1463.969 446.47 1464.307 446.0755 1464.525 445.6165 C 1464.744 445.1595 1464.854 444.5013 1464.854 443.6458 L 1464.541 443.6458 C 1464.271 443.6478 1464.021 443.679 1463.791 443.7396 M 1466.853 449.177 C 1466.392 449.177 1466.043 449.2688 1465.805 449.4505 C 1465.564 449.6341 1465.445 449.8645 1465.447 450.1419 C 1465.445 450.4641 1465.59 450.7434 1465.883 450.9798 C 1466.174 451.2161 1466.445 451.3333 1466.697 451.3333 C 1467.195 451.3333 1467.596 451.2473 1467.898 451.0755 C 1468.199 450.9036 1468.351 450.6243 1468.353 450.2376 C 1468.351 449.8743 1468.211 449.6067 1467.93 449.4348 C 1467.648 449.263 1467.289 449.177 1466.853 449.177 ZM 1465.135 450.0677 C 1465.133 449.6458 1465.262 449.3098 1465.523 449.0559 C 1465.783 448.804 1466.205 448.677 1466.791 448.677 C 1467.289 448.677 1467.705 448.8138 1468.039 449.0833 C 1468.371 449.3548 1468.539 449.7395 1468.541 450.2395 C 1468.539 450.761 1468.33 451.1673 1467.914 451.4583 C 1467.496 451.7513 1466.893 451.8958 1466.104 451.8958 C 1465.227 451.8958 1464.502 451.7239 1463.93 451.3802 C 1463.355 451.0364 1463.07 450.5638 1463.072 449.9583 C 1463.07 449.6888 1463.133 449.4544 1463.258 449.2552 C 1463.383 449.0579 1463.549 448.9583 1463.76 448.9583 C 1463.842 448.9583 1463.924 448.9837 1464.008 449.0325 C 1464.09 449.0833 1464.133 449.1673 1464.135 449.2845 C 1464.133 449.4055 1464.084 449.4856 1463.986 449.5247 C 1463.889 449.5638 1463.775 449.5833 1463.648 449.5833 C 1463.559 449.5833 1463.488 449.595 1463.436 449.6165 C 1463.381 449.638 1463.344 449.6595 1463.324 449.679 C 1463.301 449.7024 1463.283 449.7395 1463.273 449.7942 C 1463.262 449.8489 1463.258 449.9075 1463.26 449.972 C 1463.258 450.3606 1463.469 450.6731 1463.891 450.9114 C 1464.311 451.1497 1465.018 451.2903 1466.01 451.3333 C 1465.758 451.2278 1465.549 451.0696 1465.383 450.8587 C 1465.215 450.6477 1465.133 450.3841 1465.135 450.0677 M 1468.541 454.6145 L 1463.818 454.6145 C 1463.65 454.6145 1463.527 454.6673 1463.445 454.7708 C 1463.361 454.8763 1463.32 455.0208 1463.322 455.2083 L 1463.322 455.5208 L 1463.135 455.5208 L 1463.135 453.2395 L 1463.322 453.2395 L 1463.322 453.5208 C 1463.32 453.7298 1463.361 453.8802 1463.445 453.9739 C 1463.527 454.0677 1463.65 454.1145 1463.818 454.1145 L 1467.574 454.1145 C 1467.654 454.1145 1467.721 454.0891 1467.773 454.0364 C 1467.824 453.9856 1467.851 453.9075 1467.853 453.802 L 1467.853 453.2395 L 1468.041 453.2395 L 1468.041 453.5208 C 1468.039 453.7708 1468.08 453.9739 1468.164 454.1302 C 1468.246 454.2864 1468.373 454.4075 1468.541 454.4895 M 1466.853 457.177 C 1466.392 457.177 1466.043 457.2688 1465.805 457.4505 C 1465.564 457.6341 1465.445 457.8645 1465.447 458.1419 C 1465.445 458.4641 1465.59 458.7434 1465.883 458.9798 C 1466.174 459.2161 1466.445 459.3333 1466.697 459.3333 C 1467.195 459.3333 1467.596 459.2473 1467.898 459.0755 C 1468.199 458.9036 1468.351 458.6243 1468.353 458.2376 C 1468.351 457.8743 1468.211 457.6067 1467.93 457.4348 C 1467.648 457.263 1467.289 457.177 1466.853 457.177 ZM 1465.135 458.0677 C 1465.133 457.6458 1465.262 457.3098 1465.523 457.0559 C 1465.783 456.804 1466.205 456.677 1466.791 456.677 C 1467.289 456.677 1467.705 456.8138 1468.039 457.0833 C 1468.371 457.3548 1468.539 457.7395 1468.541 458.2395 C 1468.539 458.761 1468.33 459.1673 1467.914 459.4583 C 1467.496 459.7513 1466.893 459.8958 1466.104 459.8958 C 1465.227 459.8958 1464.502 459.7239 1463.93 459.3802 C 1463.355 459.0364 1463.07 458.5638 1463.072 457.9583 C 1463.07 457.6888 1463.133 457.4544 1463.258 457.2552 C 1463.383 457.0579 1463.549 456.9583 1463.76 456.9583 C 1463.842 456.9583 1463.924 456.9837 1464.008 457.0325 C 1464.09 457.0833 1464.133 457.1673 1464.135 457.2845 C 1464.133 457.4055 1464.084 457.4856 1463.986 457.5247 C 1463.889 457.5638 1463.775 457.5833 1463.648 457.5833 C 1463.559 457.5833 1463.488 457.595 1463.436 457.6165 C 1463.381 457.638 1463.344 457.6595 1463.324 457.679 C 1463.301 457.7024 1463.283 457.7395 1463.273 457.7942 C 1463.262 457.8489 1463.258 457.9075 1463.26 457.972 C 1463.258 458.3606 1463.469 458.6731 1463.891 458.9114 C 1464.311 459.1497 1465.018 459.2903 1466.01 459.3333 C 1465.758 459.2278 1465.549 459.0696 1465.383 458.8587 C 1465.215 458.6477 1465.133 458.3841 1465.135 458.0677 M 1466.76 462.9583 C 1466.76 463.2513 1466.781 463.638 1466.822 464.1146 L 1468.291 463.9583 L 1468.697 463.4896 L 1469.322 464.0208 L 1466.854 464.2708 C 1466.916 464.9193 1467.021 465.429 1467.166 465.8021 C 1467.625 465.388 1467.99 464.9505 1468.26 464.4896 L 1468.822 465.0521 L 1468.541 465.0833 C 1468.146 465.4603 1467.75 465.8353 1467.354 466.2083 C 1467.729 466.7318 1468.166 467.095 1468.666 467.3021 L 1469.104 465.8021 L 1469.229 465.8333 C 1469.188 466.3138 1469.162 466.7103 1469.15 467.0228 C 1469.141 467.3353 1469.182 467.5794 1469.275 467.7552 C 1469.369 467.9329 1469.291 468.0013 1469.041 467.9583 C 1468.791 467.9173 1468.484 467.7864 1468.119 467.5677 C 1467.756 467.3489 1467.385 467.0013 1467.01 466.5208 C 1466.635 466.7728 1466.256 466.9818 1465.869 467.1478 C 1465.484 467.3138 1465 467.4798 1464.416 467.6458 L 1464.385 467.5208 C 1465.281 467.1888 1466.084 466.7318 1466.791 466.1458 C 1466.604 465.5853 1466.479 464.9818 1466.416 464.3333 L 1465.135 464.4896 L 1464.885 464.6146 L 1464.541 464.3646 L 1466.385 464.1771 C 1466.365 463.888 1466.344 463.4915 1466.322 462.9896 L 1465.416 463.0521 L 1465.229 463.1771 L 1464.947 462.9271 L 1466.322 462.8333 C 1466.303 462.1068 1466.281 461.3763 1466.26 460.6458 L 1466.979 460.9896 L 1466.729 461.2083 C 1466.729 461.6478 1466.74 462.179 1466.76 462.8021 L 1468.104 462.6771 L 1468.51 462.2083 L 1469.135 462.7708 ZM 1467.229 461.1771 L 1467.26 461.0833 C 1467.906 461.2513 1468.271 461.4134 1468.354 461.5696 C 1468.438 461.7259 1468.438 461.9036 1468.354 462.1009 C 1468.271 462.3001 1468.162 462.2786 1468.025 462.0384 C 1467.891 461.8001 1467.625 461.513 1467.229 461.1771 ZM 1463.791 460.7708 L 1464.416 461.1771 C 1464.25 461.2415 1464.072 461.4564 1463.885 461.8196 C 1463.697 462.1849 1463.354 462.7103 1462.854 463.3958 L 1464.135 463.2708 C 1464.385 462.8568 1464.584 462.4388 1464.729 462.0208 L 1465.291 462.4271 C 1465.146 462.513 1464.896 462.8157 1464.541 463.3353 C 1464.188 463.8568 1463.729 464.4818 1463.166 465.2083 C 1463.459 465.1693 1464.104 465.054 1465.104 464.8646 L 1465.104 464.9896 C 1464.541 465.138 1464.104 465.2689 1463.791 465.3821 C 1463.479 465.4974 1463.166 465.6575 1462.854 465.8646 L 1462.479 465.2083 C 1462.709 465.1478 1462.975 464.9251 1463.275 464.5384 C 1463.578 464.1536 1463.844 463.7728 1464.072 463.3958 C 1463.844 463.4388 1463.604 463.4974 1463.354 463.5696 C 1463.104 463.6439 1462.875 463.7728 1462.666 463.9583 L 1462.322 463.3646 C 1462.553 463.3255 1462.818 463.0286 1463.119 462.4759 C 1463.422 461.9251 1463.646 461.3568 1463.791 460.7708 ZM 1462.291 466.7396 C 1462.875 466.6575 1463.344 466.5853 1463.697 466.5228 C 1464.053 466.4603 1464.625 466.345 1465.416 466.1771 L 1465.447 466.3021 C 1464.51 466.5755 1463.828 466.7884 1463.4 466.9446 C 1462.975 467.1009 1462.709 467.2298 1462.604 467.3333 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,-8.333,40.333)" d="M 1353.833 741.0416 L 1353.864 740.9479 C 1354.198 741.0748 1354.427 741.1842 1354.552 741.278 C 1354.677 741.3717 1354.745 741.4811 1354.755 741.6061 C 1354.767 741.7311 1354.72 741.8463 1354.614 741.9498 C 1354.511 742.0553 1354.417 741.9928 1354.333 741.7623 C 1354.251 741.5338 1354.083 741.2936 1353.833 741.0416 ZM 1351.083 742.0729 L 1357.302 742.0729 L 1357.677 741.6979 L 1358.208 742.2604 L 1352.114 742.2604 C 1351.845 742.2623 1351.595 742.2936 1351.364 742.3541 ZM 1355.896 747.5729 C 1356.417 747.6354 1356.739 747.6725 1356.864 747.6823 C 1356.989 747.694 1357.052 747.6158 1357.052 747.4479 L 1357.052 745.0104 L 1352.083 745.0104 L 1352.083 748.0416 L 1351.646 748.2604 C 1351.667 747.6354 1351.677 747.0182 1351.677 746.403 C 1351.677 745.7897 1351.667 745.1686 1351.646 744.5416 L 1352.083 744.8229 L 1357.021 744.8229 L 1357.333 744.5104 L 1357.771 744.9479 L 1357.489 745.1354 L 1357.489 747.5729 C 1357.489 747.7819 1357.458 747.944 1357.396 748.0573 C 1357.333 748.1725 1357.188 748.2721 1356.958 748.3541 C 1356.876 748.0631 1356.521 747.8444 1355.896 747.6979 ZM 1352.677 744.5104 C 1352.698 744.1783 1352.708 743.8561 1352.708 743.5436 C 1352.708 743.2311 1352.698 742.9186 1352.677 742.6041 L 1353.177 742.8541 L 1355.802 742.8541 L 1356.083 742.5729 L 1356.489 742.9791 L 1356.271 743.1354 C 1356.271 743.6373 1356.282 744.0221 1356.302 744.2916 L 1355.864 744.4479 L 1355.864 744.1041 L 1353.146 744.1041 L 1353.146 744.3229 ZM 1353.146 743.0416 L 1353.146 743.9166 L 1355.864 743.9166 L 1355.864 743.0416 ZM 1355.833 745.8854 C 1355.833 746.3873 1355.845 746.8346 1355.864 747.2291 L 1355.427 747.4166 L 1355.427 746.9791 L 1353.552 746.9791 L 1353.552 747.2604 L 1353.114 747.4791 C 1353.136 747.1276 1353.146 746.774 1353.146 746.4186 C 1353.146 746.0651 1353.136 745.7096 1353.114 745.3541 L 1353.552 745.5729 L 1355.364 745.5729 L 1355.646 745.2916 L 1356.052 745.6979 ZM 1353.552 745.7604 L 1353.552 746.7916 L 1355.427 746.7916 M 1357.083 752.0729 L 1357.083 754.9479 C 1357.083 755.2838 1357.095 755.6666 1357.114 756.1041 L 1356.646 756.3229 C 1356.667 755.2213 1356.677 753.8033 1356.677 752.0729 L 1355.677 752.0729 C 1355.72 753.4283 1355.548 754.399 1355.161 754.9811 C 1354.776 755.5631 1354.323 756.0104 1353.802 756.3229 L 1353.739 756.2291 C 1354.157 755.8756 1354.479 755.5084 1354.708 755.1217 C 1354.938 754.7369 1355.089 754.3092 1355.161 753.8405 C 1355.235 753.3717 1355.271 752.7838 1355.271 752.0748 C 1355.271 751.3678 1355.261 750.5651 1355.239 749.6666 L 1355.677 749.9479 C 1356.552 749.7408 1357.126 749.5123 1357.396 749.2604 L 1357.927 749.8229 C 1357.636 749.8248 1357.354 749.8463 1357.083 749.8873 C 1356.813 749.9303 1356.345 750.0026 1355.677 750.1041 L 1355.677 751.8854 L 1357.208 751.8854 L 1357.614 751.4791 L 1358.208 752.0729 ZM 1351.896 750.4791 C 1352.188 750.6686 1352.411 750.8463 1352.567 751.0123 C 1352.724 751.1803 1352.729 751.3717 1352.583 751.5905 C 1352.438 751.8092 1352.333 751.7897 1352.271 751.528 C 1352.208 751.2682 1352.052 750.9401 1351.802 750.5416 ZM 1353.614 753.7916 C 1354.011 754.0221 1354.286 754.2155 1354.442 754.3717 C 1354.599 754.528 1354.614 754.7213 1354.489 754.9498 C 1354.364 755.1803 1354.255 755.153 1354.161 754.8717 C 1354.067 754.5905 1353.864 754.2623 1353.552 753.8854 ZM 1351.958 753.6979 L 1352.552 754.0729 L 1352.302 754.1979 C 1351.845 754.9283 1351.407 755.4713 1350.989 755.8229 L 1350.896 755.7604 C 1351.333 755.2213 1351.688 754.5338 1351.958 753.6979 ZM 1351.896 755.4479 C 1352.271 755.5123 1352.526 755.5416 1352.661 755.5416 C 1352.798 755.5416 1352.864 755.4596 1352.864 755.2916 L 1352.864 753.3229 L 1351.739 753.3229 L 1351.458 753.3854 L 1351.208 753.1354 L 1352.864 753.1354 L 1352.864 752.0416 L 1351.958 752.0416 C 1351.688 752.0436 1351.438 752.0748 1351.208 752.1354 L 1350.927 751.8541 L 1353.208 751.8541 C 1353.438 751.2721 1353.595 750.7721 1353.677 750.3541 L 1352.208 750.3541 C 1351.938 750.3561 1351.688 750.3873 1351.458 750.4479 L 1351.177 750.1666 L 1352.896 750.1666 C 1352.876 749.8776 1352.729 749.5338 1352.458 749.1354 L 1352.521 749.0729 C 1352.896 749.2838 1353.136 749.4655 1353.239 749.6217 C 1353.345 749.778 1353.302 749.9596 1353.114 750.1666 L 1353.896 750.1666 L 1354.271 749.7916 L 1354.833 750.3541 L 1353.739 750.3541 L 1354.271 750.6979 C 1354.126 750.7623 1353.985 750.8932 1353.849 751.0905 C 1353.714 751.2897 1353.552 751.5436 1353.364 751.8541 L 1354.177 751.8541 L 1354.552 751.4791 L 1355.114 752.0416 L 1353.271 752.0416 L 1353.271 753.1354 L 1353.989 753.1354 L 1354.364 752.7604 L 1354.927 753.3229 L 1353.271 753.3229 L 1353.271 755.5104 C 1353.271 755.8229 1353.073 756.0533 1352.677 756.1979 C 1352.677 755.9479 1352.417 755.7408 1351.896 755.5729 M 1353.802 761.3229 L 1353.802 762.4166 L 1355.458 762.4166 L 1355.458 761.3229 ZM 1353.364 763.1979 C 1353.386 762.8033 1353.396 762.4088 1353.396 762.0123 C 1353.396 761.6178 1353.386 761.2311 1353.364 760.8541 L 1353.802 761.1354 L 1355.396 761.1354 L 1355.614 760.8541 L 1356.083 761.2604 L 1355.864 761.4166 C 1355.864 761.6471 1355.864 761.8678 1355.864 762.0748 C 1355.864 762.2838 1355.876 762.5221 1355.896 762.7916 L 1355.458 762.9791 L 1355.458 762.6041 L 1353.802 762.6041 L 1353.802 763.0104 ZM 1352.583 757.8541 L 1352.583 758.8854 L 1356.614 758.8854 L 1356.614 757.8541 ZM 1355.646 763.3854 C 1356.208 763.4713 1356.567 763.5123 1356.724 763.5123 C 1356.88 763.5123 1356.989 763.4342 1357.052 763.278 C 1357.114 763.1217 1357.146 762.1276 1357.146 760.2916 L 1352.583 760.2916 C 1352.563 761.1901 1352.427 761.9557 1352.177 762.5905 C 1351.927 763.2272 1351.542 763.7916 1351.021 764.2916 L 1350.958 764.1979 C 1351.376 763.6569 1351.673 763.0807 1351.849 762.4655 C 1352.026 761.8522 1352.12 761.2272 1352.13 760.5905 C 1352.142 759.9557 1352.146 759.3776 1352.146 758.8561 C 1352.146 758.3365 1352.136 757.8346 1352.114 757.3541 L 1352.614 757.6666 L 1356.583 757.6666 L 1356.833 757.3541 L 1357.302 757.7604 L 1357.052 757.9479 C 1357.052 758.6373 1357.063 759.0533 1357.083 759.1979 L 1356.614 759.4166 L 1356.614 759.0729 L 1352.583 759.0729 L 1352.583 760.1041 L 1357.114 760.1041 L 1357.364 759.8229 L 1357.833 760.2291 L 1357.583 760.4166 C 1357.583 761.7936 1357.583 762.6178 1357.583 762.8873 C 1357.583 763.1588 1357.532 763.4127 1357.427 763.651 C 1357.323 763.8912 1357.073 764.0846 1356.677 764.2291 C 1356.657 763.9791 1356.313 763.7506 1355.646 763.5416 M 1355.427 767.2916 C 1355.427 767.5846 1355.448 767.9713 1355.489 768.4479 L 1356.958 768.2916 L 1357.364 767.8229 L 1357.989 768.3541 L 1355.521 768.6041 C 1355.583 769.2526 1355.688 769.7623 1355.833 770.1354 C 1356.292 769.7213 1356.657 769.2838 1356.927 768.8229 L 1357.489 769.3854 L 1357.208 769.4166 C 1356.813 769.7936 1356.417 770.1686 1356.021 770.5416 C 1356.396 771.0651 1356.833 771.4283 1357.333 771.6354 L 1357.771 770.1354 L 1357.896 770.1666 C 1357.854 770.6471 1357.829 771.0436 1357.817 771.3561 C 1357.808 771.6686 1357.849 771.9127 1357.942 772.0885 C 1358.036 772.2662 1357.958 772.3346 1357.708 772.2916 C 1357.458 772.2506 1357.151 772.1198 1356.786 771.901 C 1356.423 771.6823 1356.052 771.3346 1355.677 770.8541 C 1355.302 771.1061 1354.923 771.3151 1354.536 771.4811 C 1354.151 771.6471 1353.667 771.8131 1353.083 771.9791 L 1353.052 771.8541 C 1353.948 771.5221 1354.751 771.0651 1355.458 770.4791 C 1355.271 769.9186 1355.146 769.3151 1355.083 768.6666 L 1353.802 768.8229 L 1353.552 768.9479 L 1353.208 768.6979 L 1355.052 768.5104 C 1355.032 768.2213 1355.011 767.8248 1354.989 767.3229 L 1354.083 767.3854 L 1353.896 767.5104 L 1353.614 767.2604 L 1354.989 767.1666 C 1354.97 766.4401 1354.948 765.7096 1354.927 764.9791 L 1355.646 765.3229 L 1355.396 765.5416 C 1355.396 765.9811 1355.407 766.5123 1355.427 767.1354 L 1356.771 767.0104 L 1357.177 766.5416 L 1357.802 767.1041 ZM 1355.896 765.5104 L 1355.927 765.4166 C 1356.573 765.5846 1356.938 765.7467 1357.021 765.903 C 1357.104 766.0592 1357.104 766.2369 1357.021 766.4342 C 1356.938 766.6334 1356.829 766.6119 1356.692 766.3717 C 1356.558 766.1334 1356.292 765.8463 1355.896 765.5104 ZM 1352.458 765.1041 L 1353.083 765.5104 C 1352.917 765.5748 1352.739 765.7897 1352.552 766.153 C 1352.364 766.5182 1352.021 767.0436 1351.521 767.7291 L 1352.802 767.6041 C 1353.052 767.1901 1353.251 766.7721 1353.396 766.3541 L 1353.958 766.7604 C 1353.813 766.8463 1353.563 767.149 1353.208 767.6686 C 1352.854 768.1901 1352.396 768.8151 1351.833 769.5416 C 1352.126 769.5026 1352.771 769.3873 1353.771 769.1979 L 1353.771 769.3229 C 1353.208 769.4713 1352.771 769.6022 1352.458 769.7155 C 1352.146 769.8307 1351.833 769.9908 1351.521 770.1979 L 1351.146 769.5416 C 1351.376 769.4811 1351.642 769.2584 1351.942 768.8717 C 1352.245 768.4869 1352.511 768.1061 1352.739 767.7291 C 1352.511 767.7721 1352.271 767.8307 1352.021 767.903 C 1351.771 767.9772 1351.542 768.1061 1351.333 768.2916 L 1350.989 767.6979 C 1351.22 767.6588 1351.485 767.3619 1351.786 766.8092 C 1352.089 766.2584 1352.313 765.6901 1352.458 765.1041 ZM 1350.958 771.0729 C 1351.542 770.9908 1352.011 770.9186 1352.364 770.8561 C 1352.72 770.7936 1353.292 770.6783 1354.083 770.5104 L 1354.114 770.6354 C 1353.177 770.9088 1352.495 771.1217 1352.067 771.278 C 1351.642 771.4342 1351.376 771.5631 1351.271 771.6666 M 1355.083 774.5104 C 1355.292 774.9498 1355.583 775.3658 1355.958 775.7604 C 1356.271 775.3463 1356.563 774.8463 1356.833 774.2604 L 1355.208 774.2604 ZM 1355.146 777.6041 L 1355.146 779.4479 L 1356.802 779.4479 L 1356.802 777.6041 ZM 1357.208 777.7291 C 1357.208 778.6276 1357.22 779.3873 1357.239 780.0104 L 1356.802 780.2291 L 1356.802 779.6354 L 1355.146 779.6354 L 1355.146 780.1041 L 1354.708 780.3541 C 1354.729 779.6881 1354.739 778.6901 1354.739 777.3541 C 1354.448 777.5651 1354.032 777.7623 1353.489 777.9479 L 1353.458 777.8541 C 1354.313 777.4186 1355.063 776.8033 1355.708 776.0104 C 1355.438 775.6158 1355.198 775.1686 1354.989 774.6666 C 1354.677 775.2721 1354.345 775.7721 1353.989 776.1666 L 1353.896 776.1041 C 1354.501 775.1061 1354.917 774.0748 1355.146 773.0104 L 1355.771 773.3541 L 1355.521 773.5416 C 1355.479 773.6276 1355.396 773.8033 1355.271 774.0729 L 1356.864 774.0729 L 1357.083 773.7604 L 1357.583 774.1666 L 1357.302 774.3854 C 1356.989 774.9713 1356.636 775.5123 1356.239 776.0104 C 1356.823 776.5123 1357.489 776.8463 1358.239 777.0104 L 1358.239 777.1354 C 1357.97 777.1588 1357.782 777.2721 1357.677 777.4791 C 1357.073 777.1901 1356.511 776.8033 1355.989 776.3229 C 1355.739 776.5748 1355.396 776.8776 1354.958 777.2291 L 1355.239 777.4166 L 1356.771 777.4166 L 1356.958 777.1666 L 1357.427 777.5416 ZM 1351.896 773.9479 L 1351.896 775.5729 L 1353.333 775.5729 L 1353.333 773.9479 ZM 1351.802 779.1041 L 1352.427 778.9479 L 1352.427 775.7604 L 1351.896 775.7604 L 1351.896 776.0104 L 1351.458 776.1666 C 1351.479 775.6686 1351.489 775.1901 1351.489 774.7311 C 1351.489 774.274 1351.479 773.8776 1351.458 773.5416 L 1351.896 773.7604 L 1353.271 773.7604 L 1353.489 773.4791 L 1353.958 773.8229 L 1353.708 774.0416 C 1353.708 774.9401 1353.72 775.5436 1353.739 775.8541 L 1353.333 776.0416 L 1353.333 775.7604 L 1352.802 775.7604 L 1352.802 776.9479 L 1353.177 776.9479 L 1353.521 776.6041 L 1354.021 777.1354 L 1352.802 777.1354 L 1352.802 778.8541 L 1353.958 778.5729 L 1353.989 778.6979 C 1353.239 778.9498 1352.396 779.2623 1351.458 779.6354 L 1351.239 779.7916 L 1350.927 779.3229 L 1351.427 779.1979 C 1351.427 777.9283 1351.417 777.0748 1351.396 776.6354 L 1352.052 776.9479 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,93.334,54)" d="M 1242.271 727.9791 C 1242.688 728.1686 1242.948 728.3405 1243.052 728.4967 C 1243.157 728.653 1243.136 728.8209 1242.989 728.9967 C 1242.845 729.1744 1242.735 729.1334 1242.661 728.8717 C 1242.589 728.6119 1242.438 728.3346 1242.208 728.0416 ZM 1239.614 728.8229 L 1240.083 729.1041 L 1244.896 729.1041 L 1245.364 728.6354 L 1245.958 729.2916 L 1240.083 729.2916 C 1240.104 731.3561 1240.042 732.7155 1239.896 733.3717 C 1239.751 734.028 1239.448 734.6666 1238.989 735.2916 L 1238.896 735.2291 C 1239.354 734.3971 1239.599 733.3776 1239.63 732.1686 C 1239.661 730.9615 1239.657 729.8463 1239.614 728.8229 ZM 1241.802 731.8541 C 1241.802 733.5026 1241.813 734.5416 1241.833 734.9791 L 1241.364 735.2291 C 1241.386 734.7506 1241.396 733.6686 1241.396 731.9791 C 1240.979 732.8346 1240.511 733.5026 1239.989 733.9791 L 1239.896 733.9166 C 1240.583 732.9811 1241.052 732.0221 1241.302 731.0416 L 1241.271 731.0416 C 1241.001 731.0436 1240.751 731.0748 1240.521 731.1354 L 1240.239 730.8541 L 1241.396 730.8541 C 1241.396 730.0846 1241.386 729.6158 1241.364 729.4479 L 1242.083 729.7604 L 1241.802 729.9791 L 1241.802 730.8541 L 1242.052 730.8541 L 1242.396 730.5104 L 1242.864 731.0416 L 1241.802 731.0416 L 1241.802 731.6979 C 1242.198 731.8463 1242.458 731.9811 1242.583 732.1061 C 1242.708 732.2311 1242.724 732.4088 1242.63 732.6373 C 1242.536 732.8678 1242.433 732.8463 1242.317 732.5748 C 1242.204 732.3053 1242.032 732.0651 1241.802 731.8541 ZM 1243.771 735.1979 C 1243.792 734.9069 1243.802 733.8463 1243.802 732.0104 C 1243.364 732.9088 1242.782 733.6471 1242.052 734.2291 L 1241.989 734.1354 C 1242.823 733.2408 1243.407 732.2096 1243.739 731.0416 C 1243.552 731.0436 1243.345 731.0748 1243.114 731.1354 L 1242.833 730.8541 L 1243.802 730.8541 C 1243.802 730.2526 1243.792 729.8033 1243.771 729.5104 L 1244.521 729.8229 L 1244.208 730.0416 L 1244.208 730.8541 L 1245.021 730.8541 L 1245.396 730.4791 L 1245.927 731.0416 L 1244.427 731.0416 C 1244.802 732.4186 1245.407 733.3248 1246.239 733.7604 L 1246.239 733.8541 C 1245.97 733.8346 1245.761 733.9283 1245.614 734.1354 C 1244.927 733.3248 1244.479 732.2936 1244.271 731.0416 L 1244.208 731.0416 C 1244.208 733.2936 1244.22 734.6158 1244.239 735.0104 M 1243.239 738.6666 L 1242.208 738.9166 L 1242.208 742.0416 C 1242.208 742.3346 1242.313 742.4811 1242.521 742.4791 L 1245.114 742.4791 C 1245.345 742.4811 1245.479 742.3561 1245.521 742.1061 C 1245.563 741.8561 1245.583 741.4908 1245.583 741.0104 L 1245.739 741.0104 C 1245.761 741.4908 1245.802 741.8053 1245.864 741.9498 C 1245.927 742.0963 1246.032 742.2213 1246.177 742.3229 C 1246.011 742.6979 1245.72 742.8756 1245.302 742.8541 L 1242.396 742.8541 C 1242.001 742.8541 1241.802 742.6354 1241.802 742.1979 L 1241.802 739.0104 L 1241.271 739.1354 L 1241.146 739.2604 L 1240.927 739.0416 L 1241.802 738.8541 C 1241.802 738.0436 1241.792 737.5026 1241.771 737.2291 L 1242.427 737.5729 L 1242.208 737.7604 L 1242.208 738.7604 L 1243.239 738.5104 C 1243.239 737.2838 1243.229 736.4908 1243.208 736.1354 L 1243.896 736.4479 L 1243.646 736.6666 L 1243.646 738.3854 L 1244.833 738.0729 L 1245.083 737.6979 L 1245.552 738.0729 L 1245.333 738.3229 C 1245.313 739.3463 1245.298 740.0026 1245.286 740.2936 C 1245.276 740.5865 1245.22 740.7936 1245.114 740.9186 C 1245.011 741.0436 1244.854 741.1588 1244.646 741.2604 C 1244.521 740.9908 1244.251 740.7936 1243.833 740.6666 L 1243.833 740.5416 C 1244.271 740.6061 1244.548 740.6334 1244.661 740.6217 C 1244.776 740.6119 1244.845 740.528 1244.864 740.3717 C 1244.886 740.2155 1244.907 739.5026 1244.927 738.2291 L 1243.646 738.5416 L 1243.646 740.5416 C 1243.646 740.8561 1243.657 741.1998 1243.677 741.5729 L 1243.208 741.7916 C 1243.229 741.3346 1243.239 740.8873 1243.239 740.4479 ZM 1241.271 737.3854 C 1240.604 739.5963 1240.235 740.8307 1240.161 741.0905 C 1240.089 741.3522 1240.058 741.6686 1240.067 742.0436 C 1240.079 742.4186 1240.089 742.6783 1240.099 742.8229 C 1240.11 742.9694 1239.989 743.0006 1239.739 742.9166 C 1239.489 742.8346 1239.427 742.5787 1239.552 742.153 C 1239.677 741.7272 1239.677 741.4557 1239.552 741.3405 C 1239.427 741.2272 1239.208 741.1276 1238.896 741.0416 L 1238.896 740.9166 C 1239.271 740.9596 1239.505 740.9772 1239.599 740.9655 C 1239.692 740.9557 1239.798 740.8619 1239.911 740.6842 C 1240.026 740.5084 1240.438 739.3971 1241.146 737.3541 ZM 1238.927 737.9166 C 1239.657 738.2936 1240.021 738.6022 1240.021 738.8405 C 1240.021 739.0807 1239.964 739.2428 1239.849 739.3248 C 1239.735 739.4088 1239.63 739.3092 1239.536 739.028 C 1239.442 738.7467 1239.22 738.4088 1238.864 738.0104 ZM 1239.614 736.1354 C 1240.198 736.4283 1240.526 736.6803 1240.599 736.8873 C 1240.673 737.0963 1240.642 737.274 1240.505 737.4186 C 1240.37 737.5651 1240.255 737.4967 1240.161 737.2155 C 1240.067 736.9342 1239.864 736.6061 1239.552 736.2291 M 1243.52 744.5103 C 1243.059 744.5103 1242.71 744.6021 1242.472 744.7838 C 1242.231 744.9673 1242.112 745.1978 1242.114 745.4752 C 1242.112 745.7974 1242.257 746.0767 1242.55 746.313 C 1242.841 746.5494 1243.112 746.6666 1243.364 746.6666 C 1243.862 746.6666 1244.263 746.5806 1244.565 746.4088 C 1244.866 746.2369 1245.018 745.9576 1245.02 745.5709 C 1245.018 745.2076 1244.878 744.94 1244.597 744.7681 C 1244.315 744.5963 1243.956 744.5103 1243.52 744.5103 ZM 1241.802 745.4009 C 1241.8 744.9791 1241.929 744.6431 1242.19 744.3892 C 1242.45 744.1373 1242.872 744.0103 1243.458 744.0103 C 1243.956 744.0103 1244.372 744.147 1244.706 744.4166 C 1245.038 744.688 1245.206 745.0728 1245.208 745.5728 C 1245.206 746.0943 1244.997 746.5005 1244.581 746.7916 C 1244.163 747.0845 1243.56 747.2291 1242.771 747.2291 C 1241.894 747.2291 1241.169 747.0572 1240.597 746.7134 C 1240.022 746.3697 1239.737 745.897 1239.739 745.2916 C 1239.737 745.022 1239.8 744.7877 1239.925 744.5884 C 1240.05 744.3912 1240.216 744.2916 1240.427 744.2916 C 1240.509 744.2916 1240.591 744.317 1240.675 744.3658 C 1240.757 744.4166 1240.8 744.5005 1240.802 744.6177 C 1240.8 744.7388 1240.751 744.8189 1240.653 744.858 C 1240.556 744.897 1240.442 744.9166 1240.315 744.9166 C 1240.226 744.9166 1240.155 744.9283 1240.103 744.9498 C 1240.048 744.9713 1240.011 744.9927 1239.991 745.0123 C 1239.968 745.0357 1239.95 745.0728 1239.94 745.1275 C 1239.929 745.1822 1239.925 745.2408 1239.927 745.3052 C 1239.925 745.6939 1240.136 746.0064 1240.558 746.2447 C 1240.978 746.483 1241.685 746.6236 1242.677 746.6666 C 1242.425 746.5611 1242.216 746.4029 1242.05 746.192 C 1241.882 745.981 1241.8 745.7173 1241.802 745.4009 M 1245.208 749.9478 L 1240.485 749.9478 C 1240.317 749.9478 1240.194 750.0005 1240.112 750.1041 C 1240.028 750.2095 1239.987 750.3541 1239.989 750.5416 L 1239.989 750.8541 L 1239.802 750.8541 L 1239.802 748.5728 L 1239.989 748.5728 L 1239.989 748.8541 C 1239.987 749.063 1240.028 749.2134 1240.112 749.3072 C 1240.194 749.4009 1240.317 749.4478 1240.485 749.4478 L 1244.241 749.4478 C 1244.321 749.4478 1244.388 749.4224 1244.44 749.3697 C 1244.491 749.3189 1244.518 749.2408 1244.52 749.1353 L 1244.52 748.5728 L 1244.708 748.5728 L 1244.708 748.8541 C 1244.706 749.1041 1244.747 749.3072 1244.831 749.4634 C 1244.913 749.6197 1245.04 749.7408 1245.208 749.8228 M 1245.208 753.9478 L 1240.485 753.9478 C 1240.317 753.9478 1240.194 754.0005 1240.112 754.1041 C 1240.028 754.2095 1239.987 754.3541 1239.989 754.5416 L 1239.989 754.8541 L 1239.802 754.8541 L 1239.802 752.5728 L 1239.989 752.5728 L 1239.989 752.8541 C 1239.987 753.063 1240.028 753.2134 1240.112 753.3072 C 1240.194 753.4009 1240.317 753.4478 1240.485 753.4478 L 1244.241 753.4478 C 1244.321 753.4478 1244.388 753.4224 1244.44 753.3697 C 1244.491 753.3189 1244.518 753.2408 1244.52 753.1353 L 1244.52 752.5728 L 1244.708 752.5728 L 1244.708 752.8541 C 1244.706 753.1041 1244.747 753.3072 1244.831 753.4634 C 1244.913 753.6197 1245.04 753.7408 1245.208 753.8228 M 1243.427 758.2916 C 1243.427 758.5846 1243.448 758.9713 1243.489 759.4479 L 1244.958 759.2916 L 1245.364 758.8229 L 1245.989 759.3541 L 1243.521 759.6041 C 1243.583 760.2526 1243.688 760.7623 1243.833 761.1354 C 1244.292 760.7213 1244.657 760.2838 1244.927 759.8229 L 1245.489 760.3854 L 1245.208 760.4166 C 1244.813 760.7936 1244.417 761.1686 1244.021 761.5416 C 1244.396 762.0651 1244.833 762.4283 1245.333 762.6354 L 1245.771 761.1354 L 1245.896 761.1666 C 1245.854 761.6471 1245.829 762.0436 1245.817 762.3561 C 1245.808 762.6686 1245.849 762.9127 1245.942 763.0885 C 1246.036 763.2662 1245.958 763.3346 1245.708 763.2916 C 1245.458 763.2506 1245.151 763.1198 1244.786 762.901 C 1244.423 762.6823 1244.052 762.3346 1243.677 761.8541 C 1243.302 762.1061 1242.923 762.3151 1242.536 762.4811 C 1242.151 762.6471 1241.667 762.8131 1241.083 762.9791 L 1241.052 762.8541 C 1241.948 762.5221 1242.751 762.0651 1243.458 761.4791 C 1243.271 760.9186 1243.146 760.3151 1243.083 759.6666 L 1241.802 759.8229 L 1241.552 759.9479 L 1241.208 759.6979 L 1243.052 759.5104 C 1243.032 759.2213 1243.011 758.8248 1242.989 758.3229 L 1242.083 758.3854 L 1241.896 758.5104 L 1241.614 758.2604 L 1242.989 758.1666 C 1242.97 757.4401 1242.948 756.7096 1242.927 755.9791 L 1243.646 756.3229 L 1243.396 756.5416 C 1243.396 756.9811 1243.407 757.5123 1243.427 758.1354 L 1244.771 758.0104 L 1245.177 757.5416 L 1245.802 758.1041 ZM 1243.896 756.5104 L 1243.927 756.4166 C 1244.573 756.5846 1244.938 756.7467 1245.021 756.903 C 1245.104 757.0592 1245.104 757.2369 1245.021 757.4342 C 1244.938 757.6334 1244.829 757.6119 1244.692 757.3717 C 1244.558 757.1334 1244.292 756.8463 1243.896 756.5104 ZM 1240.458 756.1041 L 1241.083 756.5104 C 1240.917 756.5748 1240.739 756.7897 1240.552 757.153 C 1240.364 757.5182 1240.021 758.0436 1239.521 758.7291 L 1240.802 758.6041 C 1241.052 758.1901 1241.251 757.7721 1241.396 757.3541 L 1241.958 757.7604 C 1241.813 757.8463 1241.563 758.149 1241.208 758.6686 C 1240.854 759.1901 1240.396 759.8151 1239.833 760.5416 C 1240.126 760.5026 1240.771 760.3873 1241.771 760.1979 L 1241.771 760.3229 C 1241.208 760.4713 1240.771 760.6022 1240.458 760.7155 C 1240.146 760.8307 1239.833 760.9908 1239.521 761.1979 L 1239.146 760.5416 C 1239.376 760.4811 1239.642 760.2584 1239.942 759.8717 C 1240.245 759.4869 1240.511 759.1061 1240.739 758.7291 C 1240.511 758.7721 1240.271 758.8307 1240.021 758.903 C 1239.771 758.9772 1239.542 759.1061 1239.333 759.2916 L 1238.989 758.6979 C 1239.22 758.6588 1239.485 758.3619 1239.786 757.8092 C 1240.089 757.2584 1240.313 756.6901 1240.458 756.1041 ZM 1238.958 762.0729 C 1239.542 761.9908 1240.011 761.9186 1240.364 761.8561 C 1240.72 761.7936 1241.292 761.6783 1242.083 761.5104 L 1242.114 761.6354 C 1241.177 761.9088 1240.495 762.1217 1240.067 762.278 C 1239.642 762.4342 1239.376 762.5631 1239.271 762.6666 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,-174.667,51)" d="M 1353.833 741.0416 L 1353.864 740.9479 C 1354.198 741.0748 1354.427 741.1842 1354.552 741.278 C 1354.677 741.3717 1354.745 741.4811 1354.755 741.6061 C 1354.767 741.7311 1354.72 741.8463 1354.614 741.9498 C 1354.511 742.0553 1354.417 741.9928 1354.333 741.7623 C 1354.251 741.5338 1354.083 741.2936 1353.833 741.0416 ZM 1351.083 742.0729 L 1357.302 742.0729 L 1357.677 741.6979 L 1358.208 742.2604 L 1352.114 742.2604 C 1351.845 742.2623 1351.595 742.2936 1351.364 742.3541 ZM 1355.896 747.5729 C 1356.417 747.6354 1356.739 747.6725 1356.864 747.6823 C 1356.989 747.694 1357.052 747.6158 1357.052 747.4479 L 1357.052 745.0104 L 1352.083 745.0104 L 1352.083 748.0416 L 1351.646 748.2604 C 1351.667 747.6354 1351.677 747.0182 1351.677 746.403 C 1351.677 745.7897 1351.667 745.1686 1351.646 744.5416 L 1352.083 744.8229 L 1357.021 744.8229 L 1357.333 744.5104 L 1357.771 744.9479 L 1357.489 745.1354 L 1357.489 747.5729 C 1357.489 747.7819 1357.458 747.944 1357.396 748.0573 C 1357.333 748.1725 1357.188 748.2721 1356.958 748.3541 C 1356.876 748.0631 1356.521 747.8444 1355.896 747.6979 ZM 1352.677 744.5104 C 1352.698 744.1783 1352.708 743.8561 1352.708 743.5436 C 1352.708 743.2311 1352.698 742.9186 1352.677 742.6041 L 1353.177 742.8541 L 1355.802 742.8541 L 1356.083 742.5729 L 1356.489 742.9791 L 1356.271 743.1354 C 1356.271 743.6373 1356.282 744.0221 1356.302 744.2916 L 1355.864 744.4479 L 1355.864 744.1041 L 1353.146 744.1041 L 1353.146 744.3229 ZM 1353.146 743.0416 L 1353.146 743.9166 L 1355.864 743.9166 L 1355.864 743.0416 ZM 1355.833 745.8854 C 1355.833 746.3873 1355.845 746.8346 1355.864 747.2291 L 1355.427 747.4166 L 1355.427 746.9791 L 1353.552 746.9791 L 1353.552 747.2604 L 1353.114 747.4791 C 1353.136 747.1276 1353.146 746.774 1353.146 746.4186 C 1353.146 746.0651 1353.136 745.7096 1353.114 745.3541 L 1353.552 745.5729 L 1355.364 745.5729 L 1355.646 745.2916 L 1356.052 745.6979 ZM 1353.552 745.7604 L 1353.552 746.7916 L 1355.427 746.7916 M 1357.083 752.0729 L 1357.083 754.9479 C 1357.083 755.2838 1357.095 755.6666 1357.114 756.1041 L 1356.646 756.3229 C 1356.667 755.2213 1356.677 753.8033 1356.677 752.0729 L 1355.677 752.0729 C 1355.72 753.4283 1355.548 754.399 1355.161 754.9811 C 1354.776 755.5631 1354.323 756.0104 1353.802 756.3229 L 1353.739 756.2291 C 1354.157 755.8756 1354.479 755.5084 1354.708 755.1217 C 1354.938 754.7369 1355.089 754.3092 1355.161 753.8405 C 1355.235 753.3717 1355.271 752.7838 1355.271 752.0748 C 1355.271 751.3678 1355.261 750.5651 1355.239 749.6666 L 1355.677 749.9479 C 1356.552 749.7408 1357.126 749.5123 1357.396 749.2604 L 1357.927 749.8229 C 1357.636 749.8248 1357.354 749.8463 1357.083 749.8873 C 1356.813 749.9303 1356.345 750.0026 1355.677 750.1041 L 1355.677 751.8854 L 1357.208 751.8854 L 1357.614 751.4791 L 1358.208 752.0729 ZM 1351.896 750.4791 C 1352.188 750.6686 1352.411 750.8463 1352.567 751.0123 C 1352.724 751.1803 1352.729 751.3717 1352.583 751.5905 C 1352.438 751.8092 1352.333 751.7897 1352.271 751.528 C 1352.208 751.2682 1352.052 750.9401 1351.802 750.5416 ZM 1353.614 753.7916 C 1354.011 754.0221 1354.286 754.2155 1354.442 754.3717 C 1354.599 754.528 1354.614 754.7213 1354.489 754.9498 C 1354.364 755.1803 1354.255 755.153 1354.161 754.8717 C 1354.067 754.5905 1353.864 754.2623 1353.552 753.8854 ZM 1351.958 753.6979 L 1352.552 754.0729 L 1352.302 754.1979 C 1351.845 754.9283 1351.407 755.4713 1350.989 755.8229 L 1350.896 755.7604 C 1351.333 755.2213 1351.688 754.5338 1351.958 753.6979 ZM 1351.896 755.4479 C 1352.271 755.5123 1352.526 755.5416 1352.661 755.5416 C 1352.798 755.5416 1352.864 755.4596 1352.864 755.2916 L 1352.864 753.3229 L 1351.739 753.3229 L 1351.458 753.3854 L 1351.208 753.1354 L 1352.864 753.1354 L 1352.864 752.0416 L 1351.958 752.0416 C 1351.688 752.0436 1351.438 752.0748 1351.208 752.1354 L 1350.927 751.8541 L 1353.208 751.8541 C 1353.438 751.2721 1353.595 750.7721 1353.677 750.3541 L 1352.208 750.3541 C 1351.938 750.3561 1351.688 750.3873 1351.458 750.4479 L 1351.177 750.1666 L 1352.896 750.1666 C 1352.876 749.8776 1352.729 749.5338 1352.458 749.1354 L 1352.521 749.0729 C 1352.896 749.2838 1353.136 749.4655 1353.239 749.6217 C 1353.345 749.778 1353.302 749.9596 1353.114 750.1666 L 1353.896 750.1666 L 1354.271 749.7916 L 1354.833 750.3541 L 1353.739 750.3541 L 1354.271 750.6979 C 1354.126 750.7623 1353.985 750.8932 1353.849 751.0905 C 1353.714 751.2897 1353.552 751.5436 1353.364 751.8541 L 1354.177 751.8541 L 1354.552 751.4791 L 1355.114 752.0416 L 1353.271 752.0416 L 1353.271 753.1354 L 1353.989 753.1354 L 1354.364 752.7604 L 1354.927 753.3229 L 1353.271 753.3229 L 1353.271 755.5104 C 1353.271 755.8229 1353.073 756.0533 1352.677 756.1979 C 1352.677 755.9479 1352.417 755.7408 1351.896 755.5729 M 1353.802 761.3229 L 1353.802 762.4166 L 1355.458 762.4166 L 1355.458 761.3229 ZM 1353.364 763.1979 C 1353.386 762.8033 1353.396 762.4088 1353.396 762.0123 C 1353.396 761.6178 1353.386 761.2311 1353.364 760.8541 L 1353.802 761.1354 L 1355.396 761.1354 L 1355.614 760.8541 L 1356.083 761.2604 L 1355.864 761.4166 C 1355.864 761.6471 1355.864 761.8678 1355.864 762.0748 C 1355.864 762.2838 1355.876 762.5221 1355.896 762.7916 L 1355.458 762.9791 L 1355.458 762.6041 L 1353.802 762.6041 L 1353.802 763.0104 ZM 1352.583 757.8541 L 1352.583 758.8854 L 1356.614 758.8854 L 1356.614 757.8541 ZM 1355.646 763.3854 C 1356.208 763.4713 1356.567 763.5123 1356.724 763.5123 C 1356.88 763.5123 1356.989 763.4342 1357.052 763.278 C 1357.114 763.1217 1357.146 762.1276 1357.146 760.2916 L 1352.583 760.2916 C 1352.563 761.1901 1352.427 761.9557 1352.177 762.5905 C 1351.927 763.2272 1351.542 763.7916 1351.021 764.2916 L 1350.958 764.1979 C 1351.376 763.6569 1351.673 763.0807 1351.849 762.4655 C 1352.026 761.8522 1352.12 761.2272 1352.13 760.5905 C 1352.142 759.9557 1352.146 759.3776 1352.146 758.8561 C 1352.146 758.3365 1352.136 757.8346 1352.114 757.3541 L 1352.614 757.6666 L 1356.583 757.6666 L 1356.833 757.3541 L 1357.302 757.7604 L 1357.052 757.9479 C 1357.052 758.6373 1357.063 759.0533 1357.083 759.1979 L 1356.614 759.4166 L 1356.614 759.0729 L 1352.583 759.0729 L 1352.583 760.1041 L 1357.114 760.1041 L 1357.364 759.8229 L 1357.833 760.2291 L 1357.583 760.4166 C 1357.583 761.7936 1357.583 762.6178 1357.583 762.8873 C 1357.583 763.1588 1357.532 763.4127 1357.427 763.651 C 1357.323 763.8912 1357.073 764.0846 1356.677 764.2291 C 1356.657 763.9791 1356.313 763.7506 1355.646 763.5416 M 1355.427 767.2916 C 1355.427 767.5846 1355.448 767.9713 1355.489 768.4479 L 1356.958 768.2916 L 1357.364 767.8229 L 1357.989 768.3541 L 1355.521 768.6041 C 1355.583 769.2526 1355.688 769.7623 1355.833 770.1354 C 1356.292 769.7213 1356.657 769.2838 1356.927 768.8229 L 1357.489 769.3854 L 1357.208 769.4166 C 1356.813 769.7936 1356.417 770.1686 1356.021 770.5416 C 1356.396 771.0651 1356.833 771.4283 1357.333 771.6354 L 1357.771 770.1354 L 1357.896 770.1666 C 1357.854 770.6471 1357.829 771.0436 1357.817 771.3561 C 1357.808 771.6686 1357.849 771.9127 1357.942 772.0885 C 1358.036 772.2662 1357.958 772.3346 1357.708 772.2916 C 1357.458 772.2506 1357.151 772.1198 1356.786 771.901 C 1356.423 771.6823 1356.052 771.3346 1355.677 770.8541 C 1355.302 771.1061 1354.923 771.3151 1354.536 771.4811 C 1354.151 771.6471 1353.667 771.8131 1353.083 771.9791 L 1353.052 771.8541 C 1353.948 771.5221 1354.751 771.0651 1355.458 770.4791 C 1355.271 769.9186 1355.146 769.3151 1355.083 768.6666 L 1353.802 768.8229 L 1353.552 768.9479 L 1353.208 768.6979 L 1355.052 768.5104 C 1355.032 768.2213 1355.011 767.8248 1354.989 767.3229 L 1354.083 767.3854 L 1353.896 767.5104 L 1353.614 767.2604 L 1354.989 767.1666 C 1354.97 766.4401 1354.948 765.7096 1354.927 764.9791 L 1355.646 765.3229 L 1355.396 765.5416 C 1355.396 765.9811 1355.407 766.5123 1355.427 767.1354 L 1356.771 767.0104 L 1357.177 766.5416 L 1357.802 767.1041 ZM 1355.896 765.5104 L 1355.927 765.4166 C 1356.573 765.5846 1356.938 765.7467 1357.021 765.903 C 1357.104 766.0592 1357.104 766.2369 1357.021 766.4342 C 1356.938 766.6334 1356.829 766.6119 1356.692 766.3717 C 1356.558 766.1334 1356.292 765.8463 1355.896 765.5104 ZM 1352.458 765.1041 L 1353.083 765.5104 C 1352.917 765.5748 1352.739 765.7897 1352.552 766.153 C 1352.364 766.5182 1352.021 767.0436 1351.521 767.7291 L 1352.802 767.6041 C 1353.052 767.1901 1353.251 766.7721 1353.396 766.3541 L 1353.958 766.7604 C 1353.813 766.8463 1353.563 767.149 1353.208 767.6686 C 1352.854 768.1901 1352.396 768.8151 1351.833 769.5416 C 1352.126 769.5026 1352.771 769.3873 1353.771 769.1979 L 1353.771 769.3229 C 1353.208 769.4713 1352.771 769.6022 1352.458 769.7155 C 1352.146 769.8307 1351.833 769.9908 1351.521 770.1979 L 1351.146 769.5416 C 1351.376 769.4811 1351.642 769.2584 1351.942 768.8717 C 1352.245 768.4869 1352.511 768.1061 1352.739 767.7291 C 1352.511 767.7721 1352.271 767.8307 1352.021 767.903 C 1351.771 767.9772 1351.542 768.1061 1351.333 768.2916 L 1350.989 767.6979 C 1351.22 767.6588 1351.485 767.3619 1351.786 766.8092 C 1352.089 766.2584 1352.313 765.6901 1352.458 765.1041 ZM 1350.958 771.0729 C 1351.542 770.9908 1352.011 770.9186 1352.364 770.8561 C 1352.72 770.7936 1353.292 770.6783 1354.083 770.5104 L 1354.114 770.6354 C 1353.177 770.9088 1352.495 771.1217 1352.067 771.278 C 1351.642 771.4342 1351.376 771.5631 1351.271 771.6666 M 1355.083 774.5104 C 1355.292 774.9498 1355.583 775.3658 1355.958 775.7604 C 1356.271 775.3463 1356.563 774.8463 1356.833 774.2604 L 1355.208 774.2604 ZM 1355.146 777.6041 L 1355.146 779.4479 L 1356.802 779.4479 L 1356.802 777.6041 ZM 1357.208 777.7291 C 1357.208 778.6276 1357.22 779.3873 1357.239 780.0104 L 1356.802 780.2291 L 1356.802 779.6354 L 1355.146 779.6354 L 1355.146 780.1041 L 1354.708 780.3541 C 1354.729 779.6881 1354.739 778.6901 1354.739 777.3541 C 1354.448 777.5651 1354.032 777.7623 1353.489 777.9479 L 1353.458 777.8541 C 1354.313 777.4186 1355.063 776.8033 1355.708 776.0104 C 1355.438 775.6158 1355.198 775.1686 1354.989 774.6666 C 1354.677 775.2721 1354.345 775.7721 1353.989 776.1666 L 1353.896 776.1041 C 1354.501 775.1061 1354.917 774.0748 1355.146 773.0104 L 1355.771 773.3541 L 1355.521 773.5416 C 1355.479 773.6276 1355.396 773.8033 1355.271 774.0729 L 1356.864 774.0729 L 1357.083 773.7604 L 1357.583 774.1666 L 1357.302 774.3854 C 1356.989 774.9713 1356.636 775.5123 1356.239 776.0104 C 1356.823 776.5123 1357.489 776.8463 1358.239 777.0104 L 1358.239 777.1354 C 1357.97 777.1588 1357.782 777.2721 1357.677 777.4791 C 1357.073 777.1901 1356.511 776.8033 1355.989 776.3229 C 1355.739 776.5748 1355.396 776.8776 1354.958 777.2291 L 1355.239 777.4166 L 1356.771 777.4166 L 1356.958 777.1666 L 1357.427 777.5416 ZM 1351.896 773.9479 L 1351.896 775.5729 L 1353.333 775.5729 L 1353.333 773.9479 ZM 1351.802 779.1041 L 1352.427 778.9479 L 1352.427 775.7604 L 1351.896 775.7604 L 1351.896 776.0104 L 1351.458 776.1666 C 1351.479 775.6686 1351.489 775.1901 1351.489 774.7311 C 1351.489 774.274 1351.479 773.8776 1351.458 773.5416 L 1351.896 773.7604 L 1353.271 773.7604 L 1353.489 773.4791 L 1353.958 773.8229 L 1353.708 774.0416 C 1353.708 774.9401 1353.72 775.5436 1353.739 775.8541 L 1353.333 776.0416 L 1353.333 775.7604 L 1352.802 775.7604 L 1352.802 776.9479 L 1353.177 776.9479 L 1353.521 776.6041 L 1354.021 777.1354 L 1352.802 777.1354 L 1352.802 778.8541 L 1353.958 778.5729 L 1353.989 778.6979 C 1353.239 778.9498 1352.396 779.2623 1351.458 779.6354 L 1351.239 779.7916 L 1350.927 779.3229 L 1351.427 779.1979 C 1351.427 777.9283 1351.417 777.0748 1351.396 776.6354 L 1352.052 776.9479 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,-73.666,65.666)" d="M 1242.271 727.9791 C 1242.688 728.1686 1242.948 728.3405 1243.052 728.4967 C 1243.157 728.653 1243.136 728.8209 1242.989 728.9967 C 1242.845 729.1744 1242.735 729.1334 1242.661 728.8717 C 1242.589 728.6119 1242.438 728.3346 1242.208 728.0416 ZM 1239.614 728.8229 L 1240.083 729.1041 L 1244.896 729.1041 L 1245.364 728.6354 L 1245.958 729.2916 L 1240.083 729.2916 C 1240.104 731.3561 1240.042 732.7155 1239.896 733.3717 C 1239.751 734.028 1239.448 734.6666 1238.989 735.2916 L 1238.896 735.2291 C 1239.354 734.3971 1239.599 733.3776 1239.63 732.1686 C 1239.661 730.9615 1239.657 729.8463 1239.614 728.8229 ZM 1241.802 731.8541 C 1241.802 733.5026 1241.813 734.5416 1241.833 734.9791 L 1241.364 735.2291 C 1241.386 734.7506 1241.396 733.6686 1241.396 731.9791 C 1240.979 732.8346 1240.511 733.5026 1239.989 733.9791 L 1239.896 733.9166 C 1240.583 732.9811 1241.052 732.0221 1241.302 731.0416 L 1241.271 731.0416 C 1241.001 731.0436 1240.751 731.0748 1240.521 731.1354 L 1240.239 730.8541 L 1241.396 730.8541 C 1241.396 730.0846 1241.386 729.6158 1241.364 729.4479 L 1242.083 729.7604 L 1241.802 729.9791 L 1241.802 730.8541 L 1242.052 730.8541 L 1242.396 730.5104 L 1242.864 731.0416 L 1241.802 731.0416 L 1241.802 731.6979 C 1242.198 731.8463 1242.458 731.9811 1242.583 732.1061 C 1242.708 732.2311 1242.724 732.4088 1242.63 732.6373 C 1242.536 732.8678 1242.433 732.8463 1242.317 732.5748 C 1242.204 732.3053 1242.032 732.0651 1241.802 731.8541 ZM 1243.771 735.1979 C 1243.792 734.9069 1243.802 733.8463 1243.802 732.0104 C 1243.364 732.9088 1242.782 733.6471 1242.052 734.2291 L 1241.989 734.1354 C 1242.823 733.2408 1243.407 732.2096 1243.739 731.0416 C 1243.552 731.0436 1243.345 731.0748 1243.114 731.1354 L 1242.833 730.8541 L 1243.802 730.8541 C 1243.802 730.2526 1243.792 729.8033 1243.771 729.5104 L 1244.521 729.8229 L 1244.208 730.0416 L 1244.208 730.8541 L 1245.021 730.8541 L 1245.396 730.4791 L 1245.927 731.0416 L 1244.427 731.0416 C 1244.802 732.4186 1245.407 733.3248 1246.239 733.7604 L 1246.239 733.8541 C 1245.97 733.8346 1245.761 733.9283 1245.614 734.1354 C 1244.927 733.3248 1244.479 732.2936 1244.271 731.0416 L 1244.208 731.0416 C 1244.208 733.2936 1244.22 734.6158 1244.239 735.0104 M 1243.239 738.6666 L 1242.208 738.9166 L 1242.208 742.0416 C 1242.208 742.3346 1242.313 742.4811 1242.521 742.4791 L 1245.114 742.4791 C 1245.345 742.4811 1245.479 742.3561 1245.521 742.1061 C 1245.563 741.8561 1245.583 741.4908 1245.583 741.0104 L 1245.739 741.0104 C 1245.761 741.4908 1245.802 741.8053 1245.864 741.9498 C 1245.927 742.0963 1246.032 742.2213 1246.177 742.3229 C 1246.011 742.6979 1245.72 742.8756 1245.302 742.8541 L 1242.396 742.8541 C 1242.001 742.8541 1241.802 742.6354 1241.802 742.1979 L 1241.802 739.0104 L 1241.271 739.1354 L 1241.146 739.2604 L 1240.927 739.0416 L 1241.802 738.8541 C 1241.802 738.0436 1241.792 737.5026 1241.771 737.2291 L 1242.427 737.5729 L 1242.208 737.7604 L 1242.208 738.7604 L 1243.239 738.5104 C 1243.239 737.2838 1243.229 736.4908 1243.208 736.1354 L 1243.896 736.4479 L 1243.646 736.6666 L 1243.646 738.3854 L 1244.833 738.0729 L 1245.083 737.6979 L 1245.552 738.0729 L 1245.333 738.3229 C 1245.313 739.3463 1245.298 740.0026 1245.286 740.2936 C 1245.276 740.5865 1245.22 740.7936 1245.114 740.9186 C 1245.011 741.0436 1244.854 741.1588 1244.646 741.2604 C 1244.521 740.9908 1244.251 740.7936 1243.833 740.6666 L 1243.833 740.5416 C 1244.271 740.6061 1244.548 740.6334 1244.661 740.6217 C 1244.776 740.6119 1244.845 740.528 1244.864 740.3717 C 1244.886 740.2155 1244.907 739.5026 1244.927 738.2291 L 1243.646 738.5416 L 1243.646 740.5416 C 1243.646 740.8561 1243.657 741.1998 1243.677 741.5729 L 1243.208 741.7916 C 1243.229 741.3346 1243.239 740.8873 1243.239 740.4479 ZM 1241.271 737.3854 C 1240.604 739.5963 1240.235 740.8307 1240.161 741.0905 C 1240.089 741.3522 1240.058 741.6686 1240.067 742.0436 C 1240.079 742.4186 1240.089 742.6783 1240.099 742.8229 C 1240.11 742.9694 1239.989 743.0006 1239.739 742.9166 C 1239.489 742.8346 1239.427 742.5787 1239.552 742.153 C 1239.677 741.7272 1239.677 741.4557 1239.552 741.3405 C 1239.427 741.2272 1239.208 741.1276 1238.896 741.0416 L 1238.896 740.9166 C 1239.271 740.9596 1239.505 740.9772 1239.599 740.9655 C 1239.692 740.9557 1239.798 740.8619 1239.911 740.6842 C 1240.026 740.5084 1240.438 739.3971 1241.146 737.3541 ZM 1238.927 737.9166 C 1239.657 738.2936 1240.021 738.6022 1240.021 738.8405 C 1240.021 739.0807 1239.964 739.2428 1239.849 739.3248 C 1239.735 739.4088 1239.63 739.3092 1239.536 739.028 C 1239.442 738.7467 1239.22 738.4088 1238.864 738.0104 ZM 1239.614 736.1354 C 1240.198 736.4283 1240.526 736.6803 1240.599 736.8873 C 1240.673 737.0963 1240.642 737.274 1240.505 737.4186 C 1240.37 737.5651 1240.255 737.4967 1240.161 737.2155 C 1240.067 736.9342 1239.864 736.6061 1239.552 736.2291 M 1243.52 744.5103 C 1243.059 744.5103 1242.71 744.6021 1242.472 744.7838 C 1242.231 744.9673 1242.112 745.1978 1242.114 745.4752 C 1242.112 745.7974 1242.257 746.0767 1242.55 746.313 C 1242.841 746.5494 1243.112 746.6666 1243.364 746.6666 C 1243.862 746.6666 1244.263 746.5806 1244.565 746.4088 C 1244.866 746.2369 1245.018 745.9576 1245.02 745.5709 C 1245.018 745.2076 1244.878 744.94 1244.597 744.7681 C 1244.315 744.5963 1243.956 744.5103 1243.52 744.5103 ZM 1241.802 745.4009 C 1241.8 744.9791 1241.929 744.6431 1242.19 744.3892 C 1242.45 744.1373 1242.872 744.0103 1243.458 744.0103 C 1243.956 744.0103 1244.372 744.147 1244.706 744.4166 C 1245.038 744.688 1245.206 745.0728 1245.208 745.5728 C 1245.206 746.0943 1244.997 746.5005 1244.581 746.7916 C 1244.163 747.0845 1243.56 747.2291 1242.771 747.2291 C 1241.894 747.2291 1241.169 747.0572 1240.597 746.7134 C 1240.022 746.3697 1239.737 745.897 1239.739 745.2916 C 1239.737 745.022 1239.8 744.7877 1239.925 744.5884 C 1240.05 744.3912 1240.216 744.2916 1240.427 744.2916 C 1240.509 744.2916 1240.591 744.317 1240.675 744.3658 C 1240.757 744.4166 1240.8 744.5005 1240.802 744.6177 C 1240.8 744.7388 1240.751 744.8189 1240.653 744.858 C 1240.556 744.897 1240.442 744.9166 1240.315 744.9166 C 1240.226 744.9166 1240.155 744.9283 1240.103 744.9498 C 1240.048 744.9713 1240.011 744.9927 1239.991 745.0123 C 1239.968 745.0357 1239.95 745.0728 1239.94 745.1275 C 1239.929 745.1822 1239.925 745.2408 1239.927 745.3052 C 1239.925 745.6939 1240.136 746.0064 1240.558 746.2447 C 1240.978 746.483 1241.685 746.6236 1242.677 746.6666 C 1242.425 746.5611 1242.216 746.4029 1242.05 746.192 C 1241.882 745.981 1241.8 745.7173 1241.802 745.4009 M 1245.208 749.9478 L 1240.485 749.9478 C 1240.317 749.9478 1240.194 750.0005 1240.112 750.1041 C 1240.028 750.2095 1239.987 750.3541 1239.989 750.5416 L 1239.989 750.8541 L 1239.802 750.8541 L 1239.802 748.5728 L 1239.989 748.5728 L 1239.989 748.8541 C 1239.987 749.063 1240.028 749.2134 1240.112 749.3072 C 1240.194 749.4009 1240.317 749.4478 1240.485 749.4478 L 1244.241 749.4478 C 1244.321 749.4478 1244.388 749.4224 1244.44 749.3697 C 1244.491 749.3189 1244.518 749.2408 1244.52 749.1353 L 1244.52 748.5728 L 1244.708 748.5728 L 1244.708 748.8541 C 1244.706 749.1041 1244.747 749.3072 1244.831 749.4634 C 1244.913 749.6197 1245.04 749.7408 1245.208 749.8228 M 1245.208 753.9478 L 1240.485 753.9478 C 1240.317 753.9478 1240.194 754.0005 1240.112 754.1041 C 1240.028 754.2095 1239.987 754.3541 1239.989 754.5416 L 1239.989 754.8541 L 1239.802 754.8541 L 1239.802 752.5728 L 1239.989 752.5728 L 1239.989 752.8541 C 1239.987 753.063 1240.028 753.2134 1240.112 753.3072 C 1240.194 753.4009 1240.317 753.4478 1240.485 753.4478 L 1244.241 753.4478 C 1244.321 753.4478 1244.388 753.4224 1244.44 753.3697 C 1244.491 753.3189 1244.518 753.2408 1244.52 753.1353 L 1244.52 752.5728 L 1244.708 752.5728 L 1244.708 752.8541 C 1244.706 753.1041 1244.747 753.3072 1244.831 753.4634 C 1244.913 753.6197 1245.04 753.7408 1245.208 753.8228 M 1243.427 758.2916 C 1243.427 758.5846 1243.448 758.9713 1243.489 759.4479 L 1244.958 759.2916 L 1245.364 758.8229 L 1245.989 759.3541 L 1243.521 759.6041 C 1243.583 760.2526 1243.688 760.7623 1243.833 761.1354 C 1244.292 760.7213 1244.657 760.2838 1244.927 759.8229 L 1245.489 760.3854 L 1245.208 760.4166 C 1244.813 760.7936 1244.417 761.1686 1244.021 761.5416 C 1244.396 762.0651 1244.833 762.4283 1245.333 762.6354 L 1245.771 761.1354 L 1245.896 761.1666 C 1245.854 761.6471 1245.829 762.0436 1245.817 762.3561 C 1245.808 762.6686 1245.849 762.9127 1245.942 763.0885 C 1246.036 763.2662 1245.958 763.3346 1245.708 763.2916 C 1245.458 763.2506 1245.151 763.1198 1244.786 762.901 C 1244.423 762.6823 1244.052 762.3346 1243.677 761.8541 C 1243.302 762.1061 1242.923 762.3151 1242.536 762.4811 C 1242.151 762.6471 1241.667 762.8131 1241.083 762.9791 L 1241.052 762.8541 C 1241.948 762.5221 1242.751 762.0651 1243.458 761.4791 C 1243.271 760.9186 1243.146 760.3151 1243.083 759.6666 L 1241.802 759.8229 L 1241.552 759.9479 L 1241.208 759.6979 L 1243.052 759.5104 C 1243.032 759.2213 1243.011 758.8248 1242.989 758.3229 L 1242.083 758.3854 L 1241.896 758.5104 L 1241.614 758.2604 L 1242.989 758.1666 C 1242.97 757.4401 1242.948 756.7096 1242.927 755.9791 L 1243.646 756.3229 L 1243.396 756.5416 C 1243.396 756.9811 1243.407 757.5123 1243.427 758.1354 L 1244.771 758.0104 L 1245.177 757.5416 L 1245.802 758.1041 ZM 1243.896 756.5104 L 1243.927 756.4166 C 1244.573 756.5846 1244.938 756.7467 1245.021 756.903 C 1245.104 757.0592 1245.104 757.2369 1245.021 757.4342 C 1244.938 757.6334 1244.829 757.6119 1244.692 757.3717 C 1244.558 757.1334 1244.292 756.8463 1243.896 756.5104 ZM 1240.458 756.1041 L 1241.083 756.5104 C 1240.917 756.5748 1240.739 756.7897 1240.552 757.153 C 1240.364 757.5182 1240.021 758.0436 1239.521 758.7291 L 1240.802 758.6041 C 1241.052 758.1901 1241.251 757.7721 1241.396 757.3541 L 1241.958 757.7604 C 1241.813 757.8463 1241.563 758.149 1241.208 758.6686 C 1240.854 759.1901 1240.396 759.8151 1239.833 760.5416 C 1240.126 760.5026 1240.771 760.3873 1241.771 760.1979 L 1241.771 760.3229 C 1241.208 760.4713 1240.771 760.6022 1240.458 760.7155 C 1240.146 760.8307 1239.833 760.9908 1239.521 761.1979 L 1239.146 760.5416 C 1239.376 760.4811 1239.642 760.2584 1239.942 759.8717 C 1240.245 759.4869 1240.511 759.1061 1240.739 758.7291 C 1240.511 758.7721 1240.271 758.8307 1240.021 758.903 C 1239.771 758.9772 1239.542 759.1061 1239.333 759.2916 L 1238.989 758.6979 C 1239.22 758.6588 1239.485 758.3619 1239.786 757.8092 C 1240.089 757.2584 1240.313 756.6901 1240.458 756.1041 ZM 1238.958 762.0729 C 1239.542 761.9908 1240.011 761.9186 1240.364 761.8561 C 1240.72 761.7936 1241.292 761.6783 1242.083 761.5104 L 1242.114 761.6354 C 1241.177 761.9088 1240.495 762.1217 1240.067 762.278 C 1239.642 762.4342 1239.376 762.5631 1239.271 762.6666 " /> 
   <path d="M 1128.17 715.4999 L 1156.83 715.4999 L 1156.83 737.4999 L 1128.17 737.4999 ZM 1140.478 729.9999 L 1138.728 729.9999 L 1138.728 729.7499 L 1138.853 729.7499 L 1139.103 729.6249 L 1138.978 729.1249 L 1137.666 726.2499 L 1137.041 727.1249 L 1137.041 729.4374 L 1137.103 729.6874 L 1137.353 729.7499 L 1137.603 729.7499 L 1137.603 729.9999 L 1135.853 729.9999 L 1135.853 729.7499 L 1136.041 729.7499 L 1136.353 729.6874 L 1136.416 729.4374 L 1136.416 723.6249 L 1136.353 723.3749 L 1136.041 723.3124 L 1135.853 723.3124 L 1135.853 723.0624 L 1137.603 723.0624 L 1137.603 723.3124 L 1137.353 723.3124 L 1137.103 723.3749 L 1137.041 723.6249 L 1137.041 726.5624 L 1138.916 723.8749 L 1139.041 723.4374 L 1138.666 723.3124 L 1138.478 723.3124 L 1138.478 723.0624 L 1140.228 723.0624 L 1140.228 723.3124 L 1140.103 723.3124 L 1139.728 723.4374 L 1139.353 723.8124 L 1138.103 725.6249 L 1139.791 729.3124 L 1140.041 729.6249 L 1140.228 729.7499 L 1140.478 729.7499 ZM 1145.666 723.0624 L 1145.666 723.3124 L 1145.478 723.3124 L 1145.291 723.3749 L 1145.166 723.6874 L 1144.103 729.9999 L 1143.853 729.9999 L 1143.228 725.6874 L 1143.166 725.6874 L 1142.291 729.9999 L 1142.103 729.9999 L 1141.103 723.6249 L 1141.041 723.3749 L 1140.916 723.3124 L 1140.728 723.3124 L 1140.728 723.0624 L 1142.103 723.0624 L 1142.103 723.3124 L 1141.978 723.3124 L 1141.791 723.3749 L 1141.666 723.6249 L 1142.291 727.9999 L 1142.416 727.9999 L 1143.103 724.4999 L 1142.978 723.6249 L 1142.853 723.3749 L 1142.666 723.3124 L 1142.541 723.3124 L 1142.541 723.0624 L 1143.916 723.0624 L 1143.916 723.3124 L 1143.791 723.3124 L 1143.603 723.3749 L 1143.541 723.6249 L 1144.103 727.8124 L 1144.166 727.8124 L 1144.916 723.6874 L 1144.853 723.4374 L 1144.603 723.3124 L 1144.478 723.3124 L 1144.478 723.0624 ZM 1150.041 729.4374 L 1150.166 729.6874 L 1150.416 729.7499 L 1150.603 729.7499 L 1150.603 729.9999 L 1148.853 729.9999 L 1148.853 729.7499 L 1149.103 729.7499 L 1149.353 729.6874 L 1149.416 729.4374 L 1149.416 726.4999 L 1147.103 726.4999 L 1147.103 729.4374 L 1147.166 729.6874 L 1147.416 729.7499 L 1147.666 729.7499 L 1147.666 729.9999 L 1145.916 729.9999 L 1145.916 729.7499 L 1146.103 729.7499 L 1146.353 729.6874 L 1146.478 729.4374 L 1146.478 723.6249 L 1146.353 723.3749 L 1146.041 723.3124 L 1145.916 723.3124 L 1145.916 723.0624 L 1147.666 723.0624 L 1147.666 723.3124 L 1147.478 723.3124 L 1147.166 723.3749 L 1147.103 723.6249 L 1147.103 726.2499 L 1149.416 726.2499 L 1149.416 723.6249 L 1149.353 723.3749 L 1149.041 723.3124 L 1148.853 723.3124 L 1148.853 723.0624 L 1150.603 723.0624 L 1150.603 723.3124 L 1150.478 723.3124 L 1150.166 723.3749 L 1150.041 723.6249 Z" fill="none" stroke="#27fb06" fill-opacity="0" id="line-912-203" title="青山912线" transform="matrix(1,0,0,1,31.333,32.667)" /> 
   <path d="M 1128.17 715.4999 L 1156.83 715.4999 L 1156.83 737.4999 L 1128.17 737.4999 ZM 1140.478 729.9999 L 1138.728 729.9999 L 1138.728 729.7499 L 1138.853 729.7499 L 1139.103 729.6249 L 1138.978 729.1249 L 1137.666 726.2499 L 1137.041 727.1249 L 1137.041 729.4374 L 1137.103 729.6874 L 1137.353 729.7499 L 1137.603 729.7499 L 1137.603 729.9999 L 1135.853 729.9999 L 1135.853 729.7499 L 1136.041 729.7499 L 1136.353 729.6874 L 1136.416 729.4374 L 1136.416 723.6249 L 1136.353 723.3749 L 1136.041 723.3124 L 1135.853 723.3124 L 1135.853 723.0624 L 1137.603 723.0624 L 1137.603 723.3124 L 1137.353 723.3124 L 1137.103 723.3749 L 1137.041 723.6249 L 1137.041 726.5624 L 1138.916 723.8749 L 1139.041 723.4374 L 1138.666 723.3124 L 1138.478 723.3124 L 1138.478 723.0624 L 1140.228 723.0624 L 1140.228 723.3124 L 1140.103 723.3124 L 1139.728 723.4374 L 1139.353 723.8124 L 1138.103 725.6249 L 1139.791 729.3124 L 1140.041 729.6249 L 1140.228 729.7499 L 1140.478 729.7499 ZM 1145.666 723.0624 L 1145.666 723.3124 L 1145.478 723.3124 L 1145.291 723.3749 L 1145.166 723.6874 L 1144.103 729.9999 L 1143.853 729.9999 L 1143.228 725.6874 L 1143.166 725.6874 L 1142.291 729.9999 L 1142.103 729.9999 L 1141.103 723.6249 L 1141.041 723.3749 L 1140.916 723.3124 L 1140.728 723.3124 L 1140.728 723.0624 L 1142.103 723.0624 L 1142.103 723.3124 L 1141.978 723.3124 L 1141.791 723.3749 L 1141.666 723.6249 L 1142.291 727.9999 L 1142.416 727.9999 L 1143.103 724.4999 L 1142.978 723.6249 L 1142.853 723.3749 L 1142.666 723.3124 L 1142.541 723.3124 L 1142.541 723.0624 L 1143.916 723.0624 L 1143.916 723.3124 L 1143.791 723.3124 L 1143.603 723.3749 L 1143.541 723.6249 L 1144.103 727.8124 L 1144.166 727.8124 L 1144.916 723.6874 L 1144.853 723.4374 L 1144.603 723.3124 L 1144.478 723.3124 L 1144.478 723.0624 ZM 1150.041 729.4374 L 1150.166 729.6874 L 1150.416 729.7499 L 1150.603 729.7499 L 1150.603 729.9999 L 1148.853 729.9999 L 1148.853 729.7499 L 1149.103 729.7499 L 1149.353 729.6874 L 1149.416 729.4374 L 1149.416 726.4999 L 1147.103 726.4999 L 1147.103 729.4374 L 1147.166 729.6874 L 1147.416 729.7499 L 1147.666 729.7499 L 1147.666 729.9999 L 1145.916 729.9999 L 1145.916 729.7499 L 1146.103 729.7499 L 1146.353 729.6874 L 1146.478 729.4374 L 1146.478 723.6249 L 1146.353 723.3749 L 1146.041 723.3124 L 1145.916 723.3124 L 1145.916 723.0624 L 1147.666 723.0624 L 1147.666 723.3124 L 1147.478 723.3124 L 1147.166 723.3749 L 1147.103 723.6249 L 1147.103 726.2499 L 1149.416 726.2499 L 1149.416 723.6249 L 1149.353 723.3749 L 1149.041 723.3124 L 1148.853 723.3124 L 1148.853 723.0624 L 1150.603 723.0624 L 1150.603 723.3124 L 1150.478 723.3124 L 1150.166 723.3749 L 1150.041 723.6249 Z" fill="none" stroke="#27fb06" fill-opacity="0" id="line-922-296" title="民主922线" transform="matrix(1,0,0,1,196.667,-10.667)" /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,50,37.333)" d="M 409.8853 450.5312 L 409.8853 449.1562 C 409.8853 448.1991 409.8756 447.5116 409.8541 447.0937 L 410.2916 447.3124 C 411.0221 446.9608 411.4693 446.6581 411.6353 446.4062 L 412.1041 446.9374 C 411.9381 446.9394 411.7252 446.9823 411.4635 447.0644 C 411.2037 447.1483 410.8131 447.2831 410.2916 447.4687 L 410.2916 450.7187 L 411.6041 450.0937 L 411.6666 450.1874 C 411.5221 450.2929 411.2721 450.4765 410.9166 450.7362 C 410.5631 450.998 410.3033 451.2421 410.1353 451.4687 L 409.7291 450.9374 C 409.8346 450.8769 409.8853 450.7421 409.8853 450.5312 ZM 412.6353 450.8124 C 413.0318 450.8358 413.2877 450.8417 413.401 450.83 C 413.5162 450.8202 413.5631 450.6991 413.5416 450.4687 L 413.5416 447.7187 L 412.2916 447.7187 L 412.2916 452.2187 L 411.8541 452.4687 C 411.8756 451.9296 411.8853 451.0233 411.8853 449.7519 C 411.8853 448.4823 411.8756 447.6581 411.8541 447.2812 L 412.2916 447.5312 L 413.5103 447.5312 L 413.7291 447.2187 L 414.1978 447.5937 L 413.9478 447.7812 L 413.9478 450.7499 C 413.9693 451.1054 413.7818 451.3554 413.3853 451.4999 C 413.3658 451.2108 413.1158 451.0233 412.6353 450.9374 ZM 407.9166 446.6874 L 408.0103 446.6249 C 408.3658 446.8554 408.6197 447.0448 408.776 447.1894 C 408.9322 447.3358 408.9947 447.4862 408.9635 447.6425 C 408.9322 447.7987 408.8502 447.9237 408.7135 448.0175 C 408.5787 448.1112 408.485 448.0175 408.4322 447.7362 C 408.3814 447.455 408.2096 447.1054 407.9166 446.6874 ZM 408.8541 451.7187 C 409.0416 451.9296 409.3033 452.1386 409.6353 452.3456 C 409.9693 452.5546 410.5943 452.6796 411.5103 452.7206 C 412.4283 452.7636 413.4478 452.7206 414.5728 452.5937 L 414.5728 452.7187 C 414.1783 452.8241 413.9693 452.9901 413.9478 453.2187 C 412.9478 453.2187 412.1471 453.1991 411.5416 453.1562 C 410.9381 453.1151 410.4381 453.0214 410.0416 452.8749 C 409.6471 452.7304 409.3385 452.539 409.1197 452.2987 C 408.901 452.0605 408.7408 451.9394 408.6353 451.9394 C 408.5318 451.9394 408.3541 452.0644 408.1041 452.3144 C 407.8541 452.5644 407.6881 452.7616 407.6041 452.9062 L 407.1666 452.4687 C 407.5006 452.1991 407.9283 451.9491 408.4478 451.7187 L 408.4478 449.2499 L 408.2916 449.2499 C 408.0221 449.2519 407.7721 449.2831 407.5416 449.3437 L 407.2603 449.0624 L 408.4166 449.0624 L 408.6353 448.7499 L 409.1041 449.0937 M 410.3853 456.4999 C 410.2408 456.8358 410.1041 457.0956 409.9791 457.2812 L 413.3853 457.2812 L 413.8228 456.8437 L 414.4478 457.4687 L 412.0728 457.4687 C 412.2603 457.7421 412.4947 457.9921 412.776 458.2206 C 413.0572 458.4511 413.3502 458.623 413.651 458.7362 C 413.9537 458.8515 414.2603 458.9179 414.5728 458.9374 L 414.5728 459.0624 C 414.3033 459.0644 414.1041 459.1894 413.9791 459.4374 C 413.6041 459.2929 413.2252 459.0487 412.8385 458.705 C 412.4537 458.3612 412.1353 457.9491 411.8853 457.4687 L 409.9166 457.4687 C 409.5221 457.9706 409.1002 458.373 408.651 458.6737 C 408.2037 458.9765 407.7193 459.2304 407.1978 459.4374 L 407.1666 459.3124 C 408.1471 458.7733 408.8971 458.1581 409.4166 457.4687 L 407.7603 457.4687 L 407.4791 457.5312 L 407.2291 457.2812 L 409.5103 457.2812 C 409.6353 457.0956 409.7721 456.8358 409.9166 456.4999 L 408.4791 456.4999 L 408.1978 456.5624 L 407.9478 456.3124 L 409.9791 456.3124 C 410.0631 456.0644 410.1353 455.8144 410.1978 455.5624 L 408.1978 455.5624 L 407.9166 455.6249 L 407.6666 455.3749 L 410.2291 455.3749 C 410.3131 455.0233 410.3541 454.6796 410.3541 454.3437 L 411.1353 454.6874 C 410.9693 454.7519 410.8346 454.9804 410.7291 455.3749 L 413.0416 455.3749 L 413.4478 454.9687 L 414.0416 455.5624 L 410.6978 455.5624 C 410.6158 455.8144 410.5318 456.0644 410.4478 456.3124 L 412.4166 456.3124 L 412.7916 455.9374 L 413.3541 456.4999 ZM 409.6041 458.7187 L 409.6041 459.7187 L 411.9478 459.7187 L 411.9478 458.7187 ZM 409.6041 459.9062 L 409.6041 460.9062 L 411.9478 460.9062 L 411.9478 459.9062 ZM 412.3853 458.8749 C 412.3853 460.2519 412.3971 461.0839 412.4166 461.3749 L 411.9478 461.6562 L 411.9478 461.0937 L 409.6041 461.0937 L 409.6041 461.4062 L 409.1353 461.6562 C 409.1568 461.1366 409.1666 460.5858 409.1666 460.0019 C 409.1666 459.4198 409.1568 458.8456 409.1353 458.2812 L 409.6353 458.5312 L 411.8853 458.5312 L 412.1666 458.2499 M 411.8541 462.8436 C 411.3931 462.8436 411.0435 462.9354 410.8052 463.1171 C 410.565 463.3007 410.4459 463.5311 410.4478 463.8085 C 410.4459 464.1307 410.5904 464.41 410.8834 464.6464 C 411.1744 464.8827 411.4459 464.9999 411.6978 464.9999 C 412.1959 464.9999 412.5963 464.9139 412.899 464.7421 C 413.1998 464.5702 413.3521 464.2909 413.3541 463.9042 C 413.3521 463.5409 413.2115 463.2733 412.9302 463.1014 C 412.649 462.9296 412.2896 462.8436 411.8541 462.8436 ZM 410.1353 463.7343 C 410.1334 463.3124 410.2623 462.9764 410.524 462.7225 C 410.7838 462.4706 411.2056 462.3436 411.7916 462.3436 C 412.2896 462.3436 412.7056 462.4803 413.0396 462.7499 C 413.3716 463.0214 413.5396 463.4061 413.5416 463.9061 C 413.5396 464.4276 413.3306 464.8339 412.9146 465.1249 C 412.4966 465.4178 411.8932 465.5624 411.1041 465.5624 C 410.2271 465.5624 409.5025 465.3905 408.9303 465.0468 C 408.356 464.703 408.0709 464.2303 408.0728 463.6249 C 408.0709 463.3553 408.1334 463.121 408.2584 462.9218 C 408.3834 462.7245 408.5494 462.6249 408.7603 462.6249 C 408.8423 462.6249 408.9244 462.6503 409.0084 462.6991 C 409.0904 462.7499 409.1334 462.8339 409.1353 462.951 C 409.1334 463.0721 409.0846 463.1522 408.9869 463.1913 C 408.8893 463.2303 408.776 463.2499 408.649 463.2499 C 408.5592 463.2499 408.4889 463.2616 408.4361 463.2831 C 408.3814 463.3046 408.3443 463.326 408.3248 463.3456 C 408.3014 463.369 408.2838 463.4061 408.274 463.4608 C 408.2623 463.5155 408.2584 463.5741 408.2603 463.6385 C 408.2584 464.0272 408.4693 464.3397 408.8912 464.578 C 409.3111 464.8163 410.0182 464.9569 411.0103 464.9999 C 410.7584 464.8944 410.5494 464.7362 410.3834 464.5253 C 410.2154 464.3143 410.1334 464.0507 410.1353 463.7343 M 412.1861 468.8749 C 412.5611 468.8749 412.8502 468.7928 413.0513 468.6249 C 413.2505 468.4589 413.3521 468.2089 413.3541 467.8749 C 413.3521 467.6249 413.2818 467.412 413.1451 467.2343 C 413.0064 467.0585 412.8306 466.9686 412.6197 466.9686 C 412.4908 466.9686 412.3853 467.0057 412.3013 467.078 C 412.2154 467.1522 412.1295 467.1874 412.0474 467.1874 C 411.938 467.1874 411.858 467.1639 411.8072 467.1132 C 411.7525 467.0624 411.7271 466.9882 411.7291 466.8885 C 411.7271 466.7694 411.7623 466.6757 411.8365 466.6053 C 411.9088 466.535 412.0298 466.4999 412.1978 466.4999 C 412.6334 466.4999 412.9654 466.6561 413.1959 466.9686 C 413.4244 467.2811 413.5396 467.6151 413.5416 467.9686 C 413.5396 468.4686 413.4146 468.8397 413.1646 469.078 C 412.9146 469.3182 412.6021 469.4374 412.2291 469.4374 C 411.9771 469.4374 411.7271 469.3807 411.4771 469.2655 C 411.2271 469.1522 410.9869 468.9686 410.7603 468.7186 C 410.1744 468.1151 409.6998 467.6522 409.3365 467.328 C 408.9713 467.0057 408.7271 466.8124 408.6041 466.7499 L 408.6041 468.5936 C 408.6021 468.7811 408.6744 468.9374 408.8209 469.0624 C 408.9654 469.1874 409.1861 469.2714 409.4791 469.3124 L 409.4791 469.4999 L 408.1353 469.3124 L 408.1353 466.4061 L 408.5416 466.4061 C 408.7271 466.5116 408.9654 466.6835 409.2584 466.9218 C 409.5494 467.162 409.8931 467.4803 410.2916 467.8749 C 410.6471 468.2186 410.983 468.4706 411.2994 468.6327 C 411.6138 468.7948 411.9088 468.8749 412.1861 468.8749 M 411.5728 472.1483 C 411.5709 472.5468 411.4185 472.8729 411.1178 473.1229 C 410.815 473.3749 410.4146 473.4999 409.9166 473.4999 C 409.3521 473.4999 408.9029 473.371 408.5709 473.1093 C 408.2369 472.8495 408.0709 472.4491 408.0728 471.9061 C 408.0709 471.5311 408.1803 471.1991 408.399 470.9061 C 408.6178 470.6151 408.8834 470.4686 409.1978 470.4686 C 409.3209 470.4686 409.4302 470.5038 409.524 470.5741 C 409.6177 470.6444 409.6646 470.7382 409.6666 470.8573 C 409.6646 470.9764 409.6216 471.0565 409.5377 471.0956 C 409.4517 471.1366 409.3775 471.1561 409.315 471.1561 C 409.1842 471.1561 409.0826 471.1249 409.0084 471.0624 C 408.9342 470.9999 408.8541 470.9686 408.7701 470.9686 C 408.5982 470.9686 408.4713 471.0682 408.3873 471.2655 C 408.3014 471.4647 408.2584 471.6776 408.2603 471.9061 C 408.2584 472.2401 408.3951 472.496 408.6685 472.6718 C 408.942 472.8495 409.3307 472.9374 409.8385 472.9374 C 410.2564 472.9374 410.5982 472.8612 410.8639 472.7069 C 411.1256 472.5526 411.2584 472.3202 411.2603 472.0116 C 411.2584 471.787 411.2154 471.5917 411.1334 471.4276 C 411.0494 471.2635 410.8736 471.1093 410.6041 470.9647 L 410.6353 470.6874 L 413.4791 470.8436 L 413.4791 473.4061 L 413.0416 473.3104 L 413.0416 471.037 L 410.9478 470.9237 C 411.2369 471.1327 411.4146 471.3358 411.4771 471.535 C 411.5396 471.7343 411.5709 471.9393 411.5728 472.1483 M 411.7603 476.6249 C 411.7603 476.9179 411.7818 477.3046 411.8228 477.7812 L 413.2916 477.6249 L 413.6978 477.1562 L 414.3228 477.6874 L 411.8541 477.9374 C 411.9166 478.5858 412.0221 479.0956 412.1666 479.4687 C 412.6256 479.0546 412.9908 478.6171 413.2603 478.1562 L 413.8228 478.7187 L 413.5416 478.7499 C 413.1471 479.1269 412.7506 479.5019 412.3541 479.8749 C 412.7291 480.3983 413.1666 480.7616 413.6666 480.9687 L 414.1041 479.4687 L 414.2291 479.4999 C 414.1881 479.9804 414.1627 480.3769 414.151 480.6894 C 414.1412 481.0019 414.1822 481.246 414.276 481.4218 C 414.3697 481.5995 414.2916 481.6679 414.0416 481.6249 C 413.7916 481.5839 413.485 481.453 413.1197 481.2343 C 412.7564 481.0155 412.3853 480.6679 412.0103 480.1874 C 411.6353 480.4394 411.2564 480.6483 410.8697 480.8144 C 410.485 480.9804 410.0006 481.1464 409.4166 481.3124 L 409.3853 481.1874 C 410.2818 480.8554 411.0846 480.3983 411.7916 479.8124 C 411.6041 479.2519 411.4791 478.6483 411.4166 477.9999 L 410.1353 478.1562 L 409.8853 478.2812 L 409.5416 478.0312 L 411.3853 477.8437 C 411.3658 477.5546 411.3443 477.1581 411.3228 476.6562 L 410.4166 476.7187 L 410.2291 476.8437 L 409.9478 476.5937 L 411.3228 476.4999 C 411.3033 475.7733 411.2818 475.0429 411.2603 474.3124 L 411.9791 474.6562 L 411.7291 474.8749 C 411.7291 475.3144 411.7408 475.8456 411.7603 476.4687 L 413.1041 476.3437 L 413.5103 475.8749 L 414.1353 476.4374 ZM 412.2291 474.8437 L 412.2603 474.7499 C 412.9068 474.9179 413.2721 475.08 413.3541 475.2362 C 413.4381 475.3925 413.4381 475.5702 413.3541 475.7675 C 413.2721 475.9667 413.1627 475.9452 413.026 475.705 C 412.8912 475.4667 412.6256 475.1796 412.2291 474.8437 ZM 408.7916 474.4374 L 409.4166 474.8437 C 409.2506 474.9081 409.0728 475.123 408.8853 475.4862 C 408.6978 475.8515 408.3541 476.3769 407.8541 477.0624 L 409.1353 476.9374 C 409.3853 476.5233 409.5846 476.1054 409.7291 475.6874 L 410.2916 476.0937 C 410.1471 476.1796 409.8971 476.4823 409.5416 477.0019 C 409.1881 477.5233 408.7291 478.1483 408.1666 478.8749 C 408.4596 478.8358 409.1041 478.7206 410.1041 478.5312 L 410.1041 478.6562 C 409.5416 478.8046 409.1041 478.9355 408.7916 479.0487 C 408.4791 479.164 408.1666 479.3241 407.8541 479.5312 L 407.4791 478.8749 C 407.7096 478.8144 407.9752 478.5917 408.276 478.205 C 408.5787 477.8202 408.8443 477.4394 409.0728 477.0624 C 408.8443 477.1054 408.6041 477.164 408.3541 477.2362 C 408.1041 477.3105 407.8756 477.4394 407.6666 477.6249 L 407.3228 477.0312 C 407.5533 476.9921 407.8189 476.6952 408.1197 476.1425 C 408.4225 475.5917 408.6471 475.0233 408.7916 474.4374 ZM 407.2916 480.4062 C 407.8756 480.3241 408.3443 480.2519 408.6978 480.1894 C 409.0533 480.1269 409.6256 480.0116 410.4166 479.8437 L 410.4478 479.9687 C 409.5103 480.2421 408.8287 480.455 408.401 480.6112 C 407.9752 480.7675 407.7096 480.8964 407.6041 480.9999 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,96.667,22.666)" d="M 409.8853 450.5312 L 409.8853 449.1562 C 409.8853 448.1991 409.8756 447.5116 409.8541 447.0937 L 410.2916 447.3124 C 411.0221 446.9608 411.4693 446.6581 411.6353 446.4062 L 412.1041 446.9374 C 411.9381 446.9394 411.7252 446.9823 411.4635 447.0644 C 411.2037 447.1483 410.8131 447.2831 410.2916 447.4687 L 410.2916 450.7187 L 411.6041 450.0937 L 411.6666 450.1874 C 411.5221 450.2929 411.2721 450.4765 410.9166 450.7362 C 410.5631 450.998 410.3033 451.2421 410.1353 451.4687 L 409.7291 450.9374 C 409.8346 450.8769 409.8853 450.7421 409.8853 450.5312 ZM 412.6353 450.8124 C 413.0318 450.8358 413.2877 450.8417 413.401 450.83 C 413.5162 450.8202 413.5631 450.6991 413.5416 450.4687 L 413.5416 447.7187 L 412.2916 447.7187 L 412.2916 452.2187 L 411.8541 452.4687 C 411.8756 451.9296 411.8853 451.0233 411.8853 449.7519 C 411.8853 448.4823 411.8756 447.6581 411.8541 447.2812 L 412.2916 447.5312 L 413.5103 447.5312 L 413.7291 447.2187 L 414.1978 447.5937 L 413.9478 447.7812 L 413.9478 450.7499 C 413.9693 451.1054 413.7818 451.3554 413.3853 451.4999 C 413.3658 451.2108 413.1158 451.0233 412.6353 450.9374 ZM 407.9166 446.6874 L 408.0103 446.6249 C 408.3658 446.8554 408.6197 447.0448 408.776 447.1894 C 408.9322 447.3358 408.9947 447.4862 408.9635 447.6425 C 408.9322 447.7987 408.8502 447.9237 408.7135 448.0175 C 408.5787 448.1112 408.485 448.0175 408.4322 447.7362 C 408.3814 447.455 408.2096 447.1054 407.9166 446.6874 ZM 408.8541 451.7187 C 409.0416 451.9296 409.3033 452.1386 409.6353 452.3456 C 409.9693 452.5546 410.5943 452.6796 411.5103 452.7206 C 412.4283 452.7636 413.4478 452.7206 414.5728 452.5937 L 414.5728 452.7187 C 414.1783 452.8241 413.9693 452.9901 413.9478 453.2187 C 412.9478 453.2187 412.1471 453.1991 411.5416 453.1562 C 410.9381 453.1151 410.4381 453.0214 410.0416 452.8749 C 409.6471 452.7304 409.3385 452.539 409.1197 452.2987 C 408.901 452.0605 408.7408 451.9394 408.6353 451.9394 C 408.5318 451.9394 408.3541 452.0644 408.1041 452.3144 C 407.8541 452.5644 407.6881 452.7616 407.6041 452.9062 L 407.1666 452.4687 C 407.5006 452.1991 407.9283 451.9491 408.4478 451.7187 L 408.4478 449.2499 L 408.2916 449.2499 C 408.0221 449.2519 407.7721 449.2831 407.5416 449.3437 L 407.2603 449.0624 L 408.4166 449.0624 L 408.6353 448.7499 L 409.1041 449.0937 M 410.3853 456.4999 C 410.2408 456.8358 410.1041 457.0956 409.9791 457.2812 L 413.3853 457.2812 L 413.8228 456.8437 L 414.4478 457.4687 L 412.0728 457.4687 C 412.2603 457.7421 412.4947 457.9921 412.776 458.2206 C 413.0572 458.4511 413.3502 458.623 413.651 458.7362 C 413.9537 458.8515 414.2603 458.9179 414.5728 458.9374 L 414.5728 459.0624 C 414.3033 459.0644 414.1041 459.1894 413.9791 459.4374 C 413.6041 459.2929 413.2252 459.0487 412.8385 458.705 C 412.4537 458.3612 412.1353 457.9491 411.8853 457.4687 L 409.9166 457.4687 C 409.5221 457.9706 409.1002 458.373 408.651 458.6737 C 408.2037 458.9765 407.7193 459.2304 407.1978 459.4374 L 407.1666 459.3124 C 408.1471 458.7733 408.8971 458.1581 409.4166 457.4687 L 407.7603 457.4687 L 407.4791 457.5312 L 407.2291 457.2812 L 409.5103 457.2812 C 409.6353 457.0956 409.7721 456.8358 409.9166 456.4999 L 408.4791 456.4999 L 408.1978 456.5624 L 407.9478 456.3124 L 409.9791 456.3124 C 410.0631 456.0644 410.1353 455.8144 410.1978 455.5624 L 408.1978 455.5624 L 407.9166 455.6249 L 407.6666 455.3749 L 410.2291 455.3749 C 410.3131 455.0233 410.3541 454.6796 410.3541 454.3437 L 411.1353 454.6874 C 410.9693 454.7519 410.8346 454.9804 410.7291 455.3749 L 413.0416 455.3749 L 413.4478 454.9687 L 414.0416 455.5624 L 410.6978 455.5624 C 410.6158 455.8144 410.5318 456.0644 410.4478 456.3124 L 412.4166 456.3124 L 412.7916 455.9374 L 413.3541 456.4999 ZM 409.6041 458.7187 L 409.6041 459.7187 L 411.9478 459.7187 L 411.9478 458.7187 ZM 409.6041 459.9062 L 409.6041 460.9062 L 411.9478 460.9062 L 411.9478 459.9062 ZM 412.3853 458.8749 C 412.3853 460.2519 412.3971 461.0839 412.4166 461.3749 L 411.9478 461.6562 L 411.9478 461.0937 L 409.6041 461.0937 L 409.6041 461.4062 L 409.1353 461.6562 C 409.1568 461.1366 409.1666 460.5858 409.1666 460.0019 C 409.1666 459.4198 409.1568 458.8456 409.1353 458.2812 L 409.6353 458.5312 L 411.8853 458.5312 L 412.1666 458.2499 M 411.8541 462.8436 C 411.3931 462.8436 411.0435 462.9354 410.8052 463.1171 C 410.565 463.3007 410.4459 463.5311 410.4478 463.8085 C 410.4459 464.1307 410.5904 464.41 410.8834 464.6464 C 411.1744 464.8827 411.4459 464.9999 411.6978 464.9999 C 412.1959 464.9999 412.5963 464.9139 412.899 464.7421 C 413.1998 464.5702 413.3521 464.2909 413.3541 463.9042 C 413.3521 463.5409 413.2115 463.2733 412.9302 463.1014 C 412.649 462.9296 412.2896 462.8436 411.8541 462.8436 ZM 410.1353 463.7343 C 410.1334 463.3124 410.2623 462.9764 410.524 462.7225 C 410.7838 462.4706 411.2056 462.3436 411.7916 462.3436 C 412.2896 462.3436 412.7056 462.4803 413.0396 462.7499 C 413.3716 463.0214 413.5396 463.4061 413.5416 463.9061 C 413.5396 464.4276 413.3306 464.8339 412.9146 465.1249 C 412.4966 465.4178 411.8932 465.5624 411.1041 465.5624 C 410.2271 465.5624 409.5025 465.3905 408.9303 465.0468 C 408.356 464.703 408.0709 464.2303 408.0728 463.6249 C 408.0709 463.3553 408.1334 463.121 408.2584 462.9218 C 408.3834 462.7245 408.5494 462.6249 408.7603 462.6249 C 408.8423 462.6249 408.9244 462.6503 409.0084 462.6991 C 409.0904 462.7499 409.1334 462.8339 409.1353 462.951 C 409.1334 463.0721 409.0846 463.1522 408.9869 463.1913 C 408.8893 463.2303 408.776 463.2499 408.649 463.2499 C 408.5592 463.2499 408.4889 463.2616 408.4361 463.2831 C 408.3814 463.3046 408.3443 463.326 408.3248 463.3456 C 408.3014 463.369 408.2838 463.4061 408.274 463.4608 C 408.2623 463.5155 408.2584 463.5741 408.2603 463.6385 C 408.2584 464.0272 408.4693 464.3397 408.8912 464.578 C 409.3111 464.8163 410.0182 464.9569 411.0103 464.9999 C 410.7584 464.8944 410.5494 464.7362 410.3834 464.5253 C 410.2154 464.3143 410.1334 464.0507 410.1353 463.7343 M 412.1861 468.8749 C 412.5611 468.8749 412.8502 468.7928 413.0513 468.6249 C 413.2505 468.4589 413.3521 468.2089 413.3541 467.8749 C 413.3521 467.6249 413.2818 467.412 413.1451 467.2343 C 413.0064 467.0585 412.8306 466.9686 412.6197 466.9686 C 412.4908 466.9686 412.3853 467.0057 412.3013 467.078 C 412.2154 467.1522 412.1295 467.1874 412.0474 467.1874 C 411.938 467.1874 411.858 467.1639 411.8072 467.1132 C 411.7525 467.0624 411.7271 466.9882 411.7291 466.8885 C 411.7271 466.7694 411.7623 466.6757 411.8365 466.6053 C 411.9088 466.535 412.0298 466.4999 412.1978 466.4999 C 412.6334 466.4999 412.9654 466.6561 413.1959 466.9686 C 413.4244 467.2811 413.5396 467.6151 413.5416 467.9686 C 413.5396 468.4686 413.4146 468.8397 413.1646 469.078 C 412.9146 469.3182 412.6021 469.4374 412.2291 469.4374 C 411.9771 469.4374 411.7271 469.3807 411.4771 469.2655 C 411.2271 469.1522 410.9869 468.9686 410.7603 468.7186 C 410.1744 468.1151 409.6998 467.6522 409.3365 467.328 C 408.9713 467.0057 408.7271 466.8124 408.6041 466.7499 L 408.6041 468.5936 C 408.6021 468.7811 408.6744 468.9374 408.8209 469.0624 C 408.9654 469.1874 409.1861 469.2714 409.4791 469.3124 L 409.4791 469.4999 L 408.1353 469.3124 L 408.1353 466.4061 L 408.5416 466.4061 C 408.7271 466.5116 408.9654 466.6835 409.2584 466.9218 C 409.5494 467.162 409.8931 467.4803 410.2916 467.8749 C 410.6471 468.2186 410.983 468.4706 411.2994 468.6327 C 411.6138 468.7948 411.9088 468.8749 412.1861 468.8749 M 408.7291 472.8749 C 408.5807 472.8749 408.4771 472.9178 408.4146 472.9999 C 408.3521 473.0839 408.3209 473.1991 408.3228 473.3436 L 408.3228 473.6249 L 408.1353 473.6249 L 408.1353 471.5624 L 408.3228 471.5624 L 408.3228 471.9061 C 408.3209 472.0741 408.3521 472.1932 408.4146 472.2655 C 408.4771 472.3397 408.5807 472.3749 408.7291 472.3749 L 409.7603 472.3749 L 409.7603 470.2811 L 409.9166 470.2811 L 413.5416 472.5624 L 413.5416 472.8749 L 409.9478 472.8749 L 409.9478 473.7186 L 409.7603 473.7186 L 409.7603 472.8749 ZM 412.7603 472.3436 L 409.9478 470.5624 L 409.9478 472.3749 M 411.7603 476.6249 C 411.7603 476.9179 411.7818 477.3046 411.8228 477.7812 L 413.2916 477.6249 L 413.6978 477.1562 L 414.3228 477.6874 L 411.8541 477.9374 C 411.9166 478.5858 412.0221 479.0956 412.1666 479.4687 C 412.6256 479.0546 412.9908 478.6171 413.2603 478.1562 L 413.8228 478.7187 L 413.5416 478.7499 C 413.1471 479.1269 412.7506 479.5019 412.3541 479.8749 C 412.7291 480.3983 413.1666 480.7616 413.6666 480.9687 L 414.1041 479.4687 L 414.2291 479.4999 C 414.1881 479.9804 414.1627 480.3769 414.151 480.6894 C 414.1412 481.0019 414.1822 481.246 414.276 481.4218 C 414.3697 481.5995 414.2916 481.6679 414.0416 481.6249 C 413.7916 481.5839 413.485 481.453 413.1197 481.2343 C 412.7564 481.0155 412.3853 480.6679 412.0103 480.1874 C 411.6353 480.4394 411.2564 480.6483 410.8697 480.8144 C 410.485 480.9804 410.0006 481.1464 409.4166 481.3124 L 409.3853 481.1874 C 410.2818 480.8554 411.0846 480.3983 411.7916 479.8124 C 411.6041 479.2519 411.4791 478.6483 411.4166 477.9999 L 410.1353 478.1562 L 409.8853 478.2812 L 409.5416 478.0312 L 411.3853 477.8437 C 411.3658 477.5546 411.3443 477.1581 411.3228 476.6562 L 410.4166 476.7187 L 410.2291 476.8437 L 409.9478 476.5937 L 411.3228 476.4999 C 411.3033 475.7733 411.2818 475.0429 411.2603 474.3124 L 411.9791 474.6562 L 411.7291 474.8749 C 411.7291 475.3144 411.7408 475.8456 411.7603 476.4687 L 413.1041 476.3437 L 413.5103 475.8749 L 414.1353 476.4374 ZM 412.2291 474.8437 L 412.2603 474.7499 C 412.9068 474.9179 413.2721 475.08 413.3541 475.2362 C 413.4381 475.3925 413.4381 475.5702 413.3541 475.7675 C 413.2721 475.9667 413.1627 475.9452 413.026 475.705 C 412.8912 475.4667 412.6256 475.1796 412.2291 474.8437 ZM 408.7916 474.4374 L 409.4166 474.8437 C 409.2506 474.9081 409.0728 475.123 408.8853 475.4862 C 408.6978 475.8515 408.3541 476.3769 407.8541 477.0624 L 409.1353 476.9374 C 409.3853 476.5233 409.5846 476.1054 409.7291 475.6874 L 410.2916 476.0937 C 410.1471 476.1796 409.8971 476.4823 409.5416 477.0019 C 409.1881 477.5233 408.7291 478.1483 408.1666 478.8749 C 408.4596 478.8358 409.1041 478.7206 410.1041 478.5312 L 410.1041 478.6562 C 409.5416 478.8046 409.1041 478.9355 408.7916 479.0487 C 408.4791 479.164 408.1666 479.3241 407.8541 479.5312 L 407.4791 478.8749 C 407.7096 478.8144 407.9752 478.5917 408.276 478.205 C 408.5787 477.8202 408.8443 477.4394 409.0728 477.0624 C 408.8443 477.1054 408.6041 477.164 408.3541 477.2362 C 408.1041 477.3105 407.8756 477.4394 407.6666 477.6249 L 407.3228 477.0312 C 407.5533 476.9921 407.8189 476.6952 408.1197 476.1425 C 408.4225 475.5917 408.6471 475.0233 408.7916 474.4374 ZM 407.2916 480.4062 C 407.8756 480.3241 408.3443 480.2519 408.6978 480.1894 C 409.0533 480.1269 409.6256 480.0116 410.4166 479.8437 L 410.4478 479.9687 C 409.5103 480.2421 408.8287 480.455 408.401 480.6112 C 407.9752 480.7675 407.7096 480.8964 407.6041 480.9999 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,31,26.333)" d="M 369.6249 285.6978 L 369.6249 286.5103 L 372.7812 286.5103 L 372.7812 285.6978 ZM 370.8124 280.9478 L 371.5624 281.2603 L 371.2812 281.4791 L 371.2812 282.0103 L 373.3124 282.0103 L 373.7812 281.5416 L 374.4062 282.1978 L 371.2812 282.1978 L 371.2812 282.8228 L 372.9374 282.8228 L 373.3437 282.4478 L 373.8749 283.0103 L 371.2812 283.0103 L 371.2812 283.8228 L 373.7812 283.8228 L 374.2499 283.3541 L 374.8749 284.0103 L 368.5624 284.0103 C 368.2929 284.0123 368.0429 284.0435 367.8124 284.1041 L 367.5312 283.8228 L 370.8437 283.8228 L 370.8437 283.0103 L 369.4374 283.0103 C 369.1679 283.0123 368.9179 283.0435 368.6874 283.1041 L 368.4062 282.8228 L 370.8437 282.8228 L 370.8437 282.1978 L 368.7499 282.1978 C 368.4804 282.1998 368.2304 282.231 367.9999 282.2916 L 367.7187 282.0103 L 370.8437 282.0103 C 370.8437 281.6373 370.8339 281.2838 370.8124 280.9478 ZM 369.1562 284.3228 L 369.6874 284.5728 L 372.7187 284.5728 L 372.9374 284.2916 L 373.4374 284.6666 L 373.2187 284.8541 L 373.2187 287.5103 C 373.2401 287.9283 373.0116 288.1978 372.5312 288.3228 C 372.5312 288.0318 372.2304 287.8228 371.6249 287.6978 L 371.6249 287.5728 C 372.2304 287.6158 372.5741 287.6314 372.6562 287.6197 C 372.7401 287.61 372.7812 287.5416 372.7812 287.4166 L 372.7812 286.6978 L 369.6249 286.6978 L 369.6249 288.1666 L 369.1562 288.3853 C 369.1776 287.9283 369.1874 287.2467 369.1874 286.3404 C 369.1874 285.4342 369.1776 284.7623 369.1562 284.3228 ZM 369.6249 284.7603 L 369.6249 285.5103 L 372.7812 285.5103 M 373.4687 295.1978 C 373.4687 293.2623 373.4687 292.19 373.4687 291.981 C 373.4687 291.774 373.4589 291.4596 373.4374 291.0416 L 374.1874 291.3853 L 373.9062 291.6666 C 373.9062 293.606 373.9062 294.6959 373.9062 294.9342 C 373.9062 295.1744 373.9179 295.4596 373.9374 295.7916 L 373.4687 296.0103 L 373.4687 295.3853 L 368.9687 295.3853 L 368.6874 295.6978 L 368.2499 295.2603 L 368.4999 295.0416 C 368.4999 293.19 368.4999 292.1588 368.4999 291.9498 C 368.4999 291.7428 368.4901 291.44 368.4687 291.0416 L 369.1874 291.3541 L 368.9374 291.5728 L 368.9374 295.1978 L 370.9062 295.1978 C 370.9062 292.1998 370.9062 290.5709 370.9062 290.3092 C 370.9062 290.0494 370.8964 289.6783 370.8749 289.1978 L 371.6249 289.5416 L 371.3437 289.7603 M 370.6874 297.0416 L 370.7812 296.9791 C 371.0741 297.106 371.2968 297.2271 371.453 297.3404 C 371.6093 297.4557 371.6933 297.5748 371.703 297.6998 C 371.7148 297.8248 371.6523 297.9615 371.5155 298.106 C 371.3808 298.2525 371.2773 298.19 371.203 297.9185 C 371.1308 297.649 370.9589 297.356 370.6874 297.0416 ZM 373.5937 299.1666 L 373.9687 298.4166 L 368.7812 298.4166 C 368.7812 298.5846 368.7616 298.7428 368.7187 298.8873 C 368.6776 299.0338 368.5898 299.1334 368.453 299.1842 C 368.3183 299.2369 368.1933 299.2213 368.078 299.1373 C 367.9648 299.0553 368.0155 298.9244 368.2343 298.7467 C 368.453 298.5709 368.5937 298.2623 368.6562 297.8228 L 368.7812 297.8228 L 368.7812 298.2291 L 373.9374 298.2291 L 374.2499 297.9166 L 374.7812 298.4791 C 374.5116 298.5025 374.1464 298.7525 373.6874 299.2291 ZM 369.8749 300.6978 L 369.8749 302.0728 L 371.9687 302.0728 L 371.9687 300.6978 ZM 369.4374 302.0728 C 369.4374 300.6158 369.4276 299.6685 369.4062 299.2291 L 369.9062 299.5416 C 370.3651 299.481 370.8651 299.3717 371.4062 299.2154 C 371.9491 299.0592 372.3749 298.8658 372.6874 298.6353 L 373.1562 299.2291 C 372.9276 299.231 372.4901 299.2935 371.8437 299.4185 C 371.1991 299.5435 370.5429 299.6373 369.8749 299.6978 L 369.8749 300.5103 L 373.0937 300.5103 L 373.4687 300.1353 L 374.0312 300.6978 L 372.4062 300.6978 L 372.4062 302.0728 L 373.5312 302.0728 L 373.9999 301.6041 L 374.6562 302.2603 L 368.9062 302.2603 C 368.6366 302.2623 368.3866 302.2935 368.1562 302.3541 L 367.8749 302.0728 ZM 370.1874 302.3853 L 370.7187 302.9166 C 370.4901 302.981 370.162 303.1685 369.7343 303.481 C 369.3085 303.7935 368.7929 304.0728 368.1874 304.3228 L 368.1249 304.2291 C 368.9999 303.7096 369.6874 303.0963 370.1874 302.3853 ZM 372.1562 302.6041 L 372.1874 302.4791 C 373.0839 302.856 373.6679 303.1588 373.9374 303.3873 C 374.2089 303.6158 374.3026 303.86 374.2187 304.1197 C 374.1366 304.3814 373.9491 304.3033 373.6562 303.8853 C 373.3651 303.4713 372.8651 303.0435 372.1562 302.6041 M 371.5312 307.6041 L 371.5312 308.7916 L 373.4062 308.7916 L 373.4062 307.6041 ZM 371.5312 309.9478 L 371.5312 311.3541 L 373.6874 311.3541 L 373.6874 309.9478 ZM 373.9062 307.1353 L 374.1562 306.4478 L 371.1874 306.4478 C 371.1874 306.5338 371.1776 306.6529 371.1562 306.8092 C 371.1366 306.9654 371.0683 307.0865 370.953 307.1685 C 370.8398 307.2525 370.7148 307.2584 370.578 307.1842 C 370.4433 307.1119 370.4745 306.9869 370.6718 306.8092 C 370.871 306.6334 370.9999 306.356 371.0624 305.9791 L 371.1874 305.9791 L 371.1874 306.2603 L 372.4999 306.2603 C 372.4804 306.0963 372.4335 305.9303 372.3593 305.7623 C 372.287 305.5963 372.1464 305.3971 371.9374 305.1666 L 371.9999 305.1041 C 372.4804 305.315 372.7714 305.5025 372.8749 305.6685 C 372.9804 305.8365 372.9276 306.0338 372.7187 306.2603 L 374.0937 306.2603 L 374.3437 305.9478 L 374.8749 306.4478 C 374.7499 306.4908 374.6405 306.5435 374.5468 306.606 C 374.453 306.6685 374.2714 306.8658 373.9999 307.1978 ZM 373.8124 307.6978 C 373.8124 308.3248 373.8241 308.7838 373.8437 309.0728 L 373.4062 309.2916 L 373.4062 308.9791 L 371.5312 308.9791 L 371.5312 309.7603 L 373.6249 309.7603 L 373.9374 309.4478 L 374.3437 309.8541 L 374.0937 310.0728 C 374.0937 310.9908 374.1054 311.5943 374.1249 311.8853 L 373.6874 312.1041 L 373.6874 311.5416 L 371.5312 311.5416 L 371.5312 312.0416 L 371.0937 312.2916 C 371.1151 311.6256 371.1249 310.8053 371.1249 309.8248 C 371.1249 308.8463 371.1151 307.9498 371.0937 307.1353 L 371.5624 307.4166 L 373.3437 307.4166 L 373.6562 307.1041 L 374.0624 307.5103 ZM 369.3749 307.8228 L 369.9062 306.6978 L 368.6874 306.6978 C 368.3554 307.4088 367.9901 308.0123 367.5937 308.5103 L 367.4999 308.4478 C 367.8339 307.8873 368.1151 307.2369 368.3437 306.4967 C 368.5741 305.7584 368.6991 305.2721 368.7187 305.0416 L 369.4062 305.4166 L 369.1249 305.6041 C 368.9999 305.8971 368.8749 306.1998 368.7499 306.5103 L 369.8749 306.5103 L 370.1562 306.1666 L 370.6562 306.6666 C 370.4687 306.731 370.3241 306.815 370.2187 306.9185 C 370.1151 307.024 369.8651 307.3346 369.4687 307.8541 ZM 369.1249 311.0103 L 370.4374 309.9166 L 370.5312 310.0103 C 369.5937 310.9908 369.0741 311.6041 368.9687 311.8541 L 368.5312 311.3853 C 368.6562 311.3033 368.7187 311.1588 368.7187 310.9478 L 368.7187 308.7916 C 368.7187 308.356 368.7089 307.9596 368.6874 307.6041 L 369.3437 307.9478 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,39.333,58.333)" d="M 30.87499 203.2708 L 30.87499 207.677 L 30.43749 207.8958 C 30.45897 207.1692 30.46874 206.2474 30.46874 205.1321 C 30.46874 204.0188 30.45897 203.2415 30.43749 202.802 L 30.90624 203.0833 L 32.84374 203.0833 L 32.90624 202.0833 L 30.65624 202.0833 C 30.38671 202.0853 30.13671 202.1165 29.90624 202.177 L 29.62499 201.8958 L 32.93749 201.8958 C 32.95897 201.4817 32.96874 201.0755 32.96874 200.677 L 33.68749 200.9895 L 33.43749 201.177 L 33.37499 201.8958 L 35.62499 201.8958 L 36.12499 201.3958 L 36.81249 202.0833 L 33.34374 202.0833 L 33.28124 203.0833 L 35.53124 203.0833 L 35.74999 202.7708 L 36.24999 203.1458 L 35.99999 203.3645 L 35.99999 206.8645 C 36.02147 207.386 35.77147 207.7395 35.24999 207.927 C 35.23046 207.595 34.87499 207.3548 34.18749 207.2083 L 34.18749 207.052 C 34.56249 207.095 34.89061 207.1282 35.17186 207.1478 C 35.45311 207.1692 35.59374 207.0442 35.59374 206.7708 L 35.59374 203.2708 ZM 31.87499 203.427 C 32.23046 203.6165 32.48436 203.7884 32.64061 203.9446 C 32.79686 204.1009 32.80272 204.2884 32.65624 204.5071 C 32.51171 204.7259 32.40233 204.6946 32.32811 204.4134 C 32.25585 204.1321 32.08397 203.8255 31.81249 203.4895 ZM 34.03124 203.3333 L 34.62499 203.7708 L 34.34374 203.8645 C 34.09374 204.1575 33.82421 204.4505 33.53124 204.7395 L 34.28124 204.7395 L 34.62499 204.3958 L 35.15624 204.927 L 33.34374 204.927 L 33.34374 205.7395 L 34.43749 205.7395 L 34.81249 205.3645 L 35.37499 205.927 L 33.34374 205.927 L 33.34374 207.5208 L 32.93749 207.7395 L 32.93749 205.927 L 32.09374 205.927 C 31.82421 205.929 31.57421 205.9603 31.34374 206.0208 L 31.06249 205.7395 L 32.93749 205.7395 L 32.93749 204.927 L 32.37499 204.927 C 32.10546 204.929 31.85546 204.9603 31.62499 205.0208 L 31.34374 204.7395 L 33.34374 204.7395 C 33.65624 204.263 33.88671 203.7942 34.03124 203.3333 M 33.46874 215.927 C 33.49022 215.386 33.49999 214.6478 33.49999 213.7083 L 32.34374 213.7083 L 32.06249 213.7708 L 31.81249 213.5208 L 33.49999 213.5208 L 33.49999 212.0833 L 32.84374 212.0833 L 32.56249 212.1458 L 32.31249 211.8958 L 33.49999 211.8958 L 33.49999 210.4895 L 32.68749 210.4895 L 32.37499 210.552 L 32.12499 210.302 L 33.49999 210.302 C 33.49999 209.5325 33.49022 208.9915 33.46874 208.677 L 34.18749 209.052 L 33.90624 209.2708 L 33.90624 215.7083 ZM 35.12499 213.7395 C 35.12499 214.554 35.13671 215.2083 35.15624 215.7083 L 34.71874 215.927 L 34.71874 210.1458 C 34.71874 209.5638 34.70897 209.0853 34.68749 208.7083 L 35.43749 209.052 L 35.12499 209.2708 L 35.12499 210.3333 L 36.03124 210.3333 L 36.34374 210.0208 L 36.84374 210.5208 L 35.12499 210.5208 L 35.12499 211.927 L 35.93749 211.927 L 36.24999 211.6145 L 36.74999 212.1145 L 35.12499 212.1145 L 35.12499 213.552 L 36.03124 213.552 L 36.37499 213.2083 L 36.90624 213.7395 ZM 30.87499 210.5208 C 30.87499 209.6692 30.86522 209.0442 30.84374 208.6458 L 31.56249 208.9895 L 31.28124 209.177 L 31.28124 210.5208 L 31.53124 210.5208 L 31.84374 210.2083 L 32.34374 210.7083 L 31.28124 210.7083 L 31.28124 211.9895 L 32.24999 211.552 L 32.31249 211.6458 L 31.28124 212.302 L 31.28124 214.9583 C 31.30272 215.3958 31.08397 215.7083 30.62499 215.8958 C 30.64647 215.6673 30.37499 215.4485 29.81249 215.2395 L 29.81249 215.1145 C 30.20897 215.179 30.48436 215.2083 30.64061 215.2083 C 30.79686 215.2083 30.87499 215.0853 30.87499 214.8333 L 30.87499 212.5208 C 30.33397 212.8353 30.01171 213.0755 29.90624 213.2395 L 29.53124 212.6458 C 29.76171 212.6067 30.20897 212.4388 30.87499 212.1458 L 30.87499 210.7083 L 30.12499 210.7083 L 29.81249 210.7708 M 34.18748 217.177 C 33.72655 217.177 33.37694 217.2688 33.13866 217.4505 C 32.89842 217.6341 32.77928 217.8645 32.78123 218.1419 C 32.77929 218.4641 32.92382 218.7434 33.21679 218.9798 C 33.5078 219.2161 33.77929 219.3333 34.03124 219.3333 C 34.52928 219.3333 34.92967 219.2473 35.23241 219.0755 C 35.53319 218.9036 35.68553 218.6243 35.68748 218.2376 C 35.68553 217.8743 35.54491 217.6067 35.26366 217.4348 C 34.98241 217.263 34.62303 217.177 34.18748 217.177 ZM 32.46874 218.0677 C 32.46678 217.6458 32.59569 217.3098 32.85741 217.0559 C 33.11717 216.804 33.53905 216.677 34.12498 216.677 C 34.62303 216.677 35.03905 216.8138 35.37303 217.0833 C 35.70506 217.3548 35.87303 217.7395 35.87498 218.2395 C 35.87303 218.761 35.66405 219.1673 35.24803 219.4583 C 34.83006 219.7513 34.22655 219.8958 33.43749 219.8958 C 32.56054 219.8958 31.83593 219.7239 31.26366 219.3802 C 30.68944 219.0364 30.40429 218.5638 30.40624 217.9583 C 30.40429 217.6888 30.46679 217.4544 30.59179 217.2552 C 30.71679 217.0579 30.8828 216.9583 31.09374 216.9583 C 31.17577 216.9583 31.2578 216.9837 31.34178 217.0325 C 31.42381 217.0833 31.46678 217.1673 31.46874 217.2845 C 31.46679 217.4055 31.41796 217.4856 31.3203 217.5247 C 31.22264 217.5638 31.10936 217.5833 30.98241 217.5833 C 30.89257 217.5833 30.82225 217.595 30.76952 217.6165 C 30.71483 217.638 30.67772 217.6595 30.65819 217.679 C 30.63475 217.7024 30.61718 217.7395 30.60741 217.7942 C 30.59569 217.8489 30.59179 217.9075 30.59374 217.972 C 30.59179 218.3606 30.80272 218.6731 31.2246 218.9114 C 31.64452 219.1497 32.35155 219.2903 33.34374 219.3333 C 33.09179 219.2278 32.8828 219.0696 32.71679 218.8587 C 32.54882 218.6477 32.46679 218.3841 32.46874 218.0677 M 35.87498 222.6145 L 31.15233 222.6145 C 30.98436 222.6145 30.86132 222.6673 30.77929 222.7708 C 30.6953 222.8763 30.65429 223.0208 30.65624 223.2083 L 30.65624 223.5208 L 30.46874 223.5208 L 30.46874 221.2395 L 30.65624 221.2395 L 30.65624 221.5208 C 30.65429 221.7298 30.6953 221.8802 30.77929 221.9739 C 30.86132 222.0677 30.98436 222.1145 31.15233 222.1145 L 34.90819 222.1145 C 34.98827 222.1145 35.05467 222.0891 35.10741 222.0364 C 35.15819 221.9856 35.18553 221.9075 35.18748 221.802 L 35.18748 221.2395 L 35.37498 221.2395 L 35.37498 221.5208 C 35.37303 221.7708 35.41405 221.9739 35.49803 222.1302 C 35.58006 222.2864 35.70702 222.4075 35.87498 222.4895 M 34.51952 227.2083 C 34.89452 227.2083 35.18358 227.1263 35.38475 226.9583 C 35.58397 226.7923 35.68553 226.5423 35.68748 226.2083 C 35.68553 225.9583 35.61522 225.7454 35.4785 225.5677 C 35.33983 225.3919 35.16405 225.302 34.95311 225.302 C 34.8242 225.302 34.71873 225.3391 34.63475 225.4114 C 34.54881 225.4856 34.46288 225.5208 34.38084 225.5208 C 34.27147 225.5208 34.19139 225.4973 34.14061 225.4466 C 34.08592 225.3958 34.06053 225.3216 34.06248 225.222 C 34.06053 225.1028 34.09569 225.0091 34.16991 224.9388 C 34.24217 224.8684 34.36327 224.8333 34.53123 224.8333 C 34.96678 224.8333 35.29881 224.9895 35.52928 225.302 C 35.7578 225.6145 35.87303 225.9485 35.87498 226.302 C 35.87303 226.802 35.74803 227.1731 35.49803 227.4114 C 35.24803 227.6516 34.93553 227.7708 34.56249 227.7708 C 34.31054 227.7708 34.06054 227.7141 33.81054 227.5989 C 33.56054 227.4856 33.3203 227.302 33.09374 227.052 C 32.5078 226.4485 32.03319 225.9856 31.66991 225.6614 C 31.30468 225.3391 31.06054 225.1458 30.93749 225.0833 L 30.93749 226.927 C 30.93554 227.1145 31.0078 227.2708 31.15429 227.3958 C 31.29882 227.5208 31.51952 227.6048 31.81249 227.6458 L 31.81249 227.8333 L 30.46874 227.6458 L 30.46874 224.7395 L 30.87499 224.7395 C 31.06053 224.845 31.29881 225.0169 31.59178 225.2552 C 31.8828 225.4954 32.22655 225.8138 32.62499 226.2083 C 32.98046 226.552 33.31639 226.804 33.6328 226.9661 C 33.94725 227.1282 34.24217 227.2083 34.51952 227.2083 M 34.09374 230.9583 C 34.09374 231.2513 34.11522 231.638 34.15624 232.1145 L 35.62499 231.9583 L 36.03124 231.4895 L 36.65624 232.0208 L 34.18749 232.2708 C 34.24999 232.9192 34.35546 233.429 34.49999 233.802 C 34.95897 233.388 35.32421 232.9505 35.59374 232.4895 L 36.15624 233.052 L 35.87499 233.0833 C 35.48046 233.4603 35.08397 233.8353 34.68749 234.2083 C 35.06249 234.7317 35.49999 235.095 35.99999 235.302 L 36.43749 233.802 L 36.56249 233.8333 C 36.52147 234.3138 36.49608 234.7103 36.48436 235.0228 C 36.4746 235.3353 36.51561 235.5794 36.60936 235.7552 C 36.70311 235.9329 36.62499 236.0013 36.37499 235.9583 C 36.12499 235.9173 35.81835 235.7864 35.45311 235.5677 C 35.08983 235.3489 34.71874 235.0013 34.34374 234.5208 C 33.96874 234.7728 33.58983 234.9817 33.20311 235.1478 C 32.81835 235.3138 32.33397 235.4798 31.74999 235.6458 L 31.71874 235.5208 C 32.61522 235.1888 33.41796 234.7317 34.12499 234.1458 C 33.93749 233.5853 33.81249 232.9817 33.74999 232.3333 L 32.46874 232.4895 L 32.21874 232.6145 L 31.87499 232.3645 L 33.71874 232.177 C 33.69921 231.888 33.67772 231.4915 33.65624 230.9895 L 32.74999 231.052 L 32.56249 231.177 L 32.28124 230.927 L 33.65624 230.8333 C 33.63671 230.1067 33.61522 229.3763 33.59374 228.6458 L 34.31249 228.9895 L 34.06249 229.2083 C 34.06249 229.6478 34.07421 230.179 34.09374 230.802 L 35.43749 230.677 L 35.84374 230.2083 L 36.46874 230.7708 ZM 34.56249 229.177 L 34.59374 229.0833 C 35.24022 229.2513 35.60546 229.4134 35.68749 229.5696 C 35.77147 229.7259 35.77147 229.9036 35.68749 230.1009 C 35.60546 230.3001 35.49608 230.2786 35.35936 230.0384 C 35.2246 229.8001 34.95897 229.513 34.56249 229.177 ZM 31.12499 228.7708 L 31.74999 229.177 C 31.58397 229.2415 31.40624 229.4563 31.21874 229.8196 C 31.03124 230.1849 30.68749 230.7103 30.18749 231.3958 L 31.46874 231.2708 C 31.71874 230.8567 31.91796 230.4388 32.06249 230.0208 L 32.62499 230.427 C 32.48046 230.513 32.23046 230.8157 31.87499 231.3353 C 31.52147 231.8567 31.06249 232.4817 30.49999 233.2083 C 30.79296 233.1692 31.43749 233.054 32.43749 232.8645 L 32.43749 232.9895 C 31.87499 233.138 31.43749 233.2688 31.12499 233.3821 C 30.81249 233.4974 30.49999 233.6575 30.18749 233.8645 L 29.81249 233.2083 C 30.04296 233.1478 30.30858 232.9251 30.60936 232.5384 C 30.9121 232.1536 31.17772 231.7728 31.40624 231.3958 C 31.17772 231.4388 30.93749 231.4974 30.68749 231.5696 C 30.43749 231.6438 30.20897 231.7728 29.99999 231.9583 L 29.65624 231.3645 C 29.88671 231.3255 30.15233 231.0286 30.45311 230.4759 C 30.75585 229.9251 30.98046 229.3567 31.12499 228.7708 ZM 29.62499 234.7395 C 30.20897 234.6575 30.67772 234.5853 31.03124 234.5228 C 31.38671 234.4603 31.95897 234.345 32.74999 234.177 L 32.78124 234.302 C 31.84374 234.5755 31.1621 234.7884 30.73436 234.9446 C 30.30858 235.1009 30.04296 235.2298 29.93749 235.3333 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" d="M 876.6249 298.8958 C 876.9999 298.3548 877.2714 297.7689 877.4374 297.1321 C 877.6053 296.4974 877.6932 295.6907 877.703 294.7103 C 877.7147 293.7318 877.7089 292.845 877.6874 292.0521 L 878.1561 292.3646 L 882.5624 292.3646 L 883.0624 291.8646 L 883.7499 292.5521 L 878.1561 292.5521 C 878.1776 294.7825 878.0741 296.2728 877.8436 297.0228 C 877.6151 297.7728 877.2401 298.4271 876.7186 298.9896 M 877.9374 302.3646 L 877.9374 303.3958 L 879.4374 303.3958 L 879.4374 302.3646 ZM 877.9374 303.5833 L 877.9374 304.6146 L 879.4374 304.6146 L 879.4374 303.5833 ZM 876.6561 301.2083 L 880.7186 301.2083 C 880.9061 300.8978 881.0585 300.6224 881.1718 300.3821 C 881.287 300.1439 881.3866 299.9075 881.4686 299.6771 L 882.0936 300.1146 C 881.9491 300.179 881.7616 300.3196 881.5311 300.5384 C 881.3026 300.7571 881.0936 300.9818 880.9061 301.2083 L 882.6874 301.2083 L 883.1561 300.7396 L 883.8124 301.3958 L 877.6874 301.3958 C 877.4178 301.3978 877.1678 301.429 876.9374 301.4896 ZM 880.9374 305.7708 C 880.9589 305.3138 880.9686 304.7005 880.9686 303.929 C 880.9686 303.1595 880.9589 302.5638 880.9374 302.1458 L 881.5936 302.4271 L 881.3749 302.6458 L 881.3749 304.6146 C 881.3749 304.9505 881.3866 305.263 881.4061 305.5521 L 880.9374 305.7708 ZM 882.3124 301.6458 L 883.0624 302.0521 L 882.7499 302.3021 L 882.7499 305.9271 C 882.7714 306.4271 882.5214 306.761 881.9999 306.9271 C 881.9803 306.6146 881.6561 306.386 881.0311 306.2396 L 881.0311 306.1146 C 881.5936 306.1575 881.9589 306.1751 882.1249 306.1634 C 882.2928 306.1536 882.3651 306.0228 882.3436 305.7708 L 882.3436 302.9583 C 882.3436 302.4388 882.3339 302.0013 882.3124 301.6458 ZM 878.5936 299.7396 C 879.1991 300.095 879.5214 300.3626 879.5624 300.5384 C 879.6053 300.7161 879.5526 300.888 879.4061 301.054 C 879.2616 301.222 879.1464 301.1536 879.0624 300.8509 C 878.9803 300.5501 878.7928 300.2005 878.4999 299.8021 ZM 877.9374 306.7396 L 877.4999 306.9271 C 877.5214 306.345 877.5311 305.9505 877.5311 305.7396 L 877.5311 303.0208 C 877.5311 302.5638 877.5214 302.1888 877.4999 301.8958 L 877.9374 302.1771 L 879.4061 302.1771 L 879.6249 301.8646 L 880.0936 302.2396 L 879.8436 302.4271 L 879.8436 306.1771 C 879.8436 306.511 879.6678 306.761 879.3124 306.9271 C 879.2714 306.6575 879.0428 306.4798 878.6249 306.3958 L 878.6249 306.2708 C 878.8749 306.2923 879.0741 306.2982 879.2186 306.2864 C 879.3651 306.2767 879.4374 306.1575 879.4374 305.9271 L 879.4374 304.8021 M 881.1873 308.177 C 880.7264 308.177 880.3768 308.2688 880.1385 308.4505 C 879.8983 308.6341 879.7791 308.8645 879.7811 309.1419 C 879.7792 309.4641 879.9237 309.7434 880.2167 309.9798 C 880.5077 310.2161 880.7792 310.3333 881.0311 310.3333 C 881.5291 310.3333 881.9295 310.2473 882.2322 310.0755 C 882.533 309.9036 882.6854 309.6243 882.6873 309.2376 C 882.6854 308.8743 882.5447 308.6067 882.2635 308.4348 C 881.9822 308.263 881.6229 308.177 881.1873 308.177 ZM 879.4686 309.0677 C 879.4666 308.6458 879.5955 308.3098 879.8572 308.0559 C 880.117 307.804 880.5389 307.677 881.1248 307.677 C 881.6229 307.677 882.0389 307.8138 882.3729 308.0833 C 882.7049 308.3548 882.8729 308.7395 882.8748 309.2395 C 882.8729 309.761 882.6639 310.1673 882.2479 310.4583 C 881.8299 310.7513 881.2264 310.8958 880.4374 310.8958 C 879.5604 310.8958 878.8358 310.7239 878.2635 310.3802 C 877.6893 310.0364 877.4042 309.5638 877.4061 308.9583 C 877.4042 308.6888 877.4667 308.4544 877.5917 308.2552 C 877.7167 308.0579 877.8827 307.9583 878.0936 307.9583 C 878.1756 307.9583 878.2576 307.9837 878.3416 308.0325 C 878.4236 308.0833 878.4666 308.1673 878.4686 308.2845 C 878.4667 308.4055 878.4178 308.4856 878.3202 308.5247 C 878.2225 308.5638 878.1093 308.5833 877.9823 308.5833 C 877.8925 308.5833 877.8221 308.595 877.7694 308.6165 C 877.7147 308.638 877.6776 308.6595 877.6581 308.679 C 877.6346 308.7024 877.6171 308.7395 877.6073 308.7942 C 877.5956 308.8489 877.5917 308.9075 877.5936 308.972 C 877.5917 309.3606 877.8026 309.6731 878.2245 309.9114 C 878.6444 310.1497 879.3514 310.2903 880.3436 310.3333 C 880.0917 310.2278 879.8827 310.0696 879.7167 309.8587 C 879.5487 309.6477 879.4667 309.3841 879.4686 309.0677 M 882.8748 313.6145 L 878.1522 313.6145 C 877.9843 313.6145 877.8612 313.6673 877.7792 313.7708 C 877.6952 313.8763 877.6542 314.0208 877.6561 314.2083 L 877.6561 314.5208 L 877.4686 314.5208 L 877.4686 312.2395 L 877.6561 312.2395 L 877.6561 312.5208 C 877.6542 312.7298 877.6952 312.8802 877.7792 312.9739 C 877.8612 313.0677 877.9843 313.1145 878.1522 313.1145 L 881.908 313.1145 C 881.9881 313.1145 882.0545 313.0891 882.1072 313.0364 C 882.158 312.9856 882.1854 312.9075 882.1873 312.802 L 882.1873 312.2395 L 882.3748 312.2395 L 882.3748 312.5208 C 882.3729 312.7708 882.4139 312.9739 882.4979 313.1302 C 882.5799 313.2864 882.7068 313.4075 882.8748 313.4895 M 882.5936 318.8645 C 881.8826 318.4173 881.1893 318.0598 880.5135 317.7942 C 879.8358 317.5286 879.2479 317.3958 878.7499 317.3958 C 878.6639 317.3958 878.5448 317.4016 878.3885 317.4114 C 878.2323 317.4231 878.0507 317.427 877.8436 317.427 C 877.6757 317.427 877.5604 317.4036 877.4979 317.3528 C 877.4354 317.302 877.4042 317.218 877.4061 317.097 C 877.4042 316.9993 877.4393 316.9153 877.5135 316.845 C 877.5858 316.7747 877.7167 316.7395 877.9081 316.7395 C 878.3046 316.7395 878.7968 316.8294 879.3846 317.0052 C 879.9705 317.1829 880.9686 317.6575 882.3748 318.427 L 882.3748 316.8645 C 882.3729 316.636 882.2986 316.4544 882.1541 316.3177 C 882.0076 316.1829 881.7889 316.0833 881.4998 316.0208 L 881.5291 315.8333 L 882.8123 316.052 M 881.0936 321.9583 C 881.0936 322.2513 881.1151 322.638 881.1561 323.1146 L 882.6249 322.9583 L 883.0311 322.4896 L 883.6561 323.0208 L 881.1874 323.2708 C 881.2499 323.9193 881.3553 324.429 881.4999 324.8021 C 881.9589 324.388 882.3241 323.9505 882.5936 323.4896 L 883.1561 324.0521 L 882.8749 324.0833 C 882.4803 324.4603 882.0839 324.8353 881.6874 325.2083 C 882.0624 325.7318 882.4999 326.095 882.9999 326.3021 L 883.4374 324.8021 L 883.5624 324.8333 C 883.5214 325.3138 883.496 325.7103 883.4843 326.0228 C 883.4745 326.3353 883.5155 326.5794 883.6093 326.7552 C 883.703 326.9329 883.6249 327.0013 883.3749 326.9583 C 883.1249 326.9173 882.8182 326.7864 882.453 326.5677 C 882.0897 326.3489 881.7186 326.0013 881.3436 325.5208 C 880.9686 325.7728 880.5897 325.9818 880.203 326.1478 C 879.8182 326.3138 879.3339 326.4798 878.7499 326.6458 L 878.7186 326.5208 C 879.6151 326.1888 880.4178 325.7318 881.1249 325.1458 C 880.9374 324.5853 880.8124 323.9818 880.7499 323.3333 L 879.4686 323.4896 L 879.2186 323.6146 L 878.8749 323.3646 L 880.7186 323.1771 C 880.6991 322.888 880.6776 322.4915 880.6561 321.9896 L 879.7499 322.0521 L 879.5624 322.1771 L 879.2811 321.9271 L 880.6561 321.8333 C 880.6366 321.1068 880.6151 320.3763 880.5936 319.6458 L 881.3124 319.9896 L 881.0624 320.2083 C 881.0624 320.6478 881.0741 321.179 881.0936 321.8021 L 882.4374 321.6771 L 882.8436 321.2083 L 883.4686 321.7708 ZM 881.5624 320.1771 L 881.5936 320.0833 C 882.2401 320.2513 882.6053 320.4134 882.6874 320.5696 C 882.7714 320.7259 882.7714 320.9036 882.6874 321.1009 C 882.6053 321.3001 882.496 321.2786 882.3593 321.0384 C 882.2245 320.8001 881.9589 320.513 881.5624 320.1771 ZM 878.1249 319.7708 L 878.7499 320.1771 C 878.5839 320.2415 878.4061 320.4564 878.2186 320.8196 C 878.0311 321.1849 877.6874 321.7103 877.1874 322.3958 L 878.4686 322.2708 C 878.7186 321.8568 878.9178 321.4388 879.0624 321.0208 L 879.6249 321.4271 C 879.4803 321.513 879.2303 321.8157 878.8749 322.3353 C 878.5214 322.8568 878.0624 323.4818 877.4999 324.2083 C 877.7928 324.1693 878.4374 324.054 879.4374 323.8646 L 879.4374 323.9896 C 878.8749 324.138 878.4374 324.2689 878.1249 324.3821 C 877.8124 324.4974 877.4999 324.6575 877.1874 324.8646 L 876.8124 324.2083 C 877.0428 324.1478 877.3085 323.9251 877.6093 323.5384 C 877.912 323.1536 878.1776 322.7728 878.4061 322.3958 C 878.1776 322.4388 877.9374 322.4974 877.6874 322.5696 C 877.4374 322.6439 877.2089 322.7728 876.9999 322.9583 L 876.6561 322.3646 C 876.8866 322.3255 877.1522 322.0286 877.453 321.4759 C 877.7557 320.9251 877.9803 320.3568 878.1249 319.7708 ZM 876.6249 325.7396 C 877.2089 325.6575 877.6776 325.5853 878.0311 325.5228 C 878.3866 325.4603 878.9589 325.345 879.7499 325.1771 L 879.7811 325.3021 C 878.8436 325.5755 878.162 325.7884 877.7343 325.9446 C 877.3085 326.1009 877.0428 326.2298 876.9374 326.3333 " transform="matrix(1,0,0,1,47,27.333)" /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,21.333,24)" d="M 1110.625 530.6979 L 1110.625 531.5104 L 1113.781 531.5104 L 1113.781 530.6979 ZM 1111.813 525.9479 L 1112.563 526.2604 L 1112.281 526.4791 L 1112.281 527.0104 L 1114.313 527.0104 L 1114.781 526.5416 L 1115.406 527.1979 L 1112.281 527.1979 L 1112.281 527.8229 L 1113.938 527.8229 L 1114.344 527.4479 L 1114.875 528.0104 L 1112.281 528.0104 L 1112.281 528.8229 L 1114.781 528.8229 L 1115.25 528.3541 L 1115.875 529.0104 L 1109.563 529.0104 C 1109.293 529.0123 1109.043 529.0436 1108.813 529.1041 L 1108.531 528.8229 L 1111.844 528.8229 L 1111.844 528.0104 L 1110.438 528.0104 C 1110.168 528.0123 1109.918 528.0436 1109.688 528.1041 L 1109.406 527.8229 L 1111.844 527.8229 L 1111.844 527.1979 L 1109.75 527.1979 C 1109.48 527.1998 1109.23 527.2311 1109 527.2916 L 1108.719 527.0104 L 1111.844 527.0104 C 1111.844 526.6373 1111.834 526.2838 1111.813 525.9479 ZM 1110.156 529.3229 L 1110.688 529.5729 L 1113.719 529.5729 L 1113.938 529.2916 L 1114.438 529.6666 L 1114.219 529.8541 L 1114.219 532.5104 C 1114.24 532.9283 1114.012 533.1979 1113.531 533.3229 C 1113.531 533.0319 1113.23 532.8229 1112.625 532.6979 L 1112.625 532.5729 C 1113.23 532.6158 1113.574 532.6315 1113.656 532.6198 C 1113.74 532.61 1113.781 532.5416 1113.781 532.4166 L 1113.781 531.6979 L 1110.625 531.6979 L 1110.625 533.1666 L 1110.156 533.3854 C 1110.178 532.9283 1110.188 532.2467 1110.188 531.3405 C 1110.188 530.4342 1110.178 529.7623 1110.156 529.3229 ZM 1110.625 529.7604 L 1110.625 530.5104 L 1113.781 530.5104 M 1114.469 540.1979 C 1114.469 538.2623 1114.469 537.1901 1114.469 536.9811 C 1114.469 536.774 1114.459 536.4596 1114.438 536.0416 L 1115.188 536.3854 L 1114.906 536.6666 C 1114.906 538.6061 1114.906 539.6959 1114.906 539.9342 C 1114.906 540.1744 1114.918 540.4596 1114.938 540.7916 L 1114.469 541.0104 L 1114.469 540.3854 L 1109.969 540.3854 L 1109.688 540.6979 L 1109.25 540.2604 L 1109.5 540.0416 C 1109.5 538.1901 1109.5 537.1588 1109.5 536.9498 C 1109.5 536.7428 1109.49 536.4401 1109.469 536.0416 L 1110.188 536.3541 L 1109.938 536.5729 L 1109.938 540.1979 L 1111.906 540.1979 C 1111.906 537.1998 1111.906 535.5709 1111.906 535.3092 C 1111.906 535.0494 1111.896 534.6783 1111.875 534.1979 L 1112.625 534.5416 L 1112.344 534.7604 M 1113.187 542.5103 C 1112.726 542.5103 1112.377 542.6021 1112.139 542.7838 C 1111.898 542.9673 1111.779 543.1978 1111.781 543.4752 C 1111.779 543.7974 1111.924 544.0767 1112.217 544.313 C 1112.508 544.5494 1112.779 544.6666 1113.031 544.6666 C 1113.529 544.6666 1113.93 544.5806 1114.232 544.4088 C 1114.533 544.2369 1114.685 543.9576 1114.687 543.5709 C 1114.685 543.2076 1114.545 542.94 1114.264 542.7681 C 1113.982 542.5963 1113.623 542.5103 1113.187 542.5103 ZM 1111.469 543.4009 C 1111.467 542.9791 1111.596 542.6431 1111.857 542.3892 C 1112.117 542.1373 1112.539 542.0103 1113.125 542.0103 C 1113.623 542.0103 1114.039 542.147 1114.373 542.4166 C 1114.705 542.688 1114.873 543.0728 1114.875 543.5728 C 1114.873 544.0943 1114.664 544.5005 1114.248 544.7916 C 1113.83 545.0845 1113.227 545.2291 1112.438 545.2291 C 1111.561 545.2291 1110.836 545.0572 1110.264 544.7134 C 1109.689 544.3697 1109.404 543.897 1109.406 543.2916 C 1109.404 543.022 1109.467 542.7877 1109.592 542.5884 C 1109.717 542.3912 1109.883 542.2916 1110.094 542.2916 C 1110.176 542.2916 1110.258 542.317 1110.342 542.3658 C 1110.424 542.4166 1110.467 542.5005 1110.469 542.6177 C 1110.467 542.7388 1110.418 542.8189 1110.32 542.858 C 1110.223 542.897 1110.109 542.9166 1109.982 542.9166 C 1109.893 542.9166 1109.822 542.9283 1109.77 542.9498 C 1109.715 542.9713 1109.678 542.9927 1109.658 543.0123 C 1109.635 543.0357 1109.617 543.0728 1109.607 543.1275 C 1109.596 543.1822 1109.592 543.2408 1109.594 543.3052 C 1109.592 543.6939 1109.803 544.0064 1110.225 544.2447 C 1110.645 544.483 1111.352 544.6236 1112.344 544.6666 C 1112.092 544.5611 1111.883 544.4029 1111.717 544.192 C 1111.549 543.981 1111.467 543.7173 1111.469 543.4009 M 1113.519 548.5416 C 1113.894 548.5416 1114.183 548.4595 1114.385 548.2916 C 1114.584 548.1255 1114.685 547.8755 1114.687 547.5416 C 1114.685 547.2916 1114.615 547.0787 1114.478 546.9009 C 1114.34 546.7252 1114.164 546.6353 1113.953 546.6353 C 1113.824 546.6353 1113.719 546.6724 1113.635 546.7447 C 1113.549 546.8189 1113.463 546.8541 1113.381 546.8541 C 1113.271 546.8541 1113.191 546.8306 1113.141 546.7798 C 1113.086 546.7291 1113.06 546.6548 1113.062 546.5552 C 1113.06 546.4361 1113.096 546.3423 1113.17 546.272 C 1113.242 546.2017 1113.363 546.1666 1113.531 546.1666 C 1113.967 546.1666 1114.299 546.3228 1114.529 546.6353 C 1114.758 546.9478 1114.873 547.2818 1114.875 547.6353 C 1114.873 548.1353 1114.748 548.5064 1114.498 548.7447 C 1114.248 548.9849 1113.935 549.1041 1113.563 549.1041 C 1113.311 549.1041 1113.061 549.0474 1112.811 548.9322 C 1112.561 548.8189 1112.32 548.6353 1112.094 548.3853 C 1111.508 547.7818 1111.033 547.3189 1110.67 546.9947 C 1110.305 546.6724 1110.061 546.4791 1109.938 546.4166 L 1109.938 548.2603 C 1109.936 548.4478 1110.008 548.6041 1110.154 548.7291 C 1110.299 548.8541 1110.52 548.938 1110.813 548.9791 L 1110.813 549.1666 L 1109.469 548.9791 L 1109.469 546.0728 L 1109.875 546.0728 C 1110.06 546.1783 1110.299 546.3502 1110.592 546.5884 C 1110.883 546.8287 1111.226 547.147 1111.625 547.5416 C 1111.98 547.8853 1112.316 548.1373 1112.633 548.2994 C 1112.947 548.4615 1113.242 548.5416 1113.519 548.5416 M 1110.895 553.1666 C 1110.5 553.1666 1110.152 553.022 1109.854 552.7291 C 1109.553 552.438 1109.404 552.0318 1109.406 551.5103 C 1109.404 551.1353 1109.508 550.813 1109.717 550.5416 C 1109.924 550.272 1110.164 550.1353 1110.437 550.1353 C 1110.56 550.1353 1110.67 550.1763 1110.764 550.2545 C 1110.857 550.3345 1110.904 550.4146 1110.906 550.4927 C 1110.904 550.6138 1110.855 550.6978 1110.76 550.7486 C 1110.662 550.7994 1110.584 550.8228 1110.521 550.8228 C 1110.412 550.8228 1110.322 550.8033 1110.248 550.7603 C 1110.172 550.7193 1110.104 550.6978 1110.041 550.6978 C 1109.912 550.6978 1109.805 550.7779 1109.721 550.9361 C 1109.635 551.0943 1109.592 551.2681 1109.594 551.4576 C 1109.592 551.8404 1109.701 552.1255 1109.924 552.317 C 1110.145 552.5084 1110.488 552.6041 1110.953 552.6041 C 1111.33 552.6041 1111.635 552.5064 1111.869 552.3072 C 1112.1 552.1099 1112.217 551.7408 1112.219 551.1978 L 1112.406 551.1978 C 1112.404 551.6041 1112.506 551.9029 1112.709 552.0963 C 1112.912 552.2896 1113.195 552.3853 1113.562 552.3853 C 1113.859 552.3853 1114.121 552.3091 1114.348 552.1548 C 1114.572 552.0025 1114.685 551.7623 1114.687 551.4361 C 1114.685 551.2935 1114.648 551.1392 1114.574 550.9752 C 1114.498 550.8111 1114.375 550.7291 1114.207 550.7291 C 1114.035 550.7291 1113.928 550.7505 1113.885 550.7916 C 1113.842 550.8345 1113.789 550.8541 1113.726 550.8541 C 1113.617 550.8541 1113.531 550.8345 1113.469 550.7916 C 1113.404 550.7505 1113.373 550.6783 1113.375 550.5728 C 1113.373 550.4908 1113.404 550.4127 1113.467 550.3384 C 1113.529 550.2662 1113.644 550.2291 1113.812 550.2291 C 1114.123 550.2291 1114.377 550.3658 1114.576 550.6353 C 1114.773 550.9068 1114.873 551.2193 1114.875 551.5728 C 1114.873 551.9908 1114.74 552.3228 1114.478 552.5728 C 1114.215 552.8228 1113.937 552.9478 1113.644 552.9478 C 1113.328 552.9478 1113.059 552.8697 1112.84 552.7134 C 1112.617 552.5572 1112.455 552.313 1112.351 551.9791 C 1112.184 552.438 1111.967 552.7505 1111.699 552.9166 C 1111.43 553.0845 1111.16 553.1666 1110.895 553.1666 M 1113.094 556.2916 C 1113.094 556.5846 1113.115 556.9713 1113.156 557.4479 L 1114.625 557.2916 L 1115.031 556.8229 L 1115.656 557.3541 L 1113.188 557.6041 C 1113.25 558.2526 1113.355 558.7623 1113.5 559.1354 C 1113.959 558.7213 1114.324 558.2838 1114.594 557.8229 L 1115.156 558.3854 L 1114.875 558.4166 C 1114.48 558.7936 1114.084 559.1686 1113.688 559.5416 C 1114.063 560.0651 1114.5 560.4283 1115 560.6354 L 1115.438 559.1354 L 1115.563 559.1666 C 1115.521 559.6471 1115.496 560.0436 1115.484 560.3561 C 1115.475 560.6686 1115.516 560.9127 1115.609 561.0885 C 1115.703 561.2662 1115.625 561.3346 1115.375 561.2916 C 1115.125 561.2506 1114.818 561.1198 1114.453 560.901 C 1114.09 560.6823 1113.719 560.3346 1113.344 559.8541 C 1112.969 560.1061 1112.59 560.3151 1112.203 560.4811 C 1111.818 560.6471 1111.334 560.8131 1110.75 560.9791 L 1110.719 560.8541 C 1111.615 560.5221 1112.418 560.0651 1113.125 559.4791 C 1112.938 558.9186 1112.813 558.3151 1112.75 557.6666 L 1111.469 557.8229 L 1111.219 557.9479 L 1110.875 557.6979 L 1112.719 557.5104 C 1112.699 557.2213 1112.678 556.8248 1112.656 556.3229 L 1111.75 556.3854 L 1111.563 556.5104 L 1111.281 556.2604 L 1112.656 556.1666 C 1112.637 555.4401 1112.615 554.7096 1112.594 553.9791 L 1113.313 554.3229 L 1113.063 554.5416 C 1113.063 554.9811 1113.074 555.5123 1113.094 556.1354 L 1114.438 556.0104 L 1114.844 555.5416 L 1115.469 556.1041 ZM 1113.563 554.5104 L 1113.594 554.4166 C 1114.24 554.5846 1114.605 554.7467 1114.688 554.903 C 1114.771 555.0592 1114.771 555.2369 1114.688 555.4342 C 1114.605 555.6334 1114.496 555.6119 1114.359 555.3717 C 1114.225 555.1334 1113.959 554.8463 1113.563 554.5104 ZM 1110.125 554.1041 L 1110.75 554.5104 C 1110.584 554.5748 1110.406 554.7897 1110.219 555.153 C 1110.031 555.5182 1109.688 556.0436 1109.188 556.7291 L 1110.469 556.6041 C 1110.719 556.1901 1110.918 555.7721 1111.063 555.3541 L 1111.625 555.7604 C 1111.48 555.8463 1111.23 556.149 1110.875 556.6686 C 1110.521 557.1901 1110.063 557.8151 1109.5 558.5416 C 1109.793 558.5026 1110.438 558.3873 1111.438 558.1979 L 1111.438 558.3229 C 1110.875 558.4713 1110.438 558.6022 1110.125 558.7155 C 1109.813 558.8307 1109.5 558.9908 1109.188 559.1979 L 1108.813 558.5416 C 1109.043 558.4811 1109.309 558.2584 1109.609 557.8717 C 1109.912 557.4869 1110.178 557.1061 1110.406 556.7291 C 1110.178 556.7721 1109.938 556.8307 1109.688 556.903 C 1109.438 556.9772 1109.209 557.1061 1109 557.2916 L 1108.656 556.6979 C 1108.887 556.6588 1109.152 556.3619 1109.453 555.8092 C 1109.756 555.2584 1109.98 554.6901 1110.125 554.1041 ZM 1108.625 560.0729 C 1109.209 559.9908 1109.678 559.9186 1110.031 559.8561 C 1110.387 559.7936 1110.959 559.6783 1111.75 559.5104 L 1111.781 559.6354 C 1110.844 559.9088 1110.162 560.1217 1109.734 560.278 C 1109.309 560.4342 1109.043 560.5631 1108.938 560.6666 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,45,30.667)" d="M 1284.906 482.7603 L 1284.906 484.1041 L 1289 484.1041 L 1289 482.7603 ZM 1284.906 484.2916 L 1284.906 485.6666 L 1287 485.6666 C 1286.938 485.2525 1286.896 484.7935 1286.875 484.2916 ZM 1289.422 488.4635 C 1289.746 488.6197 1289.943 488.5943 1290.016 488.3873 C 1290.09 488.1803 1290.178 487.8033 1290.281 487.2603 L 1290.406 487.2916 C 1290.387 487.6275 1290.381 487.9654 1290.391 488.3092 C 1290.402 488.6529 1290.484 488.9068 1290.641 489.0728 C 1290.797 489.2408 1290.59 489.276 1290.016 489.1822 C 1289.443 489.0885 1288.875 488.7935 1288.313 488.2935 C 1287.75 487.7935 1287.324 486.981 1287.031 485.8541 L 1284.906 485.8541 L 1284.906 488.3541 L 1286.75 487.5416 L 1286.813 487.6666 C 1285.625 488.3971 1284.938 488.8971 1284.75 489.1666 L 1284.313 488.6353 C 1284.438 488.5338 1284.49 488.2623 1284.469 487.8228 L 1284.469 483.4791 C 1284.469 483.0221 1284.459 482.6158 1284.438 482.2603 L 1284.906 482.5728 L 1288.938 482.5728 L 1289.219 482.2291 L 1289.719 482.6666 L 1289.438 482.8541 C 1289.438 483.7721 1289.449 484.3033 1289.469 484.4478 L 1289 484.6666 L 1289 484.2916 L 1287.313 484.2916 C 1287.334 484.7935 1287.375 485.2525 1287.438 485.6666 L 1289.594 485.6666 L 1290.031 485.2291 L 1290.656 485.8541 L 1287.469 485.8541 C 1287.678 486.6275 1287.975 487.2154 1288.359 487.6217 C 1288.746 488.0279 1289.1 488.3092 1289.422 488.4635 M 1286.281 490.1666 C 1286.844 490.4596 1287.24 490.7115 1287.469 490.9185 C 1287.699 491.1275 1287.719 491.3619 1287.531 491.6217 C 1287.344 491.8834 1287.199 491.8521 1287.094 491.5279 C 1286.99 491.2057 1286.699 490.7838 1286.219 490.2603 ZM 1284.063 491.9478 L 1289.344 491.9478 L 1289.813 491.4791 L 1290.469 492.1353 L 1287.438 492.1353 L 1287.438 494.1666 L 1288.875 494.1666 L 1289.313 493.7291 L 1289.938 494.3541 L 1287.438 494.3541 L 1287.438 496.6666 L 1289.594 496.6666 L 1290.094 496.1666 L 1290.781 496.8541 L 1284.625 496.8541 C 1284.355 496.8541 1284.105 496.8853 1283.875 496.9478 L 1283.594 496.6666 L 1286.969 496.6666 L 1286.969 494.3853 L 1285.594 494.3853 C 1285.324 494.3873 1285.074 494.4185 1284.844 494.4791 L 1284.563 494.1978 L 1286.969 494.1978 L 1286.969 492.1353 L 1285.094 492.1353 C 1284.824 492.1373 1284.574 492.1685 1284.344 492.2291 M 1288.187 498.5103 C 1287.726 498.5103 1287.377 498.6021 1287.139 498.7838 C 1286.898 498.9673 1286.779 499.1978 1286.781 499.4752 C 1286.779 499.7974 1286.924 500.0767 1287.217 500.313 C 1287.508 500.5494 1287.779 500.6666 1288.031 500.6666 C 1288.529 500.6666 1288.93 500.5806 1289.232 500.4088 C 1289.533 500.2369 1289.685 499.9576 1289.687 499.5709 C 1289.685 499.2076 1289.545 498.94 1289.264 498.7681 C 1288.982 498.5963 1288.623 498.5103 1288.187 498.5103 ZM 1286.469 499.4009 C 1286.467 498.9791 1286.596 498.6431 1286.857 498.3892 C 1287.117 498.1373 1287.539 498.0103 1288.125 498.0103 C 1288.623 498.0103 1289.039 498.147 1289.373 498.4166 C 1289.705 498.688 1289.873 499.0728 1289.875 499.5728 C 1289.873 500.0943 1289.664 500.5005 1289.248 500.7916 C 1288.83 501.0845 1288.227 501.2291 1287.438 501.2291 C 1286.561 501.2291 1285.836 501.0572 1285.264 500.7134 C 1284.689 500.3697 1284.404 499.897 1284.406 499.2916 C 1284.404 499.022 1284.467 498.7877 1284.592 498.5884 C 1284.717 498.3912 1284.883 498.2916 1285.094 498.2916 C 1285.176 498.2916 1285.258 498.317 1285.342 498.3658 C 1285.424 498.4166 1285.467 498.5005 1285.469 498.6177 C 1285.467 498.7388 1285.418 498.8189 1285.32 498.858 C 1285.223 498.897 1285.109 498.9166 1284.982 498.9166 C 1284.893 498.9166 1284.822 498.9283 1284.77 498.9498 C 1284.715 498.9713 1284.678 498.9927 1284.658 499.0123 C 1284.635 499.0357 1284.617 499.0728 1284.607 499.1275 C 1284.596 499.1822 1284.592 499.2408 1284.594 499.3052 C 1284.592 499.6939 1284.803 500.0064 1285.225 500.2447 C 1285.645 500.483 1286.352 500.6236 1287.344 500.6666 C 1287.092 500.5611 1286.883 500.4029 1286.717 500.192 C 1286.549 499.981 1286.467 499.7173 1286.469 499.4009 M 1288.519 504.5416 C 1288.894 504.5416 1289.183 504.4595 1289.385 504.2916 C 1289.584 504.1255 1289.685 503.8755 1289.687 503.5416 C 1289.685 503.2916 1289.615 503.0787 1289.478 502.9009 C 1289.34 502.7252 1289.164 502.6353 1288.953 502.6353 C 1288.824 502.6353 1288.719 502.6724 1288.635 502.7447 C 1288.549 502.8189 1288.463 502.8541 1288.381 502.8541 C 1288.271 502.8541 1288.191 502.8306 1288.141 502.7798 C 1288.086 502.7291 1288.06 502.6548 1288.062 502.5552 C 1288.06 502.4361 1288.096 502.3423 1288.17 502.272 C 1288.242 502.2017 1288.363 502.1666 1288.531 502.1666 C 1288.967 502.1666 1289.299 502.3228 1289.529 502.6353 C 1289.758 502.9478 1289.873 503.2818 1289.875 503.6353 C 1289.873 504.1353 1289.748 504.5064 1289.498 504.7447 C 1289.248 504.9849 1288.935 505.1041 1288.563 505.1041 C 1288.311 505.1041 1288.061 505.0474 1287.811 504.9322 C 1287.561 504.8189 1287.32 504.6353 1287.094 504.3853 C 1286.508 503.7818 1286.033 503.3189 1285.67 502.9947 C 1285.305 502.6724 1285.061 502.4791 1284.938 502.4166 L 1284.938 504.2603 C 1284.936 504.4478 1285.008 504.6041 1285.154 504.7291 C 1285.299 504.8541 1285.52 504.938 1285.813 504.9791 L 1285.813 505.1666 L 1284.469 504.9791 L 1284.469 502.0728 L 1284.875 502.0728 C 1285.06 502.1783 1285.299 502.3502 1285.592 502.5884 C 1285.883 502.8287 1286.226 503.147 1286.625 503.5416 C 1286.98 503.8853 1287.316 504.1373 1287.633 504.2994 C 1287.947 504.4615 1288.242 504.5416 1288.519 504.5416 M 1288.519 508.5416 C 1288.894 508.5416 1289.183 508.4595 1289.385 508.2916 C 1289.584 508.1255 1289.685 507.8755 1289.687 507.5416 C 1289.685 507.2916 1289.615 507.0787 1289.478 506.9009 C 1289.34 506.7252 1289.164 506.6353 1288.953 506.6353 C 1288.824 506.6353 1288.719 506.6724 1288.635 506.7447 C 1288.549 506.8189 1288.463 506.8541 1288.381 506.8541 C 1288.271 506.8541 1288.191 506.8306 1288.141 506.7798 C 1288.086 506.7291 1288.06 506.6548 1288.062 506.5552 C 1288.06 506.4361 1288.096 506.3423 1288.17 506.272 C 1288.242 506.2017 1288.363 506.1666 1288.531 506.1666 C 1288.967 506.1666 1289.299 506.3228 1289.529 506.6353 C 1289.758 506.9478 1289.873 507.2818 1289.875 507.6353 C 1289.873 508.1353 1289.748 508.5064 1289.498 508.7447 C 1289.248 508.9849 1288.935 509.1041 1288.563 509.1041 C 1288.311 509.1041 1288.061 509.0474 1287.811 508.9322 C 1287.561 508.8189 1287.32 508.6353 1287.094 508.3853 C 1286.508 507.7818 1286.033 507.3189 1285.67 506.9947 C 1285.305 506.6724 1285.061 506.4791 1284.938 506.4166 L 1284.938 508.2603 C 1284.936 508.4478 1285.008 508.6041 1285.154 508.7291 C 1285.299 508.8541 1285.52 508.938 1285.813 508.9791 L 1285.813 509.1666 L 1284.469 508.9791 L 1284.469 506.0728 L 1284.875 506.0728 C 1285.06 506.1783 1285.299 506.3502 1285.592 506.5884 C 1285.883 506.8287 1286.226 507.147 1286.625 507.5416 C 1286.98 507.8853 1287.316 508.1373 1287.633 508.2994 C 1287.947 508.4615 1288.242 508.5416 1288.519 508.5416 M 1288.094 512.2916 C 1288.094 512.5845 1288.115 512.9713 1288.156 513.4478 L 1289.625 513.2916 L 1290.031 512.8228 L 1290.656 513.3541 L 1288.188 513.6041 C 1288.25 514.2525 1288.355 514.7623 1288.5 515.1353 C 1288.959 514.7213 1289.324 514.2838 1289.594 513.8228 L 1290.156 514.3853 L 1289.875 514.4166 C 1289.48 514.7935 1289.084 515.1685 1288.688 515.5416 C 1289.063 516.065 1289.5 516.4283 1290 516.6353 L 1290.438 515.1353 L 1290.563 515.1666 C 1290.521 515.647 1290.496 516.0435 1290.484 516.356 C 1290.475 516.6685 1290.516 516.9127 1290.609 517.0884 C 1290.703 517.2662 1290.625 517.3345 1290.375 517.2916 C 1290.125 517.2505 1289.818 517.1197 1289.453 516.9009 C 1289.09 516.6822 1288.719 516.3345 1288.344 515.8541 C 1287.969 516.106 1287.59 516.315 1287.203 516.481 C 1286.818 516.647 1286.334 516.813 1285.75 516.9791 L 1285.719 516.8541 C 1286.615 516.522 1287.418 516.065 1288.125 515.4791 C 1287.938 514.9185 1287.813 514.315 1287.75 513.6666 L 1286.469 513.8228 L 1286.219 513.9478 L 1285.875 513.6978 L 1287.719 513.5103 C 1287.699 513.2213 1287.678 512.8248 1287.656 512.3228 L 1286.75 512.3853 L 1286.563 512.5103 L 1286.281 512.2603 L 1287.656 512.1666 C 1287.637 511.44 1287.615 510.7095 1287.594 509.9791 L 1288.313 510.3228 L 1288.063 510.5416 C 1288.063 510.981 1288.074 511.5123 1288.094 512.1353 L 1289.438 512.0103 L 1289.844 511.5416 L 1290.469 512.1041 ZM 1288.563 510.5103 L 1288.594 510.4166 C 1289.24 510.5845 1289.605 510.7466 1289.688 510.9029 C 1289.771 511.0591 1289.771 511.2369 1289.688 511.4341 C 1289.605 511.6334 1289.496 511.6119 1289.359 511.3716 C 1289.225 511.1334 1288.959 510.8463 1288.563 510.5103 ZM 1285.125 510.1041 L 1285.75 510.5103 C 1285.584 510.5748 1285.406 510.7896 1285.219 511.1529 C 1285.031 511.5181 1284.688 512.0435 1284.188 512.7291 L 1285.469 512.6041 C 1285.719 512.19 1285.918 511.772 1286.063 511.3541 L 1286.625 511.7603 C 1286.48 511.8463 1286.23 512.149 1285.875 512.6685 C 1285.521 513.19 1285.063 513.815 1284.5 514.5416 C 1284.793 514.5025 1285.438 514.3873 1286.438 514.1978 L 1286.438 514.3228 C 1285.875 514.4713 1285.438 514.6021 1285.125 514.7154 C 1284.813 514.8306 1284.5 514.9908 1284.188 515.1978 L 1283.813 514.5416 C 1284.043 514.481 1284.309 514.2584 1284.609 513.8716 C 1284.912 513.4869 1285.178 513.106 1285.406 512.7291 C 1285.178 512.772 1284.938 512.8306 1284.688 512.9029 C 1284.438 512.9771 1284.209 513.106 1284 513.2916 L 1283.656 512.6978 C 1283.887 512.6588 1284.152 512.3619 1284.453 511.8091 C 1284.756 511.2584 1284.98 510.69 1285.125 510.1041 ZM 1283.625 516.0728 C 1284.209 515.9908 1284.678 515.9185 1285.031 515.856 C 1285.387 515.7935 1285.959 515.6783 1286.75 515.5103 L 1286.781 515.6353 C 1285.844 515.9088 1285.162 516.1216 1284.734 516.2779 C 1284.309 516.4341 1284.043 516.563 1283.938 516.6666 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" d="M 1164.625 680.3644 L 1164.625 681.1769 L 1167.781 681.1769 L 1167.781 680.3644 ZM 1165.813 675.6144 L 1166.563 675.9269 L 1166.281 676.1457 L 1166.281 676.6769 L 1168.313 676.6769 L 1168.781 676.2082 L 1169.406 676.8644 L 1166.281 676.8644 L 1166.281 677.4894 L 1167.938 677.4894 L 1168.344 677.1144 L 1168.875 677.6769 L 1166.281 677.6769 L 1166.281 678.4894 L 1168.781 678.4894 L 1169.25 678.0207 L 1169.875 678.6769 L 1163.563 678.6769 C 1163.293 678.6789 1163.043 678.7101 1162.813 678.7707 L 1162.531 678.4894 L 1165.844 678.4894 L 1165.844 677.6769 L 1164.438 677.6769 C 1164.168 677.6789 1163.918 677.7101 1163.688 677.7707 L 1163.406 677.4894 L 1165.844 677.4894 L 1165.844 676.8644 L 1163.75 676.8644 C 1163.48 676.8664 1163.23 676.8976 1163 676.9582 L 1162.719 676.6769 L 1165.844 676.6769 C 1165.844 676.3039 1165.834 675.9504 1165.813 675.6144 ZM 1164.156 678.9894 L 1164.688 679.2394 L 1167.719 679.2394 L 1167.938 678.9582 L 1168.438 679.3332 L 1168.219 679.5207 L 1168.219 682.1769 C 1168.24 682.5949 1168.012 682.8644 1167.531 682.9894 C 1167.531 682.6984 1167.23 682.4894 1166.625 682.3644 L 1166.625 682.2394 C 1167.23 682.2824 1167.574 682.298 1167.656 682.2863 C 1167.74 682.2766 1167.781 682.2082 1167.781 682.0832 L 1167.781 681.3644 L 1164.625 681.3644 L 1164.625 682.8332 L 1164.156 683.0519 C 1164.178 682.5949 1164.188 681.9133 1164.188 681.007 C 1164.188 680.1008 1164.178 679.4289 1164.156 678.9894 ZM 1164.625 679.4269 L 1164.625 680.1769 L 1167.781 680.1769 M 1168.469 689.8644 C 1168.469 687.9289 1168.469 686.8566 1168.469 686.6476 C 1168.469 686.4406 1168.459 686.1262 1168.438 685.7082 L 1169.188 686.0519 L 1168.906 686.3332 C 1168.906 688.2726 1168.906 689.3625 1168.906 689.6008 C 1168.906 689.841 1168.918 690.1262 1168.938 690.4582 L 1168.469 690.6769 L 1168.469 690.0519 L 1163.969 690.0519 L 1163.688 690.3644 L 1163.25 689.9269 L 1163.5 689.7082 C 1163.5 687.8566 1163.5 686.8254 1163.5 686.6164 C 1163.5 686.4094 1163.49 686.1066 1163.469 685.7082 L 1164.188 686.0207 L 1163.938 686.2394 L 1163.938 689.8644 L 1165.906 689.8644 C 1165.906 686.8664 1165.906 685.2375 1165.906 684.9758 C 1165.906 684.716 1165.896 684.3449 1165.875 683.8644 L 1166.625 684.2082 L 1166.344 684.4269 M 1167.187 692.1769 C 1166.726 692.1769 1166.377 692.2687 1166.139 692.4503 C 1165.898 692.6339 1165.779 692.8644 1165.781 693.1417 C 1165.779 693.464 1165.924 693.7433 1166.217 693.9796 C 1166.508 694.2159 1166.779 694.3331 1167.031 694.3331 C 1167.529 694.3331 1167.93 694.2472 1168.232 694.0753 C 1168.533 693.9034 1168.685 693.6241 1168.687 693.2374 C 1168.685 692.8741 1168.545 692.6066 1168.264 692.4347 C 1167.982 692.2628 1167.623 692.1769 1167.187 692.1769 ZM 1165.469 693.0675 C 1165.467 692.6456 1165.596 692.3097 1165.857 692.0558 C 1166.117 691.8038 1166.539 691.6769 1167.125 691.6769 C 1167.623 691.6769 1168.039 691.8136 1168.373 692.0831 C 1168.705 692.3546 1168.873 692.7394 1168.875 693.2394 C 1168.873 693.7609 1168.664 694.1671 1168.248 694.4581 C 1167.83 694.7511 1167.227 694.8956 1166.438 694.8956 C 1165.561 694.8956 1164.836 694.7238 1164.264 694.38 C 1163.689 694.0363 1163.404 693.5636 1163.406 692.9581 C 1163.404 692.6886 1163.467 692.4542 1163.592 692.255 C 1163.717 692.0577 1163.883 691.9581 1164.094 691.9581 C 1164.176 691.9581 1164.258 691.9835 1164.342 692.0323 C 1164.424 692.0831 1164.467 692.1671 1164.469 692.2843 C 1164.467 692.4054 1164.418 692.4855 1164.32 692.5245 C 1164.223 692.5636 1164.109 692.5831 1163.982 692.5831 C 1163.893 692.5831 1163.822 692.5948 1163.77 692.6163 C 1163.715 692.6378 1163.678 692.6593 1163.658 692.6788 C 1163.635 692.7023 1163.617 692.7394 1163.607 692.7941 C 1163.596 692.8488 1163.592 692.9073 1163.594 692.9718 C 1163.592 693.3605 1163.803 693.673 1164.225 693.9113 C 1164.645 694.1495 1165.352 694.2902 1166.344 694.3331 C 1166.092 694.2277 1165.883 694.0695 1165.717 693.8585 C 1165.549 693.6476 1165.467 693.3839 1165.469 693.0675 M 1168.875 697.6144 L 1164.152 697.6144 C 1163.984 697.6144 1163.861 697.6671 1163.779 697.7706 C 1163.695 697.8761 1163.654 698.0206 1163.656 698.2081 L 1163.656 698.5206 L 1163.469 698.5206 L 1163.469 696.2394 L 1163.656 696.2394 L 1163.656 696.5206 C 1163.654 696.7296 1163.695 696.88 1163.779 696.9738 C 1163.861 697.0675 1163.984 697.1144 1164.152 697.1144 L 1167.908 697.1144 C 1167.988 697.1144 1168.055 697.089 1168.107 697.0363 C 1168.158 696.9855 1168.185 696.9073 1168.187 696.8019 L 1168.187 696.2394 L 1168.375 696.2394 L 1168.375 696.5206 C 1168.373 696.7706 1168.414 696.9738 1168.498 697.13 C 1168.58 697.2863 1168.707 697.4073 1168.875 697.4894 M 1167.519 702.2081 C 1167.894 702.2081 1168.183 702.1261 1168.385 701.9581 C 1168.584 701.7921 1168.685 701.5421 1168.687 701.2081 C 1168.685 700.9581 1168.615 700.7452 1168.478 700.5675 C 1168.34 700.3917 1168.164 700.3019 1167.953 700.3019 C 1167.824 700.3019 1167.719 700.339 1167.635 700.4113 C 1167.549 700.4855 1167.463 700.5206 1167.381 700.5206 C 1167.271 700.5206 1167.191 700.4972 1167.141 700.4464 C 1167.086 700.3956 1167.06 700.3214 1167.062 700.2218 C 1167.06 700.1027 1167.096 700.0089 1167.17 699.9386 C 1167.242 699.8683 1167.363 699.8331 1167.531 699.8331 C 1167.967 699.8331 1168.299 699.9894 1168.529 700.3019 C 1168.758 700.6144 1168.873 700.9484 1168.875 701.3019 C 1168.873 701.8019 1168.748 702.173 1168.498 702.4113 C 1168.248 702.6515 1167.935 702.7706 1167.563 702.7706 C 1167.311 702.7706 1167.061 702.714 1166.811 702.5988 C 1166.561 702.4855 1166.32 702.3019 1166.094 702.0519 C 1165.508 701.4484 1165.033 700.9855 1164.67 700.6613 C 1164.305 700.339 1164.061 700.1456 1163.938 700.0831 L 1163.938 701.9269 C 1163.936 702.1144 1164.008 702.2706 1164.154 702.3956 C 1164.299 702.5206 1164.52 702.6046 1164.813 702.6456 L 1164.813 702.8331 L 1163.469 702.6456 L 1163.469 699.7394 L 1163.875 699.7394 C 1164.06 699.8448 1164.299 700.0167 1164.592 700.255 C 1164.883 700.4952 1165.226 700.8136 1165.625 701.2081 C 1165.98 701.5519 1166.316 701.8038 1166.633 701.9659 C 1166.947 702.1281 1167.242 702.2081 1167.519 702.2081 M 1167.094 705.9582 C 1167.094 706.2512 1167.115 706.6379 1167.156 707.1144 L 1168.625 706.9582 L 1169.031 706.4894 L 1169.656 707.0207 L 1167.188 707.2707 C 1167.25 707.9191 1167.355 708.4289 1167.5 708.8019 C 1167.959 708.3879 1168.324 707.9504 1168.594 707.4894 L 1169.156 708.0519 L 1168.875 708.0832 C 1168.48 708.4601 1168.084 708.8351 1167.688 709.2082 C 1168.063 709.7316 1168.5 710.0949 1169 710.3019 L 1169.438 708.8019 L 1169.563 708.8332 C 1169.521 709.3137 1169.496 709.7101 1169.484 710.0226 C 1169.475 710.3351 1169.516 710.5793 1169.609 710.7551 C 1169.703 710.9328 1169.625 711.0012 1169.375 710.9582 C 1169.125 710.9172 1168.818 710.7863 1168.453 710.5676 C 1168.09 710.3488 1167.719 710.0012 1167.344 709.5207 C 1166.969 709.7726 1166.59 709.9816 1166.203 710.1476 C 1165.818 710.3137 1165.334 710.4797 1164.75 710.6457 L 1164.719 710.5207 C 1165.615 710.1887 1166.418 709.7316 1167.125 709.1457 C 1166.938 708.5851 1166.813 707.9816 1166.75 707.3332 L 1165.469 707.4894 L 1165.219 707.6144 L 1164.875 707.3644 L 1166.719 707.1769 C 1166.699 706.8879 1166.678 706.4914 1166.656 705.9894 L 1165.75 706.0519 L 1165.563 706.1769 L 1165.281 705.9269 L 1166.656 705.8332 C 1166.637 705.1066 1166.615 704.3762 1166.594 703.6457 L 1167.313 703.9894 L 1167.063 704.2082 C 1167.063 704.6476 1167.074 705.1789 1167.094 705.8019 L 1168.438 705.6769 L 1168.844 705.2082 L 1169.469 705.7707 ZM 1167.563 704.1769 L 1167.594 704.0832 C 1168.24 704.2512 1168.605 704.4133 1168.688 704.5695 C 1168.771 704.7258 1168.771 704.9035 1168.688 705.1008 C 1168.605 705.3 1168.496 705.2785 1168.359 705.0383 C 1168.225 704.8 1167.959 704.5129 1167.563 704.1769 ZM 1164.125 703.7707 L 1164.75 704.1769 C 1164.584 704.2414 1164.406 704.4562 1164.219 704.8195 C 1164.031 705.1848 1163.688 705.7101 1163.188 706.3957 L 1164.469 706.2707 C 1164.719 705.8566 1164.918 705.4387 1165.063 705.0207 L 1165.625 705.4269 C 1165.48 705.5129 1165.23 705.8156 1164.875 706.3351 C 1164.521 706.8566 1164.063 707.4816 1163.5 708.2082 C 1163.793 708.1691 1164.438 708.0539 1165.438 707.8644 L 1165.438 707.9894 C 1164.875 708.1379 1164.438 708.2687 1164.125 708.382 C 1163.813 708.4973 1163.5 708.6574 1163.188 708.8644 L 1162.813 708.2082 C 1163.043 708.1476 1163.309 707.925 1163.609 707.5383 C 1163.912 707.1535 1164.178 706.7726 1164.406 706.3957 C 1164.178 706.4387 1163.938 706.4973 1163.688 706.5695 C 1163.438 706.6437 1163.209 706.7726 1163 706.9582 L 1162.656 706.3644 C 1162.887 706.3254 1163.152 706.0285 1163.453 705.4758 C 1163.756 704.925 1163.98 704.3566 1164.125 703.7707 ZM 1162.625 709.7394 C 1163.209 709.6574 1163.678 709.5851 1164.031 709.5226 C 1164.387 709.4601 1164.959 709.3449 1165.75 709.1769 L 1165.781 709.3019 C 1164.844 709.5754 1164.162 709.7883 1163.734 709.9445 C 1163.309 710.1008 1163.043 710.2297 1162.938 710.3332 " transform="matrix(1,0,0,1,12.333,26)" /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,15,-10.667)" d="M 1167.906 479.7603 L 1167.906 481.1041 L 1172 481.1041 L 1172 479.7603 ZM 1167.906 481.2916 L 1167.906 482.6666 L 1170 482.6666 C 1169.938 482.2525 1169.896 481.7935 1169.875 481.2916 ZM 1172.422 485.4635 C 1172.746 485.6197 1172.943 485.5943 1173.016 485.3873 C 1173.09 485.1803 1173.178 484.8033 1173.281 484.2603 L 1173.406 484.2916 C 1173.387 484.6275 1173.381 484.9654 1173.391 485.3092 C 1173.402 485.6529 1173.484 485.9068 1173.641 486.0728 C 1173.797 486.2408 1173.59 486.276 1173.016 486.1822 C 1172.443 486.0885 1171.875 485.7935 1171.313 485.2935 C 1170.75 484.7935 1170.324 483.981 1170.031 482.8541 L 1167.906 482.8541 L 1167.906 485.3541 L 1169.75 484.5416 L 1169.813 484.6666 C 1168.625 485.3971 1167.938 485.8971 1167.75 486.1666 L 1167.313 485.6353 C 1167.438 485.5338 1167.49 485.2623 1167.469 484.8228 L 1167.469 480.4791 C 1167.469 480.0221 1167.459 479.6158 1167.438 479.2603 L 1167.906 479.5728 L 1171.938 479.5728 L 1172.219 479.2291 L 1172.719 479.6666 L 1172.438 479.8541 C 1172.438 480.7721 1172.449 481.3033 1172.469 481.4478 L 1172 481.6666 L 1172 481.2916 L 1170.313 481.2916 C 1170.334 481.7935 1170.375 482.2525 1170.438 482.6666 L 1172.594 482.6666 L 1173.031 482.2291 L 1173.656 482.8541 L 1170.469 482.8541 C 1170.678 483.6275 1170.975 484.2154 1171.359 484.6217 C 1171.746 485.0279 1172.1 485.3092 1172.422 485.4635 M 1169.281 487.1666 C 1169.844 487.4596 1170.24 487.7115 1170.469 487.9185 C 1170.699 488.1275 1170.719 488.3619 1170.531 488.6217 C 1170.344 488.8834 1170.199 488.8521 1170.094 488.5279 C 1169.99 488.2057 1169.699 487.7838 1169.219 487.2603 ZM 1167.063 488.9478 L 1172.344 488.9478 L 1172.813 488.4791 L 1173.469 489.1353 L 1170.438 489.1353 L 1170.438 491.1666 L 1171.875 491.1666 L 1172.313 490.7291 L 1172.938 491.3541 L 1170.438 491.3541 L 1170.438 493.6666 L 1172.594 493.6666 L 1173.094 493.1666 L 1173.781 493.8541 L 1167.625 493.8541 C 1167.355 493.8541 1167.105 493.8853 1166.875 493.9478 L 1166.594 493.6666 L 1169.969 493.6666 L 1169.969 491.3853 L 1168.594 491.3853 C 1168.324 491.3873 1168.074 491.4185 1167.844 491.4791 L 1167.563 491.1978 L 1169.969 491.1978 L 1169.969 489.1353 L 1168.094 489.1353 C 1167.824 489.1373 1167.574 489.1685 1167.344 489.2291 M 1171.187 495.5103 C 1170.726 495.5103 1170.377 495.6021 1170.139 495.7838 C 1169.898 495.9673 1169.779 496.1978 1169.781 496.4752 C 1169.779 496.7974 1169.924 497.0767 1170.217 497.313 C 1170.508 497.5494 1170.779 497.6666 1171.031 497.6666 C 1171.529 497.6666 1171.93 497.5806 1172.232 497.4088 C 1172.533 497.2369 1172.685 496.9576 1172.687 496.5709 C 1172.685 496.2076 1172.545 495.94 1172.264 495.7681 C 1171.982 495.5963 1171.623 495.5103 1171.187 495.5103 ZM 1169.469 496.4009 C 1169.467 495.9791 1169.596 495.6431 1169.857 495.3892 C 1170.117 495.1373 1170.539 495.0103 1171.125 495.0103 C 1171.623 495.0103 1172.039 495.147 1172.373 495.4166 C 1172.705 495.688 1172.873 496.0728 1172.875 496.5728 C 1172.873 497.0943 1172.664 497.5005 1172.248 497.7916 C 1171.83 498.0845 1171.227 498.2291 1170.438 498.2291 C 1169.561 498.2291 1168.836 498.0572 1168.264 497.7134 C 1167.689 497.3697 1167.404 496.897 1167.406 496.2916 C 1167.404 496.022 1167.467 495.7877 1167.592 495.5884 C 1167.717 495.3912 1167.883 495.2916 1168.094 495.2916 C 1168.176 495.2916 1168.258 495.317 1168.342 495.3658 C 1168.424 495.4166 1168.467 495.5005 1168.469 495.6177 C 1168.467 495.7388 1168.418 495.8189 1168.32 495.858 C 1168.223 495.897 1168.109 495.9166 1167.982 495.9166 C 1167.893 495.9166 1167.822 495.9283 1167.77 495.9498 C 1167.715 495.9713 1167.678 495.9927 1167.658 496.0123 C 1167.635 496.0357 1167.617 496.0728 1167.607 496.1275 C 1167.596 496.1822 1167.592 496.2408 1167.594 496.3052 C 1167.592 496.6939 1167.803 497.0064 1168.225 497.2447 C 1168.645 497.483 1169.352 497.6236 1170.344 497.6666 C 1170.092 497.5611 1169.883 497.4029 1169.717 497.192 C 1169.549 496.981 1169.467 496.7173 1169.469 496.4009 M 1172.875 500.9478 L 1168.152 500.9478 C 1167.984 500.9478 1167.861 501.0005 1167.779 501.1041 C 1167.695 501.2095 1167.654 501.3541 1167.656 501.5416 L 1167.656 501.8541 L 1167.469 501.8541 L 1167.469 499.5728 L 1167.656 499.5728 L 1167.656 499.8541 C 1167.654 500.063 1167.695 500.2134 1167.779 500.3072 C 1167.861 500.4009 1167.984 500.4478 1168.152 500.4478 L 1171.908 500.4478 C 1171.988 500.4478 1172.055 500.4224 1172.107 500.3697 C 1172.158 500.3189 1172.185 500.2408 1172.187 500.1353 L 1172.187 499.5728 L 1172.375 499.5728 L 1172.375 499.8541 C 1172.373 500.1041 1172.414 500.3072 1172.498 500.4634 C 1172.58 500.6197 1172.707 500.7408 1172.875 500.8228 M 1171.519 505.5416 C 1171.894 505.5416 1172.183 505.4595 1172.385 505.2916 C 1172.584 505.1255 1172.685 504.8755 1172.687 504.5416 C 1172.685 504.2916 1172.615 504.0787 1172.478 503.9009 C 1172.34 503.7252 1172.164 503.6353 1171.953 503.6353 C 1171.824 503.6353 1171.719 503.6724 1171.635 503.7447 C 1171.549 503.8189 1171.463 503.8541 1171.381 503.8541 C 1171.271 503.8541 1171.191 503.8306 1171.141 503.7798 C 1171.086 503.7291 1171.06 503.6548 1171.062 503.5552 C 1171.06 503.4361 1171.096 503.3423 1171.17 503.272 C 1171.242 503.2017 1171.363 503.1666 1171.531 503.1666 C 1171.967 503.1666 1172.299 503.3228 1172.529 503.6353 C 1172.758 503.9478 1172.873 504.2818 1172.875 504.6353 C 1172.873 505.1353 1172.748 505.5064 1172.498 505.7447 C 1172.248 505.9849 1171.935 506.1041 1171.563 506.1041 C 1171.311 506.1041 1171.061 506.0474 1170.811 505.9322 C 1170.561 505.8189 1170.32 505.6353 1170.094 505.3853 C 1169.508 504.7818 1169.033 504.3189 1168.67 503.9947 C 1168.305 503.6724 1168.061 503.4791 1167.938 503.4166 L 1167.938 505.2603 C 1167.936 505.4478 1168.008 505.6041 1168.154 505.7291 C 1168.299 505.8541 1168.52 505.938 1168.813 505.9791 L 1168.813 506.1666 L 1167.469 505.9791 L 1167.469 503.0728 L 1167.875 503.0728 C 1168.06 503.1783 1168.299 503.3502 1168.592 503.5884 C 1168.883 503.8287 1169.226 504.147 1169.625 504.5416 C 1169.98 504.8853 1170.316 505.1373 1170.633 505.2994 C 1170.947 505.4615 1171.242 505.5416 1171.519 505.5416 M 1171.094 509.2916 C 1171.094 509.5845 1171.115 509.9713 1171.156 510.4478 L 1172.625 510.2916 L 1173.031 509.8228 L 1173.656 510.3541 L 1171.188 510.6041 C 1171.25 511.2525 1171.355 511.7623 1171.5 512.1353 C 1171.959 511.7213 1172.324 511.2838 1172.594 510.8228 L 1173.156 511.3853 L 1172.875 511.4166 C 1172.48 511.7935 1172.084 512.1685 1171.688 512.5416 C 1172.063 513.065 1172.5 513.4283 1173 513.6353 L 1173.438 512.1353 L 1173.563 512.1666 C 1173.521 512.647 1173.496 513.0435 1173.484 513.356 C 1173.475 513.6685 1173.516 513.9127 1173.609 514.0884 C 1173.703 514.2662 1173.625 514.3345 1173.375 514.2916 C 1173.125 514.2505 1172.818 514.1197 1172.453 513.9009 C 1172.09 513.6822 1171.719 513.3345 1171.344 512.8541 C 1170.969 513.106 1170.59 513.315 1170.203 513.481 C 1169.818 513.647 1169.334 513.813 1168.75 513.9791 L 1168.719 513.8541 C 1169.615 513.522 1170.418 513.065 1171.125 512.4791 C 1170.938 511.9185 1170.813 511.315 1170.75 510.6666 L 1169.469 510.8228 L 1169.219 510.9478 L 1168.875 510.6978 L 1170.719 510.5103 C 1170.699 510.2213 1170.678 509.8248 1170.656 509.3228 L 1169.75 509.3853 L 1169.563 509.5103 L 1169.281 509.2603 L 1170.656 509.1666 C 1170.637 508.44 1170.615 507.7095 1170.594 506.9791 L 1171.313 507.3228 L 1171.063 507.5416 C 1171.063 507.981 1171.074 508.5123 1171.094 509.1353 L 1172.438 509.0103 L 1172.844 508.5416 L 1173.469 509.1041 ZM 1171.563 507.5103 L 1171.594 507.4166 C 1172.24 507.5845 1172.605 507.7466 1172.688 507.9029 C 1172.771 508.0591 1172.771 508.2369 1172.688 508.4341 C 1172.605 508.6334 1172.496 508.6119 1172.359 508.3716 C 1172.225 508.1334 1171.959 507.8463 1171.563 507.5103 ZM 1168.125 507.1041 L 1168.75 507.5103 C 1168.584 507.5748 1168.406 507.7896 1168.219 508.1529 C 1168.031 508.5181 1167.688 509.0435 1167.188 509.7291 L 1168.469 509.6041 C 1168.719 509.19 1168.918 508.772 1169.063 508.3541 L 1169.625 508.7603 C 1169.48 508.8463 1169.23 509.149 1168.875 509.6685 C 1168.521 510.19 1168.063 510.815 1167.5 511.5416 C 1167.793 511.5025 1168.438 511.3873 1169.438 511.1978 L 1169.438 511.3228 C 1168.875 511.4713 1168.438 511.6021 1168.125 511.7154 C 1167.813 511.8306 1167.5 511.9908 1167.188 512.1978 L 1166.813 511.5416 C 1167.043 511.481 1167.309 511.2584 1167.609 510.8716 C 1167.912 510.4869 1168.178 510.106 1168.406 509.7291 C 1168.178 509.772 1167.938 509.8306 1167.688 509.9029 C 1167.438 509.9771 1167.209 510.106 1167 510.2916 L 1166.656 509.6978 C 1166.887 509.6588 1167.152 509.3619 1167.453 508.8091 C 1167.756 508.2584 1167.98 507.69 1168.125 507.1041 ZM 1166.625 513.0728 C 1167.209 512.9908 1167.678 512.9185 1168.031 512.856 C 1168.387 512.7935 1168.959 512.6783 1169.75 512.5103 L 1169.781 512.6353 C 1168.844 512.9088 1168.162 513.1216 1167.734 513.2779 C 1167.309 513.4341 1167.043 513.563 1166.938 513.6666 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,36.666,-10.666)" d="M 1167.906 479.7603 L 1167.906 481.1041 L 1172 481.1041 L 1172 479.7603 ZM 1167.906 481.2916 L 1167.906 482.6666 L 1170 482.6666 C 1169.938 482.2525 1169.896 481.7935 1169.875 481.2916 ZM 1172.422 485.4635 C 1172.746 485.6197 1172.943 485.5943 1173.016 485.3873 C 1173.09 485.1803 1173.178 484.8033 1173.281 484.2603 L 1173.406 484.2916 C 1173.387 484.6275 1173.381 484.9654 1173.391 485.3092 C 1173.402 485.6529 1173.484 485.9068 1173.641 486.0728 C 1173.797 486.2408 1173.59 486.276 1173.016 486.1822 C 1172.443 486.0885 1171.875 485.7935 1171.313 485.2935 C 1170.75 484.7935 1170.324 483.981 1170.031 482.8541 L 1167.906 482.8541 L 1167.906 485.3541 L 1169.75 484.5416 L 1169.813 484.6666 C 1168.625 485.3971 1167.938 485.8971 1167.75 486.1666 L 1167.313 485.6353 C 1167.438 485.5338 1167.49 485.2623 1167.469 484.8228 L 1167.469 480.4791 C 1167.469 480.0221 1167.459 479.6158 1167.438 479.2603 L 1167.906 479.5728 L 1171.938 479.5728 L 1172.219 479.2291 L 1172.719 479.6666 L 1172.438 479.8541 C 1172.438 480.7721 1172.449 481.3033 1172.469 481.4478 L 1172 481.6666 L 1172 481.2916 L 1170.313 481.2916 C 1170.334 481.7935 1170.375 482.2525 1170.438 482.6666 L 1172.594 482.6666 L 1173.031 482.2291 L 1173.656 482.8541 L 1170.469 482.8541 C 1170.678 483.6275 1170.975 484.2154 1171.359 484.6217 C 1171.746 485.0279 1172.1 485.3092 1172.422 485.4635 M 1169.281 487.1666 C 1169.844 487.4596 1170.24 487.7115 1170.469 487.9185 C 1170.699 488.1275 1170.719 488.3619 1170.531 488.6217 C 1170.344 488.8834 1170.199 488.8521 1170.094 488.5279 C 1169.99 488.2057 1169.699 487.7838 1169.219 487.2603 ZM 1167.063 488.9478 L 1172.344 488.9478 L 1172.813 488.4791 L 1173.469 489.1353 L 1170.438 489.1353 L 1170.438 491.1666 L 1171.875 491.1666 L 1172.313 490.7291 L 1172.938 491.3541 L 1170.438 491.3541 L 1170.438 493.6666 L 1172.594 493.6666 L 1173.094 493.1666 L 1173.781 493.8541 L 1167.625 493.8541 C 1167.355 493.8541 1167.105 493.8853 1166.875 493.9478 L 1166.594 493.6666 L 1169.969 493.6666 L 1169.969 491.3853 L 1168.594 491.3853 C 1168.324 491.3873 1168.074 491.4185 1167.844 491.4791 L 1167.563 491.1978 L 1169.969 491.1978 L 1169.969 489.1353 L 1168.094 489.1353 C 1167.824 489.1373 1167.574 489.1685 1167.344 489.2291 M 1171.187 495.5103 C 1170.726 495.5103 1170.377 495.6021 1170.139 495.7838 C 1169.898 495.9673 1169.779 496.1978 1169.781 496.4752 C 1169.779 496.7974 1169.924 497.0767 1170.217 497.313 C 1170.508 497.5494 1170.779 497.6666 1171.031 497.6666 C 1171.529 497.6666 1171.93 497.5806 1172.232 497.4088 C 1172.533 497.2369 1172.685 496.9576 1172.687 496.5709 C 1172.685 496.2076 1172.545 495.94 1172.264 495.7681 C 1171.982 495.5963 1171.623 495.5103 1171.187 495.5103 ZM 1169.469 496.4009 C 1169.467 495.9791 1169.596 495.6431 1169.857 495.3892 C 1170.117 495.1373 1170.539 495.0103 1171.125 495.0103 C 1171.623 495.0103 1172.039 495.147 1172.373 495.4166 C 1172.705 495.688 1172.873 496.0728 1172.875 496.5728 C 1172.873 497.0943 1172.664 497.5005 1172.248 497.7916 C 1171.83 498.0845 1171.227 498.2291 1170.438 498.2291 C 1169.561 498.2291 1168.836 498.0572 1168.264 497.7134 C 1167.689 497.3697 1167.404 496.897 1167.406 496.2916 C 1167.404 496.022 1167.467 495.7877 1167.592 495.5884 C 1167.717 495.3912 1167.883 495.2916 1168.094 495.2916 C 1168.176 495.2916 1168.258 495.317 1168.342 495.3658 C 1168.424 495.4166 1168.467 495.5005 1168.469 495.6177 C 1168.467 495.7388 1168.418 495.8189 1168.32 495.858 C 1168.223 495.897 1168.109 495.9166 1167.982 495.9166 C 1167.893 495.9166 1167.822 495.9283 1167.77 495.9498 C 1167.715 495.9713 1167.678 495.9927 1167.658 496.0123 C 1167.635 496.0357 1167.617 496.0728 1167.607 496.1275 C 1167.596 496.1822 1167.592 496.2408 1167.594 496.3052 C 1167.592 496.6939 1167.803 497.0064 1168.225 497.2447 C 1168.645 497.483 1169.352 497.6236 1170.344 497.6666 C 1170.092 497.5611 1169.883 497.4029 1169.717 497.192 C 1169.549 496.981 1169.467 496.7173 1169.469 496.4009 M 1172.875 500.9478 L 1168.152 500.9478 C 1167.984 500.9478 1167.861 501.0005 1167.779 501.1041 C 1167.695 501.2095 1167.654 501.3541 1167.656 501.5416 L 1167.656 501.8541 L 1167.469 501.8541 L 1167.469 499.5728 L 1167.656 499.5728 L 1167.656 499.8541 C 1167.654 500.063 1167.695 500.2134 1167.779 500.3072 C 1167.861 500.4009 1167.984 500.4478 1168.152 500.4478 L 1171.908 500.4478 C 1171.988 500.4478 1172.055 500.4224 1172.107 500.3697 C 1172.158 500.3189 1172.185 500.2408 1172.187 500.1353 L 1172.187 499.5728 L 1172.375 499.5728 L 1172.375 499.8541 C 1172.373 500.1041 1172.414 500.3072 1172.498 500.4634 C 1172.58 500.6197 1172.707 500.7408 1172.875 500.8228 M 1172.875 504.9478 L 1168.152 504.9478 C 1167.984 504.9478 1167.861 505.0005 1167.779 505.1041 C 1167.695 505.2095 1167.654 505.3541 1167.656 505.5416 L 1167.656 505.8541 L 1167.469 505.8541 L 1167.469 503.5728 L 1167.656 503.5728 L 1167.656 503.8541 C 1167.654 504.063 1167.695 504.2134 1167.779 504.3072 C 1167.861 504.4009 1167.984 504.4478 1168.152 504.4478 L 1171.908 504.4478 C 1171.988 504.4478 1172.055 504.4224 1172.107 504.3697 C 1172.158 504.3189 1172.185 504.2408 1172.187 504.1353 L 1172.187 503.5728 L 1172.375 503.5728 L 1172.375 503.8541 C 1172.373 504.1041 1172.414 504.3072 1172.498 504.4634 C 1172.58 504.6197 1172.707 504.7408 1172.875 504.8228 M 1171.094 509.2916 C 1171.094 509.5845 1171.115 509.9713 1171.156 510.4478 L 1172.625 510.2916 L 1173.031 509.8228 L 1173.656 510.3541 L 1171.188 510.6041 C 1171.25 511.2525 1171.355 511.7623 1171.5 512.1353 C 1171.959 511.7213 1172.324 511.2838 1172.594 510.8228 L 1173.156 511.3853 L 1172.875 511.4166 C 1172.48 511.7935 1172.084 512.1685 1171.688 512.5416 C 1172.063 513.065 1172.5 513.4283 1173 513.6353 L 1173.438 512.1353 L 1173.563 512.1666 C 1173.521 512.647 1173.496 513.0435 1173.484 513.356 C 1173.475 513.6685 1173.516 513.9127 1173.609 514.0884 C 1173.703 514.2662 1173.625 514.3345 1173.375 514.2916 C 1173.125 514.2505 1172.818 514.1197 1172.453 513.9009 C 1172.09 513.6822 1171.719 513.3345 1171.344 512.8541 C 1170.969 513.106 1170.59 513.315 1170.203 513.481 C 1169.818 513.647 1169.334 513.813 1168.75 513.9791 L 1168.719 513.8541 C 1169.615 513.522 1170.418 513.065 1171.125 512.4791 C 1170.938 511.9185 1170.813 511.315 1170.75 510.6666 L 1169.469 510.8228 L 1169.219 510.9478 L 1168.875 510.6978 L 1170.719 510.5103 C 1170.699 510.2213 1170.678 509.8248 1170.656 509.3228 L 1169.75 509.3853 L 1169.563 509.5103 L 1169.281 509.2603 L 1170.656 509.1666 C 1170.637 508.44 1170.615 507.7095 1170.594 506.9791 L 1171.313 507.3228 L 1171.063 507.5416 C 1171.063 507.981 1171.074 508.5123 1171.094 509.1353 L 1172.438 509.0103 L 1172.844 508.5416 L 1173.469 509.1041 ZM 1171.563 507.5103 L 1171.594 507.4166 C 1172.24 507.5845 1172.605 507.7466 1172.688 507.9029 C 1172.771 508.0591 1172.771 508.2369 1172.688 508.4341 C 1172.605 508.6334 1172.496 508.6119 1172.359 508.3716 C 1172.225 508.1334 1171.959 507.8463 1171.563 507.5103 ZM 1168.125 507.1041 L 1168.75 507.5103 C 1168.584 507.5748 1168.406 507.7896 1168.219 508.1529 C 1168.031 508.5181 1167.688 509.0435 1167.188 509.7291 L 1168.469 509.6041 C 1168.719 509.19 1168.918 508.772 1169.063 508.3541 L 1169.625 508.7603 C 1169.48 508.8463 1169.23 509.149 1168.875 509.6685 C 1168.521 510.19 1168.063 510.815 1167.5 511.5416 C 1167.793 511.5025 1168.438 511.3873 1169.438 511.1978 L 1169.438 511.3228 C 1168.875 511.4713 1168.438 511.6021 1168.125 511.7154 C 1167.813 511.8306 1167.5 511.9908 1167.188 512.1978 L 1166.813 511.5416 C 1167.043 511.481 1167.309 511.2584 1167.609 510.8716 C 1167.912 510.4869 1168.178 510.106 1168.406 509.7291 C 1168.178 509.772 1167.938 509.8306 1167.688 509.9029 C 1167.438 509.9771 1167.209 510.106 1167 510.2916 L 1166.656 509.6978 C 1166.887 509.6588 1167.152 509.3619 1167.453 508.8091 C 1167.756 508.2584 1167.98 507.69 1168.125 507.1041 ZM 1166.625 513.0728 C 1167.209 512.9908 1167.678 512.9185 1168.031 512.856 C 1168.387 512.7935 1168.959 512.6783 1169.75 512.5103 L 1169.781 512.6353 C 1168.844 512.9088 1168.162 513.1216 1167.734 513.2779 C 1167.309 513.4341 1167.043 513.563 1166.938 513.6666 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" d="M 945.4479 769.1354 L 947.6354 769.1354 C 947.6354 768.7623 947.6256 768.3873 947.6041 768.0104 L 948.3229 768.2916 L 948.0729 768.5104 L 948.0729 769.1354 L 949.3541 769.1354 L 949.7604 768.7291 L 950.3541 769.3229 L 948.0729 769.3229 L 948.0729 770.3229 L 950.1041 770.3229 L 950.5729 769.8541 L 951.2291 770.5104 L 945.5729 770.5104 C 945.3033 770.5123 945.0533 770.5436 944.8229 770.6041 L 944.5416 770.3229 L 947.6354 770.3229 L 947.6354 769.3229 L 946.4791 769.3229 C 946.2096 769.3248 945.9596 769.3561 945.7291 769.4166 ZM 946.2916 770.7291 L 946.3541 770.6666 C 946.6666 770.8151 946.9069 770.9615 947.0729 771.1061 C 947.2408 771.2526 947.3073 771.399 947.276 771.5436 C 947.2448 771.6901 947.1783 771.7994 947.0729 771.8717 C 946.9694 771.9459 946.8815 771.8619 946.8073 771.6217 C 946.735 771.3834 946.5631 771.0846 946.2916 770.7291 ZM 948.8229 770.6041 L 949.5104 770.9791 C 949.3658 771.0026 949.2037 771.1217 949.026 771.3405 C 948.8502 771.5592 948.6666 771.7838 948.4791 772.0104 L 949.6354 772.0104 L 950.0729 771.5729 L 950.6979 772.1979 L 948.0729 772.1979 L 948.0729 773.3854 L 950.3229 773.3854 L 950.8229 772.8854 L 951.5104 773.5729 L 948.0729 773.5729 L 948.0729 774.1979 C 948.0729 774.5729 948.0846 774.9069 948.1041 775.1979 L 947.6041 775.3541 C 947.6256 774.9791 947.6354 774.6041 947.6354 774.2291 L 947.6354 773.5729 L 945.2916 773.5729 C 945.0221 773.5748 944.7721 773.6061 944.5416 773.6666 L 944.2604 773.3854 L 947.6354 773.3854 L 947.6354 772.1979 L 946.0729 772.1979 C 945.8033 772.1998 945.5533 772.2311 945.3229 772.2916 L 945.0416 772.0104 L 948.3229 772.0104 C 948.4479 771.7623 948.5573 771.5123 948.651 771.2623 C 948.7448 771.0123 948.8033 770.7936 948.8229 770.6041 M 948.2916 777.6979 L 948.2916 778.6979 L 950.1979 778.6979 L 950.1979 777.6979 ZM 947.7604 779.8854 L 947.7604 780.9479 L 948.9791 780.9479 L 948.9791 779.8854 ZM 949.3541 779.8854 L 949.3541 780.9479 L 950.5729 780.9479 L 950.5729 779.8854 ZM 947.7604 781.1354 L 947.7604 782.2916 L 948.9791 782.2916 L 948.9791 781.1354 ZM 949.3541 781.1354 L 949.3541 782.2916 L 950.5729 782.2916 L 950.5729 781.1354 ZM 947.0416 776.5729 L 950.4791 776.5729 L 950.8541 776.2291 L 951.3541 776.7604 L 948.0729 776.7604 C 947.8033 776.7623 947.5533 776.7936 947.3229 776.8541 ZM 947.8541 779.2916 C 947.8756 778.9401 947.8854 778.5905 947.8854 778.2467 C 947.8854 777.903 947.8756 777.5748 947.8541 777.2604 L 948.2916 777.5104 L 950.1666 777.5104 L 950.4479 777.2291 L 950.8541 777.6041 L 950.6041 777.7604 C 950.6041 778.3248 950.6158 778.7408 950.6354 779.0104 L 950.1979 779.1979 L 950.1979 778.8854 L 948.2916 778.8854 L 948.2916 779.0729 ZM 947.3229 783.2291 C 947.3444 782.6041 947.3541 781.9713 947.3541 781.3248 C 947.3541 780.6803 947.3444 780.0436 947.3229 779.4166 L 947.7916 779.6979 L 950.5729 779.6979 L 950.8541 779.4166 L 951.2604 779.7916 L 951.0104 780.0104 C 951.0104 781.4713 951.0221 782.4283 951.0416 782.8854 L 950.6041 783.0729 L 950.6041 782.4791 L 947.7604 782.4791 L 947.7604 783.0416 ZM 945.3229 776.0416 C 945.6569 776.2311 945.9127 776.4244 946.0885 776.6217 C 946.2662 776.8209 946.276 777.024 946.1198 777.2311 C 945.9635 777.4401 945.8385 777.3776 945.7448 777.0436 C 945.651 776.7115 945.4908 776.3971 945.2604 776.1041 ZM 946.0416 779.3541 C 946.0416 781.4811 946.0533 782.7194 946.0729 783.0729 L 945.6354 783.2916 C 945.6569 782.7291 945.6666 781.5963 945.6666 779.8854 C 945.1666 780.4498 944.6881 780.8776 944.2291 781.1666 L 944.1666 781.0729 C 944.6041 780.6373 944.985 780.1901 945.3073 779.7311 C 945.6315 779.274 945.9166 778.7213 946.1666 778.0729 L 945.2291 778.0729 C 944.9596 778.0748 944.7096 778.1061 944.4791 778.1666 L 944.1979 777.8854 L 946.1354 777.8854 L 946.4479 777.5729 L 946.8854 778.0104 L 946.6041 778.1666 C 946.3756 778.6471 946.1979 779.0026 946.0729 779.2291 C 946.4908 779.3971 946.7721 779.5494 946.9166 779.6842 C 947.0631 779.8209 947.0846 779.9967 946.9791 780.2155 C 946.8756 780.4342 946.7565 780.399 946.6198 780.1061 C 946.485 779.8151 946.2916 779.5651 946.0416 779.3541 M 948.8541 784.5103 C 948.3931 784.5103 948.0435 784.6021 947.8052 784.7838 C 947.565 784.9673 947.4459 785.1978 947.4478 785.4752 C 947.4459 785.7974 947.5905 786.0767 947.8834 786.313 C 948.1744 786.5494 948.4459 786.6666 948.6979 786.6666 C 949.1959 786.6666 949.5963 786.5806 949.899 786.4088 C 950.1998 786.2369 950.3521 785.9576 950.3541 785.5709 C 950.3521 785.2076 950.2115 784.94 949.9302 784.7681 C 949.649 784.5963 949.2896 784.5103 948.8541 784.5103 ZM 947.1354 785.4009 C 947.1334 784.9791 947.2623 784.6431 947.524 784.3892 C 947.7838 784.1373 948.2056 784.0103 948.7916 784.0103 C 949.2896 784.0103 949.7056 784.147 950.0396 784.4166 C 950.3716 784.688 950.5396 785.0728 950.5416 785.5728 C 950.5396 786.0943 950.3306 786.5005 949.9146 786.7916 C 949.4966 787.0845 948.8932 787.2291 948.1041 787.2291 C 947.2272 787.2291 946.5026 787.0572 945.9303 786.7134 C 945.3561 786.3697 945.0709 785.897 945.0729 785.2916 C 945.0709 785.022 945.1334 784.7877 945.2584 784.5884 C 945.3834 784.3912 945.5494 784.2916 945.7604 784.2916 C 945.8423 784.2916 945.9244 784.317 946.0084 784.3658 C 946.0904 784.4166 946.1334 784.5005 946.1354 784.6177 C 946.1334 784.7388 946.0846 784.8189 945.9869 784.858 C 945.8893 784.897 945.776 784.9166 945.649 784.9166 C 945.5592 784.9166 945.4889 784.9283 945.4362 784.9498 C 945.3815 784.9713 945.3444 784.9927 945.3248 785.0123 C 945.3014 785.0357 945.2838 785.0728 945.274 785.1275 C 945.2623 785.1822 945.2584 785.2408 945.2604 785.3052 C 945.2584 785.6939 945.4694 786.0064 945.8912 786.2447 C 946.3112 786.483 947.0182 786.6236 948.0104 786.6666 C 947.7584 786.5611 947.5494 786.4029 947.3834 786.192 C 947.2155 785.981 947.1334 785.7173 947.1354 785.4009 M 950.5416 789.9478 L 945.819 789.9478 C 945.651 789.9478 945.528 790.0005 945.4459 790.1041 C 945.3619 790.2095 945.3209 790.3541 945.3229 790.5416 L 945.3229 790.8541 L 945.1354 790.8541 L 945.1354 788.5728 L 945.3229 788.5728 L 945.3229 788.8541 C 945.3209 789.063 945.3619 789.2134 945.4459 789.3072 C 945.528 789.4009 945.651 789.4478 945.819 789.4478 L 949.5748 789.4478 C 949.6548 789.4478 949.7213 789.4224 949.774 789.3697 C 949.8248 789.3189 949.8521 789.2408 949.8541 789.1353 L 949.8541 788.5728 L 950.0416 788.5728 L 950.0416 788.8541 C 950.0396 789.1041 950.0806 789.3072 950.1646 789.4634 C 950.2466 789.6197 950.3736 789.7408 950.5416 789.8228 M 950.2603 795.1978 C 949.5494 794.7505 948.856 794.3931 948.1802 794.1275 C 947.5026 793.8619 946.9147 793.7291 946.4166 793.7291 C 946.3307 793.7291 946.2115 793.7349 946.0553 793.7447 C 945.899 793.7564 945.7174 793.7603 945.5104 793.7603 C 945.3424 793.7603 945.2272 793.7369 945.1647 793.6861 C 945.1022 793.6353 945.0709 793.5513 945.0729 793.4302 C 945.0709 793.3326 945.1061 793.2486 945.1803 793.1783 C 945.2526 793.108 945.3834 793.0728 945.5748 793.0728 C 945.9713 793.0728 946.4635 793.1627 947.0514 793.3384 C 947.6373 793.5162 948.6353 793.9908 950.0416 794.7603 L 950.0416 793.1978 C 950.0396 792.9693 949.9654 792.7877 949.8209 792.6509 C 949.6744 792.5162 949.4556 792.4166 949.1666 792.3541 L 949.1959 792.1666 L 950.4791 792.3853 M 948.7604 798.2916 C 948.7604 798.5846 948.7819 798.9713 948.8229 799.4479 L 950.2916 799.2916 L 950.6979 798.8229 L 951.3229 799.3541 L 948.8541 799.6041 C 948.9166 800.2526 949.0221 800.7623 949.1666 801.1354 C 949.6256 800.7213 949.9908 800.2838 950.2604 799.8229 L 950.8229 800.3854 L 950.5416 800.4166 C 950.1471 800.7936 949.7506 801.1686 949.3541 801.5416 C 949.7291 802.0651 950.1666 802.4283 950.6666 802.6354 L 951.1041 801.1354 L 951.2291 801.1666 C 951.1881 801.6471 951.1627 802.0436 951.151 802.3561 C 951.1412 802.6686 951.1823 802.9127 951.276 803.0885 C 951.3698 803.2662 951.2916 803.3346 951.0416 803.2916 C 950.7916 803.2506 950.485 803.1198 950.1198 802.901 C 949.7565 802.6823 949.3854 802.3346 949.0104 801.8541 C 948.6354 802.1061 948.2565 802.3151 947.8698 802.4811 C 947.485 802.6471 947.0006 802.8131 946.4166 802.9791 L 946.3854 802.8541 C 947.2819 802.5221 948.0846 802.0651 948.7916 801.4791 C 948.6041 800.9186 948.4791 800.3151 948.4166 799.6666 L 947.1354 799.8229 L 946.8854 799.9479 L 946.5416 799.6979 L 948.3854 799.5104 C 948.3658 799.2213 948.3444 798.8248 948.3229 798.3229 L 947.4166 798.3854 L 947.2291 798.5104 L 946.9479 798.2604 L 948.3229 798.1666 C 948.3033 797.4401 948.2819 796.7096 948.2604 795.9791 L 948.9791 796.3229 L 948.7291 796.5416 C 948.7291 796.9811 948.7408 797.5123 948.7604 798.1354 L 950.1041 798.0104 L 950.5104 797.5416 L 951.1354 798.1041 ZM 949.2291 796.5104 L 949.2604 796.4166 C 949.9069 796.5846 950.2721 796.7467 950.3541 796.903 C 950.4381 797.0592 950.4381 797.2369 950.3541 797.4342 C 950.2721 797.6334 950.1627 797.6119 950.026 797.3717 C 949.8912 797.1334 949.6256 796.8463 949.2291 796.5104 ZM 945.7916 796.1041 L 946.4166 796.5104 C 946.2506 796.5748 946.0729 796.7897 945.8854 797.153 C 945.6979 797.5182 945.3541 798.0436 944.8541 798.7291 L 946.1354 798.6041 C 946.3854 798.1901 946.5846 797.7721 946.7291 797.3541 L 947.2916 797.7604 C 947.1471 797.8463 946.8971 798.149 946.5416 798.6686 C 946.1881 799.1901 945.7291 799.8151 945.1666 800.5416 C 945.4596 800.5026 946.1041 800.3873 947.1041 800.1979 L 947.1041 800.3229 C 946.5416 800.4713 946.1041 800.6022 945.7916 800.7155 C 945.4791 800.8307 945.1666 800.9908 944.8541 801.1979 L 944.4791 800.5416 C 944.7096 800.4811 944.9752 800.2584 945.276 799.8717 C 945.5787 799.4869 945.8444 799.1061 946.0729 798.7291 C 945.8444 798.7721 945.6041 798.8307 945.3541 798.903 C 945.1041 798.9772 944.8756 799.1061 944.6666 799.2916 L 944.3229 798.6979 C 944.5533 798.6588 944.819 798.3619 945.1198 797.8092 C 945.4225 797.2584 945.6471 796.6901 945.7916 796.1041 ZM 944.2916 802.0729 C 944.8756 801.9908 945.3444 801.9186 945.6979 801.8561 C 946.0533 801.7936 946.6256 801.6783 947.4166 801.5104 L 947.4479 801.6354 C 946.5104 801.9088 945.8287 802.1217 945.401 802.278 C 944.9752 802.4342 944.7096 802.5631 944.6041 802.6666 " transform="matrix(1,0,0,1,-26.667,-17.667)" /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(0.9999999,0,0,0.9999999,-43.66706,36.00065)" d="M 505.8853 291.1978 L 505.8853 289.8228 C 505.8853 288.8658 505.8756 288.1783 505.8541 287.7603 L 506.2916 287.9791 C 507.0221 287.6275 507.4693 287.3248 507.6353 287.0728 L 508.1041 287.6041 C 507.9381 287.606 507.7252 287.649 507.4635 287.731 C 507.2037 287.815 506.8131 287.9498 506.2916 288.1353 L 506.2916 291.3853 L 507.6041 290.7603 L 507.6666 290.8541 C 507.5221 290.9596 507.2721 291.1432 506.9166 291.4029 C 506.5631 291.6646 506.3033 291.9088 506.1353 292.1353 L 505.7291 291.6041 C 505.8346 291.5435 505.8853 291.4088 505.8853 291.1978 ZM 508.6353 291.4791 C 509.0318 291.5025 509.2877 291.5084 509.401 291.4967 C 509.5162 291.4869 509.5631 291.3658 509.5416 291.1353 L 509.5416 288.3853 L 508.2916 288.3853 L 508.2916 292.8853 L 507.8541 293.1353 C 507.8756 292.5963 507.8853 291.69 507.8853 290.4185 C 507.8853 289.149 507.8756 288.3248 507.8541 287.9478 L 508.2916 288.1978 L 509.5103 288.1978 L 509.7291 287.8853 L 510.1978 288.2603 L 509.9478 288.4478 L 509.9478 291.4166 C 509.9693 291.7721 509.7818 292.0221 509.3853 292.1666 C 509.3658 291.8775 509.1158 291.69 508.6353 291.6041 ZM 503.9166 287.3541 L 504.0103 287.2916 C 504.3658 287.5221 504.6197 287.7115 504.776 287.856 C 504.9322 288.0025 504.9947 288.1529 504.9635 288.3092 C 504.9322 288.4654 504.8502 288.5904 504.7135 288.6842 C 504.5787 288.7779 504.485 288.6842 504.4322 288.4029 C 504.3814 288.1217 504.2096 287.7721 503.9166 287.3541 ZM 504.8541 292.3853 C 505.0416 292.5963 505.3033 292.8053 505.6353 293.0123 C 505.9693 293.2213 506.5943 293.3463 507.5103 293.3873 C 508.4283 293.4303 509.4478 293.3873 510.5728 293.2603 L 510.5728 293.3853 C 510.1783 293.4908 509.9693 293.6568 509.9478 293.8853 C 508.9478 293.8853 508.1471 293.8658 507.5416 293.8228 C 506.9381 293.7818 506.4381 293.6881 506.0416 293.5416 C 505.6471 293.3971 505.3385 293.2057 505.1197 292.9654 C 504.901 292.7271 504.7408 292.606 504.6353 292.606 C 504.5318 292.606 504.3541 292.731 504.1041 292.981 C 503.8541 293.231 503.6881 293.4283 503.6041 293.5728 L 503.1666 293.1353 C 503.5006 292.8658 503.9283 292.6158 504.4478 292.3853 L 504.4478 289.9166 L 504.2916 289.9166 C 504.0221 289.9185 503.7721 289.9498 503.5416 290.0103 L 503.2603 289.7291 L 504.4166 289.7291 L 504.6353 289.4166 L 505.1041 289.7603 M 506.3853 297.1666 C 506.2408 297.5025 506.1041 297.7623 505.9791 297.9478 L 509.3853 297.9478 L 509.8228 297.5103 L 510.4478 298.1353 L 508.0728 298.1353 C 508.2603 298.4088 508.4947 298.6588 508.776 298.8873 C 509.0572 299.1178 509.3502 299.2896 509.651 299.4029 C 509.9537 299.5182 510.2603 299.5846 510.5728 299.6041 L 510.5728 299.7291 C 510.3033 299.731 510.1041 299.856 509.9791 300.1041 C 509.6041 299.9596 509.2252 299.7154 508.8385 299.3717 C 508.4537 299.0279 508.1353 298.6158 507.8853 298.1353 L 505.9166 298.1353 C 505.5221 298.6373 505.1002 299.0396 504.651 299.3404 C 504.2037 299.6432 503.7193 299.8971 503.1978 300.1041 L 503.1666 299.9791 C 504.1471 299.44 504.8971 298.8248 505.4166 298.1353 L 503.7603 298.1353 L 503.4791 298.1978 L 503.2291 297.9478 L 505.5103 297.9478 C 505.6353 297.7623 505.7721 297.5025 505.9166 297.1666 L 504.4791 297.1666 L 504.1978 297.2291 L 503.9478 296.9791 L 505.9791 296.9791 C 506.0631 296.731 506.1353 296.481 506.1978 296.2291 L 504.1978 296.2291 L 503.9166 296.2916 L 503.6666 296.0416 L 506.2291 296.0416 C 506.3131 295.69 506.3541 295.3463 506.3541 295.0103 L 507.1353 295.3541 C 506.9693 295.4185 506.8346 295.6471 506.7291 296.0416 L 509.0416 296.0416 L 509.4478 295.6353 L 510.0416 296.2291 L 506.6978 296.2291 C 506.6158 296.481 506.5318 296.731 506.4478 296.9791 L 508.4166 296.9791 L 508.7916 296.6041 L 509.3541 297.1666 ZM 505.6041 299.3853 L 505.6041 300.3853 L 507.9478 300.3853 L 507.9478 299.3853 ZM 505.6041 300.5728 L 505.6041 301.5728 L 507.9478 301.5728 L 507.9478 300.5728 ZM 508.3853 299.5416 C 508.3853 300.9185 508.3971 301.7506 508.4166 302.0416 L 507.9478 302.3228 L 507.9478 301.7603 L 505.6041 301.7603 L 505.6041 302.0728 L 505.1353 302.3228 C 505.1568 301.8033 505.1666 301.2525 505.1666 300.6685 C 505.1666 300.0865 505.1568 299.5123 505.1353 298.9478 L 505.6353 299.1978 L 507.8853 299.1978 L 508.1666 298.9166 M 507.8541 303.5103 C 507.3931 303.5103 507.0435 303.6021 506.8052 303.7838 C 506.565 303.9673 506.4459 304.1978 506.4478 304.4752 C 506.4459 304.7974 506.5904 305.0767 506.8834 305.313 C 507.1744 305.5494 507.4459 305.6666 507.6978 305.6666 C 508.1959 305.6666 508.5963 305.5806 508.899 305.4088 C 509.1998 305.2369 509.3521 304.9576 509.3541 304.5709 C 509.3521 304.2076 509.2115 303.94 508.9302 303.7681 C 508.649 303.5963 508.2896 303.5103 507.8541 303.5103 ZM 506.1353 304.4009 C 506.1334 303.9791 506.2623 303.6431 506.524 303.3892 C 506.7838 303.1373 507.2056 303.0103 507.7916 303.0103 C 508.2896 303.0103 508.7056 303.147 509.0396 303.4166 C 509.3716 303.688 509.5396 304.0728 509.5416 304.5728 C 509.5396 305.0943 509.3306 305.5005 508.9146 305.7916 C 508.4966 306.0845 507.8932 306.2291 507.1041 306.2291 C 506.2271 306.2291 505.5025 306.0572 504.9303 305.7134 C 504.356 305.3697 504.0709 304.897 504.0728 304.2916 C 504.0709 304.022 504.1334 303.7877 504.2584 303.5884 C 504.3834 303.3912 504.5494 303.2916 504.7603 303.2916 C 504.8423 303.2916 504.9244 303.317 505.0084 303.3658 C 505.0904 303.4166 505.1334 303.5005 505.1353 303.6177 C 505.1334 303.7388 505.0846 303.8189 504.9869 303.858 C 504.8893 303.897 504.776 303.9166 504.649 303.9166 C 504.5592 303.9166 504.4889 303.9283 504.4361 303.9498 C 504.3814 303.9713 504.3443 303.9927 504.3248 304.0123 C 504.3014 304.0357 504.2838 304.0728 504.274 304.1275 C 504.2623 304.1822 504.2584 304.2408 504.2603 304.3052 C 504.2584 304.6939 504.4693 305.0064 504.8912 305.2447 C 505.3111 305.483 506.0182 305.6236 507.0103 305.6666 C 506.7584 305.5611 506.5494 305.4029 506.3834 305.192 C 506.2154 304.981 506.1334 304.7173 506.1353 304.4009 M 509.5416 308.9478 L 504.8189 308.9478 C 504.651 308.9478 504.5279 309.0005 504.4459 309.1041 C 504.3619 309.2095 504.3209 309.3541 504.3228 309.5416 L 504.3228 309.8541 L 504.1353 309.8541 L 504.1353 307.5728 L 504.3228 307.5728 L 504.3228 307.8541 C 504.3209 308.063 504.3619 308.2134 504.4459 308.3072 C 504.5279 308.4009 504.651 308.4478 504.8189 308.4478 L 508.5748 308.4478 C 508.6548 308.4478 508.7213 308.4224 508.774 308.3697 C 508.8248 308.3189 508.8521 308.2408 508.8541 308.1353 L 508.8541 307.5728 L 509.0416 307.5728 L 509.0416 307.8541 C 509.0396 308.1041 509.0806 308.3072 509.1646 308.4634 C 509.2466 308.6197 509.3736 308.7408 509.5416 308.8228 M 507.5728 312.815 C 507.5709 313.2134 507.4185 313.5396 507.1178 313.7896 C 506.815 314.0416 506.4146 314.1666 505.9166 314.1666 C 505.3521 314.1666 504.9029 314.0377 504.5709 313.7759 C 504.2369 313.5162 504.0709 313.1158 504.0728 312.5728 C 504.0709 312.1978 504.1803 311.8658 504.399 311.5728 C 504.6178 311.2818 504.8834 311.1353 505.1978 311.1353 C 505.3209 311.1353 505.4302 311.1705 505.524 311.2408 C 505.6177 311.3111 505.6646 311.4048 505.6666 311.524 C 505.6646 311.6431 505.6216 311.7232 505.5377 311.7623 C 505.4517 311.8033 505.3775 311.8228 505.315 311.8228 C 505.1842 311.8228 505.0826 311.7916 505.0084 311.7291 C 504.9342 311.6666 504.8541 311.6353 504.7701 311.6353 C 504.5982 311.6353 504.4713 311.7349 504.3873 311.9322 C 504.3014 312.1314 504.2584 312.3443 504.2603 312.5728 C 504.2584 312.9068 504.3951 313.1627 504.6685 313.3384 C 504.942 313.5162 505.3307 313.6041 505.8385 313.6041 C 506.2564 313.6041 506.5982 313.5279 506.8639 313.3736 C 507.1256 313.2193 507.2584 312.9869 507.2603 312.6783 C 507.2584 312.4537 507.2154 312.2584 507.1334 312.0943 C 507.0494 311.9302 506.8736 311.7759 506.6041 311.6314 L 506.6353 311.3541 L 509.4791 311.5103 L 509.4791 314.0728 L 509.0416 313.9771 L 509.0416 311.7037 L 506.9478 311.5904 C 507.2369 311.7994 507.4146 312.0025 507.4771 312.2017 C 507.5396 312.4009 507.5709 312.606 507.5728 312.815 M 507.7603 317.2916 C 507.7603 317.5846 507.7818 317.9713 507.8228 318.4478 L 509.2916 318.2916 L 509.6978 317.8228 L 510.3228 318.3541 L 507.8541 318.6041 C 507.9166 319.2525 508.0221 319.7623 508.1666 320.1353 C 508.6256 319.7213 508.9908 319.2838 509.2603 318.8228 L 509.8228 319.3853 L 509.5416 319.4166 C 509.1471 319.7935 508.7506 320.1685 508.3541 320.5416 C 508.7291 321.065 509.1666 321.4283 509.6666 321.6353 L 510.1041 320.1353 L 510.2291 320.1666 C 510.1881 320.6471 510.1627 321.0435 510.151 321.356 C 510.1412 321.6685 510.1822 321.9127 510.276 322.0885 C 510.3697 322.2662 510.2916 322.3346 510.0416 322.2916 C 509.7916 322.2506 509.485 322.1197 509.1197 321.901 C 508.7564 321.6822 508.3853 321.3346 508.0103 320.8541 C 507.6353 321.106 507.2564 321.315 506.8697 321.481 C 506.485 321.6471 506.0006 321.8131 505.4166 321.9791 L 505.3853 321.8541 C 506.2818 321.5221 507.0846 321.065 507.7916 320.4791 C 507.6041 319.9185 507.4791 319.315 507.4166 318.6666 L 506.1353 318.8228 L 505.8853 318.9478 L 505.5416 318.6978 L 507.3853 318.5103 C 507.3658 318.2213 507.3443 317.8248 507.3228 317.3228 L 506.4166 317.3853 L 506.2291 317.5103 L 505.9478 317.2603 L 507.3228 317.1666 C 507.3033 316.44 507.2818 315.7096 507.2603 314.9791 L 507.9791 315.3228 L 507.7291 315.5416 C 507.7291 315.981 507.7408 316.5123 507.7603 317.1353 L 509.1041 317.0103 L 509.5103 316.5416 L 510.1353 317.1041 ZM 508.2291 315.5103 L 508.2603 315.4166 C 508.9068 315.5846 509.2721 315.7467 509.3541 315.9029 C 509.4381 316.0592 509.4381 316.2369 509.3541 316.4342 C 509.2721 316.6334 509.1627 316.6119 509.026 316.3717 C 508.8912 316.1334 508.6256 315.8463 508.2291 315.5103 ZM 504.7916 315.1041 L 505.4166 315.5103 C 505.2506 315.5748 505.0728 315.7896 504.8853 316.1529 C 504.6978 316.5182 504.3541 317.0435 503.8541 317.7291 L 505.1353 317.6041 C 505.3853 317.19 505.5846 316.7721 505.7291 316.3541 L 506.2916 316.7603 C 506.1471 316.8463 505.8971 317.149 505.5416 317.6685 C 505.1881 318.19 504.7291 318.815 504.1666 319.5416 C 504.4596 319.5025 505.1041 319.3873 506.1041 319.1978 L 506.1041 319.3228 C 505.5416 319.4713 505.1041 319.6021 504.7916 319.7154 C 504.4791 319.8307 504.1666 319.9908 503.8541 320.1978 L 503.4791 319.5416 C 503.7096 319.481 503.9752 319.2584 504.276 318.8717 C 504.5787 318.4869 504.8443 318.106 505.0728 317.7291 C 504.8443 317.7721 504.6041 317.8307 504.3541 317.9029 C 504.1041 317.9771 503.8756 318.106 503.6666 318.2916 L 503.3228 317.6978 C 503.5533 317.6588 503.8189 317.3619 504.1197 316.8092 C 504.4225 316.2584 504.6471 315.69 504.7916 315.1041 ZM 503.2916 321.0728 C 503.8756 320.9908 504.3443 320.9185 504.6978 320.856 C 505.0533 320.7935 505.6256 320.6783 506.4166 320.5103 L 506.4478 320.6353 C 505.5103 320.9088 504.8287 321.1217 504.401 321.2779 C 503.9752 321.4342 503.7096 321.5631 503.6041 321.6666 " /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,-63,36.666)" d="M 505.8853 291.1978 L 505.8853 289.8228 C 505.8853 288.8658 505.8756 288.1783 505.8541 287.7603 L 506.2916 287.9791 C 507.0221 287.6275 507.4693 287.3248 507.6353 287.0728 L 508.1041 287.6041 C 507.9381 287.606 507.7252 287.649 507.4635 287.731 C 507.2037 287.815 506.8131 287.9498 506.2916 288.1353 L 506.2916 291.3853 L 507.6041 290.7603 L 507.6666 290.8541 C 507.5221 290.9596 507.2721 291.1432 506.9166 291.4029 C 506.5631 291.6646 506.3033 291.9088 506.1353 292.1353 L 505.7291 291.6041 C 505.8346 291.5435 505.8853 291.4088 505.8853 291.1978 ZM 508.6353 291.4791 C 509.0318 291.5025 509.2877 291.5084 509.401 291.4967 C 509.5162 291.4869 509.5631 291.3658 509.5416 291.1353 L 509.5416 288.3853 L 508.2916 288.3853 L 508.2916 292.8853 L 507.8541 293.1353 C 507.8756 292.5963 507.8853 291.69 507.8853 290.4185 C 507.8853 289.149 507.8756 288.3248 507.8541 287.9478 L 508.2916 288.1978 L 509.5103 288.1978 L 509.7291 287.8853 L 510.1978 288.2603 L 509.9478 288.4478 L 509.9478 291.4166 C 509.9693 291.7721 509.7818 292.0221 509.3853 292.1666 C 509.3658 291.8775 509.1158 291.69 508.6353 291.6041 ZM 503.9166 287.3541 L 504.0103 287.2916 C 504.3658 287.5221 504.6197 287.7115 504.776 287.856 C 504.9322 288.0025 504.9947 288.1529 504.9635 288.3092 C 504.9322 288.4654 504.8502 288.5904 504.7135 288.6842 C 504.5787 288.7779 504.485 288.6842 504.4322 288.4029 C 504.3814 288.1217 504.2096 287.7721 503.9166 287.3541 ZM 504.8541 292.3853 C 505.0416 292.5963 505.3033 292.8053 505.6353 293.0123 C 505.9693 293.2213 506.5943 293.3463 507.5103 293.3873 C 508.4283 293.4303 509.4478 293.3873 510.5728 293.2603 L 510.5728 293.3853 C 510.1783 293.4908 509.9693 293.6568 509.9478 293.8853 C 508.9478 293.8853 508.1471 293.8658 507.5416 293.8228 C 506.9381 293.7818 506.4381 293.6881 506.0416 293.5416 C 505.6471 293.3971 505.3385 293.2057 505.1197 292.9654 C 504.901 292.7271 504.7408 292.606 504.6353 292.606 C 504.5318 292.606 504.3541 292.731 504.1041 292.981 C 503.8541 293.231 503.6881 293.4283 503.6041 293.5728 L 503.1666 293.1353 C 503.5006 292.8658 503.9283 292.6158 504.4478 292.3853 L 504.4478 289.9166 L 504.2916 289.9166 C 504.0221 289.9185 503.7721 289.9498 503.5416 290.0103 L 503.2603 289.7291 L 504.4166 289.7291 L 504.6353 289.4166 L 505.1041 289.7603 M 506.3853 297.1666 C 506.2408 297.5025 506.1041 297.7623 505.9791 297.9478 L 509.3853 297.9478 L 509.8228 297.5103 L 510.4478 298.1353 L 508.0728 298.1353 C 508.2603 298.4088 508.4947 298.6588 508.776 298.8873 C 509.0572 299.1178 509.3502 299.2896 509.651 299.4029 C 509.9537 299.5182 510.2603 299.5846 510.5728 299.6041 L 510.5728 299.7291 C 510.3033 299.731 510.1041 299.856 509.9791 300.1041 C 509.6041 299.9596 509.2252 299.7154 508.8385 299.3717 C 508.4537 299.0279 508.1353 298.6158 507.8853 298.1353 L 505.9166 298.1353 C 505.5221 298.6373 505.1002 299.0396 504.651 299.3404 C 504.2037 299.6432 503.7193 299.8971 503.1978 300.1041 L 503.1666 299.9791 C 504.1471 299.44 504.8971 298.8248 505.4166 298.1353 L 503.7603 298.1353 L 503.4791 298.1978 L 503.2291 297.9478 L 505.5103 297.9478 C 505.6353 297.7623 505.7721 297.5025 505.9166 297.1666 L 504.4791 297.1666 L 504.1978 297.2291 L 503.9478 296.9791 L 505.9791 296.9791 C 506.0631 296.731 506.1353 296.481 506.1978 296.2291 L 504.1978 296.2291 L 503.9166 296.2916 L 503.6666 296.0416 L 506.2291 296.0416 C 506.3131 295.69 506.3541 295.3463 506.3541 295.0103 L 507.1353 295.3541 C 506.9693 295.4185 506.8346 295.6471 506.7291 296.0416 L 509.0416 296.0416 L 509.4478 295.6353 L 510.0416 296.2291 L 506.6978 296.2291 C 506.6158 296.481 506.5318 296.731 506.4478 296.9791 L 508.4166 296.9791 L 508.7916 296.6041 L 509.3541 297.1666 ZM 505.6041 299.3853 L 505.6041 300.3853 L 507.9478 300.3853 L 507.9478 299.3853 ZM 505.6041 300.5728 L 505.6041 301.5728 L 507.9478 301.5728 L 507.9478 300.5728 ZM 508.3853 299.5416 C 508.3853 300.9185 508.3971 301.7506 508.4166 302.0416 L 507.9478 302.3228 L 507.9478 301.7603 L 505.6041 301.7603 L 505.6041 302.0728 L 505.1353 302.3228 C 505.1568 301.8033 505.1666 301.2525 505.1666 300.6685 C 505.1666 300.0865 505.1568 299.5123 505.1353 298.9478 L 505.6353 299.1978 L 507.8853 299.1978 L 508.1666 298.9166 M 507.8541 303.5103 C 507.3931 303.5103 507.0435 303.6021 506.8052 303.7838 C 506.565 303.9673 506.4459 304.1978 506.4478 304.4752 C 506.4459 304.7974 506.5904 305.0767 506.8834 305.313 C 507.1744 305.5494 507.4459 305.6666 507.6978 305.6666 C 508.1959 305.6666 508.5963 305.5806 508.899 305.4088 C 509.1998 305.2369 509.3521 304.9576 509.3541 304.5709 C 509.3521 304.2076 509.2115 303.94 508.9302 303.7681 C 508.649 303.5963 508.2896 303.5103 507.8541 303.5103 ZM 506.1353 304.4009 C 506.1334 303.9791 506.2623 303.6431 506.524 303.3892 C 506.7838 303.1373 507.2056 303.0103 507.7916 303.0103 C 508.2896 303.0103 508.7056 303.147 509.0396 303.4166 C 509.3716 303.688 509.5396 304.0728 509.5416 304.5728 C 509.5396 305.0943 509.3306 305.5005 508.9146 305.7916 C 508.4966 306.0845 507.8932 306.2291 507.1041 306.2291 C 506.2271 306.2291 505.5025 306.0572 504.9303 305.7134 C 504.356 305.3697 504.0709 304.897 504.0728 304.2916 C 504.0709 304.022 504.1334 303.7877 504.2584 303.5884 C 504.3834 303.3912 504.5494 303.2916 504.7603 303.2916 C 504.8423 303.2916 504.9244 303.317 505.0084 303.3658 C 505.0904 303.4166 505.1334 303.5005 505.1353 303.6177 C 505.1334 303.7388 505.0846 303.8189 504.9869 303.858 C 504.8893 303.897 504.776 303.9166 504.649 303.9166 C 504.5592 303.9166 504.4889 303.9283 504.4361 303.9498 C 504.3814 303.9713 504.3443 303.9927 504.3248 304.0123 C 504.3014 304.0357 504.2838 304.0728 504.274 304.1275 C 504.2623 304.1822 504.2584 304.2408 504.2603 304.3052 C 504.2584 304.6939 504.4693 305.0064 504.8912 305.2447 C 505.3111 305.483 506.0182 305.6236 507.0103 305.6666 C 506.7584 305.5611 506.5494 305.4029 506.3834 305.192 C 506.2154 304.981 506.1334 304.7173 506.1353 304.4009 M 509.5416 308.9478 L 504.8189 308.9478 C 504.651 308.9478 504.5279 309.0005 504.4459 309.1041 C 504.3619 309.2095 504.3209 309.3541 504.3228 309.5416 L 504.3228 309.8541 L 504.1353 309.8541 L 504.1353 307.5728 L 504.3228 307.5728 L 504.3228 307.8541 C 504.3209 308.063 504.3619 308.2134 504.4459 308.3072 C 504.5279 308.4009 504.651 308.4478 504.8189 308.4478 L 508.5748 308.4478 C 508.6548 308.4478 508.7213 308.4224 508.774 308.3697 C 508.8248 308.3189 508.8521 308.2408 508.8541 308.1353 L 508.8541 307.5728 L 509.0416 307.5728 L 509.0416 307.8541 C 509.0396 308.1041 509.0806 308.3072 509.1646 308.4634 C 509.2466 308.6197 509.3736 308.7408 509.5416 308.8228 M 505.399 311.4478 C 505.0591 311.4478 504.7857 311.5591 504.5748 311.7798 C 504.3639 312.0025 504.2584 312.2818 504.2603 312.6197 C 504.2584 313.022 504.3639 313.3111 504.5748 313.4908 C 504.7857 313.6705 505.0494 313.7603 505.3658 313.7603 C 505.6393 313.7603 505.9029 313.6353 506.1568 313.3814 C 506.4088 313.1275 506.6412 312.7486 506.8541 312.2408 C 506.6822 311.9869 506.4713 311.7916 506.2193 311.6548 C 505.9654 311.5181 505.692 311.4478 505.399 311.4478 ZM 505.4791 314.1978 C 505.0807 314.1978 504.7467 314.0533 504.4771 313.7603 C 504.2057 313.4693 504.0709 313.0845 504.0728 312.6041 C 504.0709 312.1666 504.2057 311.7916 504.4771 311.4791 C 504.7466 311.1666 505.0611 311.0103 505.4166 311.0103 C 505.7681 311.0103 506.0709 311.1002 506.3209 311.2779 C 506.5709 311.4576 506.7896 311.7154 506.9791 312.0513 C 507.1236 311.7564 507.3052 311.5298 507.524 311.3716 C 507.7427 311.2154 507.9869 311.1353 508.2603 311.1353 C 508.6119 311.1353 508.9146 311.272 509.1646 311.5416 C 509.4146 311.813 509.5396 312.188 509.5416 312.6666 C 509.5396 313.1041 509.4146 313.4595 509.1646 313.7291 C 508.9146 314.0005 508.6119 314.1353 508.2603 314.1353 C 508.0084 314.1353 507.774 314.0572 507.5553 313.9009 C 507.3365 313.7447 507.1432 313.5005 506.9791 313.1666 C 506.7682 313.522 506.5396 313.7818 506.2896 313.9478 C 506.0396 314.1158 505.7682 314.1978 505.4791 314.1978 ZM 508.2447 313.6978 C 508.5377 313.6978 508.7974 313.6158 509.0201 313.4478 C 509.2408 313.2818 509.3521 313.022 509.3541 312.6666 C 509.3521 312.272 509.2466 311.9908 509.0357 311.8228 C 508.8228 311.6568 508.6021 311.5728 508.3716 311.5728 C 508.1373 311.5728 507.9088 311.6939 507.688 311.9322 C 507.4654 312.1724 507.2701 312.5103 507.1041 312.9478 C 507.2291 313.1978 507.3853 313.3853 507.5768 313.5103 C 507.7662 313.6353 507.9888 313.6978 508.2447 313.6978 M 507.7603 317.2916 C 507.7603 317.5846 507.7818 317.9713 507.8228 318.4478 L 509.2916 318.2916 L 509.6978 317.8228 L 510.3228 318.3541 L 507.8541 318.6041 C 507.9166 319.2525 508.0221 319.7623 508.1666 320.1353 C 508.6256 319.7213 508.9908 319.2838 509.2603 318.8228 L 509.8228 319.3853 L 509.5416 319.4166 C 509.1471 319.7935 508.7506 320.1685 508.3541 320.5416 C 508.7291 321.065 509.1666 321.4283 509.6666 321.6353 L 510.1041 320.1353 L 510.2291 320.1666 C 510.1881 320.6471 510.1627 321.0435 510.151 321.356 C 510.1412 321.6685 510.1822 321.9127 510.276 322.0885 C 510.3697 322.2662 510.2916 322.3346 510.0416 322.2916 C 509.7916 322.2506 509.485 322.1197 509.1197 321.901 C 508.7564 321.6822 508.3853 321.3346 508.0103 320.8541 C 507.6353 321.106 507.2564 321.315 506.8697 321.481 C 506.485 321.6471 506.0006 321.8131 505.4166 321.9791 L 505.3853 321.8541 C 506.2818 321.5221 507.0846 321.065 507.7916 320.4791 C 507.6041 319.9185 507.4791 319.315 507.4166 318.6666 L 506.1353 318.8228 L 505.8853 318.9478 L 505.5416 318.6978 L 507.3853 318.5103 C 507.3658 318.2213 507.3443 317.8248 507.3228 317.3228 L 506.4166 317.3853 L 506.2291 317.5103 L 505.9478 317.2603 L 507.3228 317.1666 C 507.3033 316.44 507.2818 315.7096 507.2603 314.9791 L 507.9791 315.3228 L 507.7291 315.5416 C 507.7291 315.981 507.7408 316.5123 507.7603 317.1353 L 509.1041 317.0103 L 509.5103 316.5416 L 510.1353 317.1041 ZM 508.2291 315.5103 L 508.2603 315.4166 C 508.9068 315.5846 509.2721 315.7467 509.3541 315.9029 C 509.4381 316.0592 509.4381 316.2369 509.3541 316.4342 C 509.2721 316.6334 509.1627 316.6119 509.026 316.3717 C 508.8912 316.1334 508.6256 315.8463 508.2291 315.5103 ZM 504.7916 315.1041 L 505.4166 315.5103 C 505.2506 315.5748 505.0728 315.7896 504.8853 316.1529 C 504.6978 316.5182 504.3541 317.0435 503.8541 317.7291 L 505.1353 317.6041 C 505.3853 317.19 505.5846 316.7721 505.7291 316.3541 L 506.2916 316.7603 C 506.1471 316.8463 505.8971 317.149 505.5416 317.6685 C 505.1881 318.19 504.7291 318.815 504.1666 319.5416 C 504.4596 319.5025 505.1041 319.3873 506.1041 319.1978 L 506.1041 319.3228 C 505.5416 319.4713 505.1041 319.6021 504.7916 319.7154 C 504.4791 319.8307 504.1666 319.9908 503.8541 320.1978 L 503.4791 319.5416 C 503.7096 319.481 503.9752 319.2584 504.276 318.8717 C 504.5787 318.4869 504.8443 318.106 505.0728 317.7291 C 504.8443 317.7721 504.6041 317.8307 504.3541 317.9029 C 504.1041 317.9771 503.8756 318.106 503.6666 318.2916 L 503.3228 317.6978 C 503.5533 317.6588 503.8189 317.3619 504.1197 316.8092 C 504.4225 316.2584 504.6471 315.69 504.7916 315.1041 ZM 503.2916 321.0728 C 503.8756 320.9908 504.3443 320.9185 504.6978 320.856 C 505.0533 320.7935 505.6256 320.6783 506.4166 320.5103 L 506.4478 320.6353 C 505.5103 320.9088 504.8287 321.1217 504.401 321.2779 C 503.9752 321.4342 503.7096 321.5631 503.6041 321.6666 " /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,131.504,144.182)" stroke-width="0.25">
     102
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,145.275,153.029)" stroke-width="0.25">
     115
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,205.124,178.729)" stroke-width="0.25">
     68
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-370.226,-14.461)">
     43
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-332.893,-15.461)">
     28
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-315.559,-15.461)">
     23
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,363.537,56.271)" stroke-width="0.25">
     31
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,364.237,71.904)" stroke-width="0.25">
     14
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,357.107,390.809)" stroke-width="0.25">
     24
   </text> 
   <line x1="828.3332" y1="260.3333" x2="828.3332" y2="273.6666" stroke="#27fb06" stroke-dasharray="3,3" /> 
   <line x1="828.3332" y1="273.3333" x2="859.3332" y2="273.3333" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.123,0,0,1,-102.258,0)" /> 
   <line x1="821.6666" y1="260" x2="821.6666" y2="291.3333" stroke="#27fb06" stroke-dasharray="3,3" /> 
   <line x1="821.3332" y1="291.3333" x2="858.3332" y2="291.3333" stroke="#27fb06" stroke-dasharray="3,3" transform="matrix(1.081,0,0,1,-66.83,0)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,495.913,89.649)">
     36
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,519.913,80.982)">
     29
   </text> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,-9.333,-5.667)" d="M 1222.239 317.7603 L 1222.239 319.1041 L 1226.333 319.1041 L 1226.333 317.7603 ZM 1222.239 319.2916 L 1222.239 320.6666 L 1224.333 320.6666 C 1224.271 320.2525 1224.229 319.7935 1224.208 319.2916 ZM 1226.755 323.4635 C 1227.079 323.6197 1227.276 323.5943 1227.349 323.3873 C 1227.423 323.1803 1227.511 322.8033 1227.614 322.2603 L 1227.739 322.2916 C 1227.72 322.6275 1227.714 322.9654 1227.724 323.3092 C 1227.735 323.6529 1227.817 323.9068 1227.974 324.0728 C 1228.13 324.2408 1227.923 324.276 1227.349 324.1822 C 1226.776 324.0885 1226.208 323.7935 1225.646 323.2935 C 1225.083 322.7935 1224.657 321.981 1224.364 320.8541 L 1222.239 320.8541 L 1222.239 323.3541 L 1224.083 322.5416 L 1224.146 322.6666 C 1222.958 323.3971 1222.271 323.8971 1222.083 324.1666 L 1221.646 323.6353 C 1221.771 323.5338 1221.823 323.2623 1221.802 322.8228 L 1221.802 318.4791 C 1221.802 318.0221 1221.792 317.6158 1221.771 317.2603 L 1222.239 317.5728 L 1226.271 317.5728 L 1226.552 317.2291 L 1227.052 317.6666 L 1226.771 317.8541 C 1226.771 318.7721 1226.782 319.3033 1226.802 319.4478 L 1226.333 319.6666 L 1226.333 319.2916 L 1224.646 319.2916 C 1224.667 319.7935 1224.708 320.2525 1224.771 320.6666 L 1226.927 320.6666 L 1227.364 320.2291 L 1227.989 320.8541 L 1224.802 320.8541 C 1225.011 321.6275 1225.308 322.2154 1225.692 322.6217 C 1226.079 323.0279 1226.433 323.3092 1226.755 323.4635 M 1223.614 325.1666 C 1224.177 325.4596 1224.573 325.7115 1224.802 325.9185 C 1225.032 326.1275 1225.052 326.3619 1224.864 326.6217 C 1224.677 326.8834 1224.532 326.8521 1224.427 326.5279 C 1224.323 326.2057 1224.032 325.7838 1223.552 325.2603 ZM 1221.396 326.9478 L 1226.677 326.9478 L 1227.146 326.4791 L 1227.802 327.1353 L 1224.771 327.1353 L 1224.771 329.1666 L 1226.208 329.1666 L 1226.646 328.7291 L 1227.271 329.3541 L 1224.771 329.3541 L 1224.771 331.6666 L 1226.927 331.6666 L 1227.427 331.1666 L 1228.114 331.8541 L 1221.958 331.8541 C 1221.688 331.8541 1221.438 331.8853 1221.208 331.9478 L 1220.927 331.6666 L 1224.302 331.6666 L 1224.302 329.3853 L 1222.927 329.3853 C 1222.657 329.3873 1222.407 329.4185 1222.177 329.4791 L 1221.896 329.1978 L 1224.302 329.1978 L 1224.302 327.1353 L 1222.427 327.1353 C 1222.157 327.1373 1221.907 327.1685 1221.677 327.2291 M 1225.52 333.5103 C 1225.059 333.5103 1224.71 333.6021 1224.472 333.7838 C 1224.231 333.9673 1224.112 334.1978 1224.114 334.4752 C 1224.112 334.7974 1224.257 335.0767 1224.55 335.313 C 1224.841 335.5494 1225.112 335.6666 1225.364 335.6666 C 1225.862 335.6666 1226.263 335.5806 1226.565 335.4088 C 1226.866 335.2369 1227.018 334.9576 1227.02 334.5709 C 1227.018 334.2076 1226.878 333.94 1226.597 333.7681 C 1226.315 333.5963 1225.956 333.5103 1225.52 333.5103 ZM 1223.802 334.4009 C 1223.8 333.9791 1223.929 333.6431 1224.19 333.3892 C 1224.45 333.1373 1224.872 333.0103 1225.458 333.0103 C 1225.956 333.0103 1226.372 333.147 1226.706 333.4166 C 1227.038 333.688 1227.206 334.0728 1227.208 334.5728 C 1227.206 335.0943 1226.997 335.5005 1226.581 335.7916 C 1226.163 336.0845 1225.56 336.2291 1224.771 336.2291 C 1223.894 336.2291 1223.169 336.0572 1222.597 335.7134 C 1222.022 335.3697 1221.737 334.897 1221.739 334.2916 C 1221.737 334.022 1221.8 333.7877 1221.925 333.5884 C 1222.05 333.3912 1222.216 333.2916 1222.427 333.2916 C 1222.509 333.2916 1222.591 333.317 1222.675 333.3658 C 1222.757 333.4166 1222.8 333.5005 1222.802 333.6177 C 1222.8 333.7388 1222.751 333.8189 1222.653 333.858 C 1222.556 333.897 1222.442 333.9166 1222.315 333.9166 C 1222.226 333.9166 1222.155 333.9283 1222.103 333.9498 C 1222.048 333.9713 1222.011 333.9927 1221.991 334.0123 C 1221.968 334.0357 1221.95 334.0728 1221.94 334.1275 C 1221.929 334.1822 1221.925 334.2408 1221.927 334.3052 C 1221.925 334.6939 1222.136 335.0064 1222.558 335.2447 C 1222.978 335.483 1223.685 335.6236 1224.677 335.6666 C 1224.425 335.5611 1224.216 335.4029 1224.05 335.192 C 1223.882 334.981 1223.8 334.7173 1223.802 334.4009 M 1227.208 338.9478 L 1222.485 338.9478 C 1222.317 338.9478 1222.194 339.0005 1222.112 339.1041 C 1222.028 339.2095 1221.987 339.3541 1221.989 339.5416 L 1221.989 339.8541 L 1221.802 339.8541 L 1221.802 337.5728 L 1221.989 337.5728 L 1221.989 337.8541 C 1221.987 338.063 1222.028 338.2134 1222.112 338.3072 C 1222.194 338.4009 1222.317 338.4478 1222.485 338.4478 L 1226.241 338.4478 C 1226.321 338.4478 1226.388 338.4224 1226.44 338.3697 C 1226.491 338.3189 1226.518 338.2408 1226.52 338.1353 L 1226.52 337.5728 L 1226.708 337.5728 L 1226.708 337.8541 C 1226.706 338.1041 1226.747 338.3072 1226.831 338.4634 C 1226.913 338.6197 1227.04 338.7408 1227.208 338.8228 M 1223.228 344.1666 C 1222.833 344.1666 1222.485 344.022 1222.187 343.7291 C 1221.886 343.438 1221.737 343.0318 1221.739 342.5103 C 1221.737 342.1353 1221.841 341.813 1222.05 341.5416 C 1222.257 341.272 1222.497 341.1353 1222.77 341.1353 C 1222.893 341.1353 1223.003 341.1763 1223.097 341.2545 C 1223.19 341.3345 1223.237 341.4146 1223.239 341.4927 C 1223.237 341.6138 1223.188 341.6978 1223.093 341.7486 C 1222.995 341.7994 1222.917 341.8228 1222.854 341.8228 C 1222.745 341.8228 1222.655 341.8033 1222.581 341.7603 C 1222.505 341.7193 1222.437 341.6978 1222.374 341.6978 C 1222.245 341.6978 1222.138 341.7779 1222.054 341.9361 C 1221.968 342.0943 1221.925 342.2681 1221.927 342.4576 C 1221.925 342.8404 1222.034 343.1255 1222.257 343.317 C 1222.478 343.5084 1222.821 343.6041 1223.286 343.6041 C 1223.663 343.6041 1223.968 343.5064 1224.202 343.3072 C 1224.433 343.1099 1224.55 342.7408 1224.552 342.1978 L 1224.739 342.1978 C 1224.737 342.6041 1224.839 342.9029 1225.042 343.0963 C 1225.245 343.2896 1225.528 343.3853 1225.895 343.3853 C 1226.192 343.3853 1226.454 343.3091 1226.681 343.1548 C 1226.905 343.0025 1227.018 342.7623 1227.02 342.4361 C 1227.018 342.2935 1226.981 342.1392 1226.907 341.9752 C 1226.831 341.8111 1226.708 341.7291 1226.54 341.7291 C 1226.368 341.7291 1226.261 341.7505 1226.218 341.7916 C 1226.175 341.8345 1226.122 341.8541 1226.059 341.8541 C 1225.95 341.8541 1225.864 341.8345 1225.802 341.7916 C 1225.737 341.7505 1225.706 341.6783 1225.708 341.5728 C 1225.706 341.4908 1225.737 341.4127 1225.8 341.3384 C 1225.862 341.2662 1225.977 341.2291 1226.145 341.2291 C 1226.456 341.2291 1226.71 341.3658 1226.909 341.6353 C 1227.106 341.9068 1227.206 342.2193 1227.208 342.5728 C 1227.206 342.9908 1227.073 343.3228 1226.811 343.5728 C 1226.548 343.8228 1226.27 343.9478 1225.977 343.9478 C 1225.661 343.9478 1225.392 343.8697 1225.173 343.7134 C 1224.95 343.5572 1224.788 343.313 1224.684 342.9791 C 1224.517 343.438 1224.3 343.7505 1224.032 343.9166 C 1223.763 344.0845 1223.493 344.1666 1223.228 344.1666 M 1225.427 347.2916 C 1225.427 347.5846 1225.448 347.9713 1225.489 348.4478 L 1226.958 348.2916 L 1227.364 347.8228 L 1227.989 348.3541 L 1225.521 348.6041 C 1225.583 349.2525 1225.688 349.7623 1225.833 350.1353 C 1226.292 349.7213 1226.657 349.2838 1226.927 348.8228 L 1227.489 349.3853 L 1227.208 349.4166 C 1226.813 349.7935 1226.417 350.1685 1226.021 350.5416 C 1226.396 351.065 1226.833 351.4283 1227.333 351.6353 L 1227.771 350.1353 L 1227.896 350.1666 C 1227.854 350.6471 1227.829 351.0435 1227.817 351.356 C 1227.808 351.6685 1227.849 351.9127 1227.942 352.0885 C 1228.036 352.2662 1227.958 352.3346 1227.708 352.2916 C 1227.458 352.2506 1227.151 352.1197 1226.786 351.901 C 1226.423 351.6822 1226.052 351.3346 1225.677 350.8541 C 1225.302 351.106 1224.923 351.315 1224.536 351.481 C 1224.151 351.6471 1223.667 351.8131 1223.083 351.9791 L 1223.052 351.8541 C 1223.948 351.5221 1224.751 351.065 1225.458 350.4791 C 1225.271 349.9185 1225.146 349.315 1225.083 348.6666 L 1223.802 348.8228 L 1223.552 348.9478 L 1223.208 348.6978 L 1225.052 348.5103 C 1225.032 348.2213 1225.011 347.8248 1224.989 347.3228 L 1224.083 347.3853 L 1223.896 347.5103 L 1223.614 347.2603 L 1224.989 347.1666 C 1224.97 346.44 1224.948 345.7096 1224.927 344.9791 L 1225.646 345.3228 L 1225.396 345.5416 C 1225.396 345.981 1225.407 346.5123 1225.427 347.1353 L 1226.771 347.0103 L 1227.177 346.5416 L 1227.802 347.1041 ZM 1225.896 345.5103 L 1225.927 345.4166 C 1226.573 345.5846 1226.938 345.7467 1227.021 345.9029 C 1227.104 346.0592 1227.104 346.2369 1227.021 346.4342 C 1226.938 346.6334 1226.829 346.6119 1226.692 346.3717 C 1226.558 346.1334 1226.292 345.8463 1225.896 345.5103 ZM 1222.458 345.1041 L 1223.083 345.5103 C 1222.917 345.5748 1222.739 345.7896 1222.552 346.1529 C 1222.364 346.5182 1222.021 347.0435 1221.521 347.7291 L 1222.802 347.6041 C 1223.052 347.19 1223.251 346.7721 1223.396 346.3541 L 1223.958 346.7603 C 1223.813 346.8463 1223.563 347.149 1223.208 347.6685 C 1222.854 348.19 1222.396 348.815 1221.833 349.5416 C 1222.126 349.5025 1222.771 349.3873 1223.771 349.1978 L 1223.771 349.3228 C 1223.208 349.4713 1222.771 349.6021 1222.458 349.7154 C 1222.146 349.8307 1221.833 349.9908 1221.521 350.1978 L 1221.146 349.5416 C 1221.376 349.481 1221.642 349.2584 1221.942 348.8717 C 1222.245 348.4869 1222.511 348.106 1222.739 347.7291 C 1222.511 347.7721 1222.271 347.8307 1222.021 347.9029 C 1221.771 347.9771 1221.542 348.106 1221.333 348.2916 L 1220.989 347.6978 C 1221.22 347.6588 1221.485 347.3619 1221.786 346.8092 C 1222.089 346.2584 1222.313 345.69 1222.458 345.1041 ZM 1220.958 351.0728 C 1221.542 350.9908 1222.011 350.9185 1222.364 350.856 C 1222.72 350.7935 1223.292 350.6783 1224.083 350.5103 L 1224.114 350.6353 C 1223.177 350.9088 1222.495 351.1217 1222.067 351.2779 C 1221.642 351.4342 1221.376 351.5631 1221.271 351.6666 " /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,445.01,200.575)">
     20
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,570.933,394.275)">
     57
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,166.161,549.84)">
     28
   </text> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,290.523,369.444)" stroke-width="0.25">
     13
   </text> 
   <line x1="1164.667" y1="397.6666" x2="1181.667" y2="397.6666" stroke="#27fb06" stroke-dasharray="3,3" /> 
   <line x1="1155.333" y1="398.3333" x2="1155.333" y2="402.9999" stroke="#27fb06" stroke-dasharray="3,3" /> 
   <line x1="1155.333" y1="403.3333" x2="1181.333" y2="403.3333" stroke="#27fb06" stroke-dasharray="3,3" /> 
   <line x1="1144.667" y1="397.3333" x2="1144.667" y2="408.3333" stroke="#27fb06" stroke-dasharray="3,3" /> 
   <line x1="1145" y1="408.3333" x2="1181.667" y2="408.3333" stroke="#27fb06" stroke-dasharray="3,3" /> 
   <line x1="1162.667" y1="422.6666" x2="1181.667" y2="422.6666" stroke="#27fb06" stroke-dasharray="3,3" /> 
   <line x1="1149.667" y1="423.3333" x2="1149.667" y2="414.9999" stroke="#27fb06" stroke-dasharray="3,3" /> 
   <line x1="1149.667" y1="415.3333" x2="1181.667" y2="415.3333" stroke="#27fb06" stroke-dasharray="3,3" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.6569999,0,0,0.6499999,395.8029,588.264)" id="switch-2287" title="switch" /> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,194.467,460.13)">
     2287
   </text> 
   <text x="355" y="301" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.657,0,0,0.65,170.467,451.33)">
     2289
   </text> 
   <line x1="1046" y1="723.7999" x2="1046" y2="735.1999" stroke="#27fb06" transform="matrix(0.9999999,0,0,0.9999999,-1.599933,-1.728338E-05)" id="line-1139" title="青山917线" /> 
   <line x1="1044.6" y1="752.5999" x2="1044.6" y2="768.1999" stroke="#27fb06" id="line-1140" title="青山917线" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0,0.98,-0.97,0,1144.015,694.897)" id="switch-2296" title="switch" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,266.587,581.035)">
     9
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,278.008,605.323)">
     2296
   </text> 
   <text x="480.6666" y="135.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,28.515,5.302)" stroke-width="0.25">
     北重915线
   </text> 
   <line x1="767.9999" y1="625.6666" x2="767.9999" y2="678.6666" stroke="#27fb06" id="line-1136" title="棉纺9212线" /> 
   <line x1="766.9999" y1="648.3333" x2="781.9999" y2="648.3333" stroke="#27fb06" transform="matrix(0.8999999,0,0,0.9999999,77.63332,2.285148E-06)" id="line-2026" title="棉纺9212线" /> 
   <line x1="798.6666" y1="648.9999" x2="825.9999" y2="648.9999" stroke="#27fb06" id="line-2027" title="棉纺9212线" /> 
   <line x1="748.9999" y1="662.9999" x2="768.3332" y2="662.9999" stroke="#27fb06" id="line-2028" title="棉纺9212线" /> 
   <line x1="731.3332" y1="662.9999" x2="705.3332" y2="662.9999" stroke="#27fb06" id="line-2029" title="棉纺9212线" /> 
   <circle cx="959.75" cy="563.25" r="5.75" fill="none" stroke="#27fb06" transform="matrix(0.729,0,0,0.64,165.761,266.407)" stroke-width="2" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-7.166,492.005)">
     14
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.8679999,0,0,0.9699999,-13.49933,510.005)">
     5
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.8679999,0,0,0.97,-7.833103,524.672)">
     12
   </text> 
   <line x1="865.3333" y1="644.3332" x2="874.6666" y2="644.3332" stroke="#27fb06" id="line-1113" title="幸福917线" transform="matrix(0.5699999,0,0,0.9999999,376.54,-5.829568E-05)" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/switch_close.gif" transform="matrix(0.98,0,0,0.97,834.541,546.619)" id="switch-2272" title="switch" /> 
   <line x1="865.3333" y1="644.3332" x2="874.6666" y2="644.3332" stroke="#27fb06" transform="matrix(0.9999999,0,0,0.9999999,27.66699,0.6666182)" id="line-1114" title="幸福917线" /> 
   <line x1="606.5" y1="636.5" x2="606.5" y2="667.5" stroke="#27fb06" transform="matrix(0.9999999,0,0,0.512,36.5,357.522)" id="line-1137" title="中心变917线" /> 
   <image xlink:href="/images/s_close.gif" width="20" height="15" transform="matrix(0.98,0,0,0.97,886.635,594.195)" id="switch-QS915=22" title="switch" /> 
   <line x1="934" y1="603" x2="960.5" y2="603" stroke="#27fb06" stroke-dasharray="2,2" id="line-182" title="青山915线" transform="matrix(2.05,0,0,1,-1009.05,0)" /> 
   <line x1="876.6666" y1="603.9999" x2="887.9999" y2="603.9999" stroke="#27fb06" stroke-dasharray="3,3" id="line-176" title="青山915线" /> 
   <line x1="1206.667" y1="514.3333" x2="1244" y2="514.3333" stroke="#27fb06" stroke-dasharray="3,3" id="line-300" title="民主911线" /> 
   <line x1="1206.667" y1="507.3333" x2="1282" y2="507.3333" stroke="#27fb06" stroke-dasharray="3,3" id="line-395" title="民主911线" /> 
   <line x1="839.9999" y1="603.3333" x2="859.9999" y2="603.3333" stroke="#27fb06" stroke-dasharray="3,3" id="line-183" title="青山915线" /> 
   <line x1="72" y1="841" x2="72" y2="874.5" stroke="#27fb06" stroke-dasharray="3,3" id="line-1145" title="中心变922线" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-697.881,607.324)">
     中心923线
   </text> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-728.903,373.735)" stroke-width="0.25">
     棉纺913线
   </text> 
   <path d="M 1128.17 715.4999 L 1156.83 715.4999 L 1156.83 737.4999 L 1128.17 737.4999 ZM 1140.478 729.9999 L 1138.728 729.9999 L 1138.728 729.7499 L 1138.853 729.7499 L 1139.103 729.6249 L 1138.978 729.1249 L 1137.666 726.2499 L 1137.041 727.1249 L 1137.041 729.4374 L 1137.103 729.6874 L 1137.353 729.7499 L 1137.603 729.7499 L 1137.603 729.9999 L 1135.853 729.9999 L 1135.853 729.7499 L 1136.041 729.7499 L 1136.353 729.6874 L 1136.416 729.4374 L 1136.416 723.6249 L 1136.353 723.3749 L 1136.041 723.3124 L 1135.853 723.3124 L 1135.853 723.0624 L 1137.603 723.0624 L 1137.603 723.3124 L 1137.353 723.3124 L 1137.103 723.3749 L 1137.041 723.6249 L 1137.041 726.5624 L 1138.916 723.8749 L 1139.041 723.4374 L 1138.666 723.3124 L 1138.478 723.3124 L 1138.478 723.0624 L 1140.228 723.0624 L 1140.228 723.3124 L 1140.103 723.3124 L 1139.728 723.4374 L 1139.353 723.8124 L 1138.103 725.6249 L 1139.791 729.3124 L 1140.041 729.6249 L 1140.228 729.7499 L 1140.478 729.7499 ZM 1145.666 723.0624 L 1145.666 723.3124 L 1145.478 723.3124 L 1145.291 723.3749 L 1145.166 723.6874 L 1144.103 729.9999 L 1143.853 729.9999 L 1143.228 725.6874 L 1143.166 725.6874 L 1142.291 729.9999 L 1142.103 729.9999 L 1141.103 723.6249 L 1141.041 723.3749 L 1140.916 723.3124 L 1140.728 723.3124 L 1140.728 723.0624 L 1142.103 723.0624 L 1142.103 723.3124 L 1141.978 723.3124 L 1141.791 723.3749 L 1141.666 723.6249 L 1142.291 727.9999 L 1142.416 727.9999 L 1143.103 724.4999 L 1142.978 723.6249 L 1142.853 723.3749 L 1142.666 723.3124 L 1142.541 723.3124 L 1142.541 723.0624 L 1143.916 723.0624 L 1143.916 723.3124 L 1143.791 723.3124 L 1143.603 723.3749 L 1143.541 723.6249 L 1144.103 727.8124 L 1144.166 727.8124 L 1144.916 723.6874 L 1144.853 723.4374 L 1144.603 723.3124 L 1144.478 723.3124 L 1144.478 723.0624 ZM 1150.041 729.4374 L 1150.166 729.6874 L 1150.416 729.7499 L 1150.603 729.7499 L 1150.603 729.9999 L 1148.853 729.9999 L 1148.853 729.7499 L 1149.103 729.7499 L 1149.353 729.6874 L 1149.416 729.4374 L 1149.416 726.4999 L 1147.103 726.4999 L 1147.103 729.4374 L 1147.166 729.6874 L 1147.416 729.7499 L 1147.666 729.7499 L 1147.666 729.9999 L 1145.916 729.9999 L 1145.916 729.7499 L 1146.103 729.7499 L 1146.353 729.6874 L 1146.478 729.4374 L 1146.478 723.6249 L 1146.353 723.3749 L 1146.041 723.3124 L 1145.916 723.3124 L 1145.916 723.0624 L 1147.666 723.0624 L 1147.666 723.3124 L 1147.478 723.3124 L 1147.166 723.3749 L 1147.103 723.6249 L 1147.103 726.2499 L 1149.416 726.2499 L 1149.416 723.6249 L 1149.353 723.3749 L 1149.041 723.3124 L 1148.853 723.3124 L 1148.853 723.0624 L 1150.603 723.0624 L 1150.603 723.3124 L 1150.478 723.3124 L 1150.166 723.3749 L 1150.041 723.6249 Z" fill="none" stroke="#27fb06" fill-opacity="0" transform="matrix(0.874,0,0,0.9999999,-150.019,-100.333)" id="line-919-175" title="幸福919线" /> 
   <line x1="806" y1="626.5" x2="819" y2="626.5" stroke="#27fb06" id="line-174" title="棉纺9212线" /> 
   <line x1="869.5" y1="699.5" x2="869.5" y2="653.5" stroke="#27fb06" id="line-397" title="幸福917线" transform="matrix(1,0,0,1.33,0,-231.33)" /> 
   <text x="1053.5" y="418" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.8679999,0,0,0.97,-735.9031,343.735)" stroke-width="0.25">
     棉纺923线
   </text> 
   <line x1="203.5" y1="354" x2="203.5" y2="368.5" stroke="#27fb06" id="line-1147" title="南排913线" /> 
   <image x="686.5" y="196" width="25" height="10" xlink:href="/images/m2_close.gif" transform="matrix(0,1.024,-0.9800001,0,403.16,-406.223)" id="switch-90001" title="switch" /> 
   <line x1="203.5" y1="354" x2="203.5" y2="368.5" stroke="#27fb06" transform="matrix(1,0,0,0.77,1,18.37)" id="line-1148" title="南排913线" /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" transform="matrix(1,0,0,1,27.5,7.5)" d="M 37.375 663.8438 L 37.375 665.9063 L 39.625 665.9063 L 39.625 663.8438 ZM 36.90625 663.6563 C 36.90625 662.8457 36.89648 662.2305 36.875 661.8125 L 37.625 662.1563 L 37.375 662.4063 L 37.375 663.6563 L 39.5625 663.6563 L 39.8125 663.2813 L 40.34375 663.6875 L 40.0625 663.9375 L 40.0625 665.75 C 40.0625 665.9805 40.07422 666.2207 40.09375 666.4688 L 39.625 666.6563 L 39.625 666.0938 L 37.375 666.0938 C 37.375 667.6797 37.38672 668.6055 37.40625 668.875 L 36.875 669.1563 C 36.89648 668.6777 36.90625 667.6582 36.90625 666.0938 L 34.75 666.0938 L 34.75 666.4688 L 34.28125 666.7188 C 34.30273 666.3457 34.3125 665.8047 34.3125 665.0957 C 34.3125 664.3887 34.30273 663.8145 34.28125 663.375 L 34.75 663.6563 ZM 34.75 663.8438 L 34.75 665.9063 L 36.90625 665.9063 M 36.65625 670.2813 C 37.15625 670.5742 37.52148 670.8262 37.75 671.0332 C 37.98047 671.2422 38.07813 671.4551 38.04688 671.6738 C 38.01563 671.8926 37.93359 672.0645 37.79688 672.1895 C 37.66211 672.3145 37.53125 672.1855 37.40625 671.7988 C 37.28125 671.4141 37 670.9395 36.5625 670.375 ZM 35.75 671.625 L 36.53125 672.0313 L 36.25 672.2813 L 36.25 675.4688 C 36.23047 675.8867 36.375 676.1055 36.6875 676.125 L 38.46875 676.125 C 38.69922 676.1055 38.83984 675.9297 38.89063 675.5957 C 38.94336 675.2637 38.98047 674.8242 39 674.2813 L 39.15625 674.2813 C 39.15625 674.8457 39.18359 675.2578 39.23438 675.5176 C 39.28711 675.7793 39.42773 675.9492 39.65625 676.0313 C 39.49023 676.3672 39.1875 676.5313 38.75 676.5313 L 36.4375 676.5313 C 35.95898 676.5117 35.74023 676.1992 35.78125 675.5938 L 35.78125 673.0313 C 35.78125 672.4922 35.77148 672.0234 35.75 671.625 ZM 34.75 672.75 L 34.90625 672.75 C 34.90625 673.418 34.88672 673.9082 34.84375 674.2207 C 34.80273 674.5332 34.69922 674.752 34.53125 674.877 C 34.36523 675.002 34.17773 675.0293 33.96875 674.9551 C 33.76172 674.8828 33.79688 674.6855 34.07813 674.3613 C 34.35938 674.0391 34.58398 673.502 34.75 672.75 ZM 39.28125 672.7188 L 39.375 672.6563 C 40 673.2207 40.375 673.6074 40.5 673.8145 C 40.625 674.0234 40.66797 674.2324 40.625 674.4395 C 40.58398 674.6484 40.49023 674.7988 40.34375 674.8926 C 40.19922 674.9863 40.09375 674.8457 40.03125 674.4707 C 39.96875 674.0957 39.71875 673.5117 39.28125 672.7188 M 38.1875 678.3437 C 37.72656 678.3437 37.37695 678.4355 37.13867 678.6171 C 36.89843 678.8007 36.77929 679.0312 36.78125 679.3085 C 36.7793 679.6308 36.92383 679.9101 37.2168 680.1464 C 37.50781 680.3828 37.7793 680.4999 38.03125 680.4999 C 38.52929 680.4999 38.92968 680.414 39.23242 680.2421 C 39.5332 680.0703 39.68554 679.791 39.6875 679.4042 C 39.68554 679.041 39.54492 678.7734 39.26367 678.6015 C 38.98242 678.4296 38.62304 678.3437 38.1875 678.3437 ZM 36.46875 679.2343 C 36.46679 678.8124 36.5957 678.4765 36.85742 678.2226 C 37.11718 677.9706 37.53906 677.8437 38.125 677.8437 C 38.62304 677.8437 39.03906 677.9804 39.37304 678.2499 C 39.70507 678.5214 39.87304 678.9062 39.875 679.4062 C 39.87304 679.9277 39.66406 680.3339 39.24804 680.6249 C 38.83007 680.9179 38.22656 681.0624 37.4375 681.0624 C 36.56055 681.0624 35.83594 680.8906 35.26367 680.5468 C 34.68945 680.2031 34.4043 679.7304 34.40625 679.1249 C 34.4043 678.8554 34.4668 678.621 34.5918 678.4218 C 34.7168 678.2245 34.88281 678.1249 35.09375 678.1249 C 35.17578 678.1249 35.25781 678.1503 35.34179 678.1992 C 35.42382 678.2499 35.46679 678.3339 35.46875 678.4511 C 35.4668 678.5722 35.41797 678.6523 35.32031 678.6913 C 35.22266 678.7304 35.10938 678.7499 34.98242 678.7499 C 34.89258 678.7499 34.82227 678.7617 34.76953 678.7831 C 34.71484 678.8046 34.67773 678.8261 34.6582 678.8456 C 34.63477 678.8691 34.61719 678.9062 34.60742 678.9609 C 34.5957 679.0156 34.5918 679.0742 34.59375 679.1386 C 34.5918 679.5273 34.80273 679.8398 35.22461 680.0781 C 35.64453 680.3163 36.35156 680.457 37.34375 680.4999 C 37.0918 680.3945 36.88281 680.2363 36.7168 680.0253 C 36.54883 679.8144 36.4668 679.5507 36.46875 679.2343 M 38.51953 684.3749 C 38.89453 684.3749 39.18359 684.2929 39.38476 684.1249 C 39.58398 683.9589 39.68554 683.7089 39.6875 683.3749 C 39.68554 683.1249 39.61523 682.912 39.47851 682.7343 C 39.33984 682.5585 39.16406 682.4687 38.95312 682.4687 C 38.82421 682.4687 38.71875 682.5058 38.63476 682.5781 C 38.54882 682.6523 38.46289 682.6874 38.38086 682.6874 C 38.27148 682.6874 38.1914 682.664 38.14062 682.6132 C 38.08593 682.5624 38.06054 682.4882 38.0625 682.3886 C 38.06054 682.2695 38.0957 682.1757 38.16992 682.1054 C 38.24218 682.0351 38.36328 681.9999 38.53125 681.9999 C 38.96679 681.9999 39.29882 682.1562 39.52929 682.4687 C 39.75781 682.7812 39.87304 683.1152 39.875 683.4687 C 39.87304 683.9687 39.74804 684.3398 39.49804 684.5781 C 39.24804 684.8183 38.93554 684.9374 38.5625 684.9374 C 38.31055 684.9374 38.06055 684.8808 37.81055 684.7656 C 37.56055 684.6523 37.32031 684.4687 37.09375 684.2187 C 36.50781 683.6152 36.0332 683.1523 35.66992 682.8281 C 35.30469 682.5058 35.06055 682.3124 34.9375 682.2499 L 34.9375 684.0937 C 34.93555 684.2812 35.00781 684.4374 35.1543 684.5624 C 35.29883 684.6874 35.51953 684.7714 35.8125 684.8124 L 35.8125 684.9999 L 34.46875 684.8124 L 34.46875 681.9062 L 34.875 681.9062 C 35.06054 682.0117 35.29882 682.1835 35.59179 682.4218 C 35.88281 682.662 36.22656 682.9804 36.625 683.3749 C 36.98047 683.7187 37.31641 683.9706 37.63281 684.1328 C 37.94726 684.2949 38.24218 684.3749 38.51953 684.3749 M 38.51953 688.3749 C 38.89453 688.3749 39.18359 688.2929 39.38476 688.1249 C 39.58398 687.9589 39.68554 687.7089 39.6875 687.3749 C 39.68554 687.1249 39.61523 686.912 39.47851 686.7343 C 39.33984 686.5585 39.16406 686.4687 38.95312 686.4687 C 38.82421 686.4687 38.71875 686.5058 38.63476 686.5781 C 38.54882 686.6523 38.46289 686.6874 38.38086 686.6874 C 38.27148 686.6874 38.1914 686.664 38.14062 686.6132 C 38.08593 686.5624 38.06054 686.4882 38.0625 686.3886 C 38.06054 686.2695 38.0957 686.1757 38.16992 686.1054 C 38.24218 686.0351 38.36328 685.9999 38.53125 685.9999 C 38.96679 685.9999 39.29882 686.1562 39.52929 686.4687 C 39.75781 686.7812 39.87304 687.1152 39.875 687.4687 C 39.87304 687.9687 39.74804 688.3398 39.49804 688.5781 C 39.24804 688.8183 38.93554 688.9374 38.5625 688.9374 C 38.31055 688.9374 38.06055 688.8808 37.81055 688.7656 C 37.56055 688.6523 37.32031 688.4687 37.09375 688.2187 C 36.50781 687.6152 36.0332 687.1523 35.66992 686.8281 C 35.30469 686.5058 35.06055 686.3124 34.9375 686.2499 L 34.9375 688.0937 C 34.93555 688.2812 35.00781 688.4374 35.1543 688.5624 C 35.29883 688.6874 35.51953 688.7714 35.8125 688.8124 L 35.8125 688.9999 L 34.46875 688.8124 L 34.46875 685.9062 L 34.875 685.9062 C 35.06054 686.0117 35.29882 686.1835 35.59179 686.4218 C 35.88281 686.662 36.22656 686.9804 36.625 687.3749 C 36.98047 687.7187 37.31641 687.9706 37.63281 688.1328 C 37.94726 688.2949 38.24218 688.3749 38.51953 688.3749 M 38.09375 692.125 C 38.09375 692.418 38.11523 692.8047 38.15625 693.2813 L 39.625 693.125 L 40.03125 692.6563 L 40.65625 693.1875 L 38.1875 693.4375 C 38.25 694.0859 38.35547 694.5957 38.5 694.9688 C 38.95898 694.5547 39.32422 694.1172 39.59375 693.6563 L 40.15625 694.2188 L 39.875 694.25 C 39.48047 694.627 39.08398 695.002 38.6875 695.375 C 39.0625 695.8984 39.5 696.2617 40 696.4688 L 40.4375 694.9688 L 40.5625 695 C 40.52148 695.4805 40.49609 695.877 40.48438 696.1895 C 40.47461 696.502 40.51563 696.7461 40.60938 696.9219 C 40.70313 697.0996 40.625 697.168 40.375 697.125 C 40.125 697.084 39.81836 696.9531 39.45313 696.7344 C 39.08984 696.5156 38.71875 696.168 38.34375 695.6875 C 37.96875 695.9395 37.58984 696.1484 37.20313 696.3145 C 36.81836 696.4805 36.33398 696.6465 35.75 696.8125 L 35.71875 696.6875 C 36.61523 696.3555 37.41797 695.8984 38.125 695.3125 C 37.9375 694.752 37.8125 694.1484 37.75 693.5 L 36.46875 693.6563 L 36.21875 693.7813 L 35.875 693.5313 L 37.71875 693.3438 C 37.69922 693.0547 37.67773 692.6582 37.65625 692.1563 L 36.75 692.2188 L 36.5625 692.3438 L 36.28125 692.0938 L 37.65625 692 C 37.63672 691.2734 37.61523 690.543 37.59375 689.8125 L 38.3125 690.1563 L 38.0625 690.375 C 38.0625 690.8145 38.07422 691.3457 38.09375 691.9688 L 39.4375 691.8438 L 39.84375 691.375 L 40.46875 691.9375 ZM 38.5625 690.3438 L 38.59375 690.25 C 39.24023 690.418 39.60547 690.5801 39.6875 690.7363 C 39.77148 690.8926 39.77148 691.0703 39.6875 691.2676 C 39.60547 691.4668 39.49609 691.4453 39.35938 691.2051 C 39.22461 690.9668 38.95898 690.6797 38.5625 690.3438 ZM 35.125 689.9375 L 35.75 690.3438 C 35.58398 690.4082 35.40625 690.623 35.21875 690.9863 C 35.03125 691.3516 34.6875 691.877 34.1875 692.5625 L 35.46875 692.4375 C 35.71875 692.0234 35.91797 691.6055 36.0625 691.1875 L 36.625 691.5938 C 36.48047 691.6797 36.23047 691.9824 35.875 692.502 C 35.52148 693.0234 35.0625 693.6484 34.5 694.375 C 34.79297 694.3359 35.4375 694.2207 36.4375 694.0313 L 36.4375 694.1563 C 35.875 694.3047 35.4375 694.4355 35.125 694.5488 C 34.8125 694.6641 34.5 694.8242 34.1875 695.0313 L 33.8125 694.375 C 34.04297 694.3145 34.30859 694.0918 34.60938 693.7051 C 34.91211 693.3203 35.17773 692.9395 35.40625 692.5625 C 35.17773 692.6055 34.9375 692.6641 34.6875 692.7363 C 34.4375 692.8105 34.20898 692.9395 34 693.125 L 33.65625 692.5313 C 33.88672 692.4922 34.15234 692.1953 34.45313 691.6426 C 34.75586 691.0918 34.98047 690.5234 35.125 689.9375 ZM 33.625 695.9063 C 34.20898 695.8242 34.67773 695.752 35.03125 695.6895 C 35.38672 695.627 35.95898 695.5117 36.75 695.3438 L 36.78125 695.4688 C 35.84375 695.7422 35.16211 695.9551 34.73438 696.1113 C 34.30859 696.2676 34.04297 696.3965 33.9375 696.5 " /> 
   <text x="127.5" y="125.5" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" stroke="#27fb06" baseline-shift="baseline" transform="matrix(0.98,0,0,0.97,340.428,260.637)" stroke-width="0.25">
     914-7
   </text> 
   <line x1="281.5" y1="325.5" x2="281.5" y2="347.5" stroke="#27fb06" id="line-398" title="迎春915线" /> 
   <line x1="580.5" y1="639" x2="672" y2="639" stroke="#27fb06" stroke-dasharray="3,3" id="line-115" title="棉纺变914线" transform="matrix(1,0,0,1,-1,0)" /> 
   <line x1="643" y1="530" x2="614.5" y2="530" stroke="#27fb06" stroke-dasharray="3,3" id="line-399" title="青山923线" /> 
   <rect x="306.5" y="590" width="38.5" height="50" fill="none" fill-opacity="0" stroke="#27fb06" /> 
   <line x1="1348" y1="584.5" x2="1348" y2="605.5" stroke="#27fb06" id="line-400" title="民主914线" /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" d="M 1431.906 422.0938 L 1431.906 423.4375 L 1436 423.4375 L 1436 422.0938 ZM 1431.906 423.625 L 1431.906 425 L 1434 425 C 1433.938 424.5859 1433.896 424.127 1433.875 423.625 ZM 1436.422 427.7969 C 1436.746 427.9531 1436.943 427.9277 1437.016 427.7207 C 1437.09 427.5137 1437.178 427.1367 1437.281 426.5938 L 1437.406 426.625 C 1437.387 426.9609 1437.381 427.2988 1437.391 427.6426 C 1437.402 427.9863 1437.484 428.2402 1437.641 428.4063 C 1437.797 428.5742 1437.59 428.6094 1437.016 428.5156 C 1436.443 428.4219 1435.875 428.127 1435.313 427.627 C 1434.75 427.127 1434.324 426.3145 1434.031 425.1875 L 1431.906 425.1875 L 1431.906 427.6875 L 1433.75 426.875 L 1433.813 427 C 1432.625 427.7305 1431.938 428.2305 1431.75 428.5 L 1431.313 427.9688 C 1431.438 427.8672 1431.49 427.5957 1431.469 427.1563 L 1431.469 422.8125 C 1431.469 422.3555 1431.459 421.9492 1431.438 421.5938 L 1431.906 421.9063 L 1435.938 421.9063 L 1436.219 421.5625 L 1436.719 422 L 1436.438 422.1875 C 1436.438 423.1055 1436.449 423.6367 1436.469 423.7813 L 1436 424 L 1436 423.625 L 1434.313 423.625 C 1434.334 424.127 1434.375 424.5859 1434.438 425 L 1436.594 425 L 1437.031 424.5625 L 1437.656 425.1875 L 1434.469 425.1875 C 1434.678 425.9609 1434.975 426.5488 1435.359 426.9551 C 1435.746 427.3613 1436.1 427.6426 1436.422 427.7969 M 1433.281 429.5 C 1433.844 429.793 1434.24 430.0449 1434.469 430.252 C 1434.699 430.4609 1434.719 430.6953 1434.531 430.9551 C 1434.344 431.2168 1434.199 431.1855 1434.094 430.8613 C 1433.99 430.5391 1433.699 430.1172 1433.219 429.5938 ZM 1431.063 431.2813 L 1436.344 431.2813 L 1436.813 430.8125 L 1437.469 431.4688 L 1434.438 431.4688 L 1434.438 433.5 L 1435.875 433.5 L 1436.313 433.0625 L 1436.938 433.6875 L 1434.438 433.6875 L 1434.438 436 L 1436.594 436 L 1437.094 435.5 L 1437.781 436.1875 L 1431.625 436.1875 C 1431.355 436.1875 1431.105 436.2188 1430.875 436.2813 L 1430.594 436 L 1433.969 436 L 1433.969 433.7188 L 1432.594 433.7188 C 1432.324 433.7207 1432.074 433.752 1431.844 433.8125 L 1431.563 433.5313 L 1433.969 433.5313 L 1433.969 431.4688 L 1432.094 431.4688 C 1431.824 431.4707 1431.574 431.502 1431.344 431.5625 M 1435.187 437.8437 C 1434.726 437.8437 1434.377 437.9355 1434.139 438.1172 C 1433.898 438.3008 1433.779 438.5312 1433.781 438.8086 C 1433.779 439.1308 1433.924 439.4101 1434.217 439.6465 C 1434.508 439.8828 1434.779 440 1435.031 440 C 1435.529 440 1435.93 439.914 1436.232 439.7422 C 1436.533 439.5703 1436.685 439.291 1436.687 438.9043 C 1436.685 438.541 1436.545 438.2734 1436.264 438.1015 C 1435.982 437.9297 1435.623 437.8437 1435.187 437.8437 ZM 1433.469 438.7343 C 1433.467 438.3125 1433.596 437.9765 1433.857 437.7226 C 1434.117 437.4707 1434.539 437.3437 1435.125 437.3437 C 1435.623 437.3437 1436.039 437.4804 1436.373 437.75 C 1436.705 438.0215 1436.873 438.4062 1436.875 438.9062 C 1436.873 439.4277 1436.664 439.834 1436.248 440.125 C 1435.83 440.4179 1435.227 440.5625 1434.438 440.5625 C 1433.561 440.5625 1432.836 440.3906 1432.264 440.0468 C 1431.689 439.7031 1431.404 439.2304 1431.406 438.625 C 1431.404 438.3554 1431.467 438.1211 1431.592 437.9218 C 1431.717 437.7246 1431.883 437.625 1432.094 437.625 C 1432.176 437.625 1432.258 437.6504 1432.342 437.6992 C 1432.424 437.75 1432.467 437.834 1432.469 437.9511 C 1432.467 438.0722 1432.418 438.1523 1432.32 438.1914 C 1432.223 438.2304 1432.109 438.25 1431.982 438.25 C 1431.893 438.25 1431.822 438.2617 1431.77 438.2832 C 1431.715 438.3047 1431.678 438.3261 1431.658 438.3457 C 1431.635 438.3691 1431.617 438.4062 1431.607 438.4609 C 1431.596 438.5156 1431.592 438.5742 1431.594 438.6386 C 1431.592 439.0273 1431.803 439.3398 1432.225 439.5781 C 1432.645 439.8164 1433.352 439.957 1434.344 440 C 1434.092 439.8945 1433.883 439.7363 1433.717 439.5254 C 1433.549 439.3144 1433.467 439.0508 1433.469 438.7343 M 1436.875 443.2812 L 1432.152 443.2812 C 1431.984 443.2812 1431.861 443.334 1431.779 443.4375 C 1431.695 443.5429 1431.654 443.6875 1431.656 443.875 L 1431.656 444.1875 L 1431.469 444.1875 L 1431.469 441.9062 L 1431.656 441.9062 L 1431.656 442.1875 C 1431.654 442.3965 1431.695 442.5468 1431.779 442.6406 C 1431.861 442.7343 1431.984 442.7812 1432.152 442.7812 L 1435.908 442.7812 C 1435.988 442.7812 1436.055 442.7558 1436.107 442.7031 C 1436.158 442.6523 1436.185 442.5742 1436.187 442.4687 L 1436.187 441.9062 L 1436.375 441.9062 L 1436.375 442.1875 C 1436.373 442.4375 1436.414 442.6406 1436.498 442.7968 C 1436.58 442.9531 1436.707 443.0742 1436.875 443.1562 M 1432.063 447.875 C 1431.914 447.875 1431.811 447.9179 1431.748 448 C 1431.686 448.084 1431.654 448.1992 1431.656 448.3437 L 1431.656 448.625 L 1431.469 448.625 L 1431.469 446.5625 L 1431.656 446.5625 L 1431.656 446.9062 C 1431.654 447.0742 1431.686 447.1933 1431.748 447.2656 C 1431.811 447.3398 1431.914 447.375 1432.063 447.375 L 1433.094 447.375 L 1433.094 445.2812 L 1433.25 445.2812 L 1436.875 447.5625 L 1436.875 447.875 L 1433.281 447.875 L 1433.281 448.7187 L 1433.094 448.7187 L 1433.094 447.875 ZM 1436.094 447.3437 L 1433.281 445.5625 L 1433.281 447.375 M 1435.094 451.625 C 1435.094 451.918 1435.115 452.3047 1435.156 452.7813 L 1436.625 452.625 L 1437.031 452.1563 L 1437.656 452.6875 L 1435.188 452.9375 C 1435.25 453.5859 1435.355 454.0957 1435.5 454.4688 C 1435.959 454.0547 1436.324 453.6172 1436.594 453.1563 L 1437.156 453.7188 L 1436.875 453.75 C 1436.48 454.127 1436.084 454.502 1435.688 454.875 C 1436.063 455.3984 1436.5 455.7617 1437 455.9688 L 1437.438 454.4688 L 1437.563 454.5 C 1437.521 454.9805 1437.496 455.377 1437.484 455.6895 C 1437.475 456.002 1437.516 456.2461 1437.609 456.4219 C 1437.703 456.5996 1437.625 456.668 1437.375 456.625 C 1437.125 456.584 1436.818 456.4531 1436.453 456.2344 C 1436.09 456.0156 1435.719 455.668 1435.344 455.1875 C 1434.969 455.4395 1434.59 455.6484 1434.203 455.8145 C 1433.818 455.9805 1433.334 456.1465 1432.75 456.3125 L 1432.719 456.1875 C 1433.615 455.8555 1434.418 455.3984 1435.125 454.8125 C 1434.938 454.252 1434.813 453.6484 1434.75 453 L 1433.469 453.1563 L 1433.219 453.2813 L 1432.875 453.0313 L 1434.719 452.8438 C 1434.699 452.5547 1434.678 452.1582 1434.656 451.6563 L 1433.75 451.7188 L 1433.563 451.8438 L 1433.281 451.5938 L 1434.656 451.5 C 1434.637 450.7734 1434.615 450.043 1434.594 449.3125 L 1435.313 449.6563 L 1435.063 449.875 C 1435.063 450.3145 1435.074 450.8457 1435.094 451.4688 L 1436.438 451.3438 L 1436.844 450.875 L 1437.469 451.4375 ZM 1435.563 449.8438 L 1435.594 449.75 C 1436.24 449.918 1436.605 450.0801 1436.688 450.2363 C 1436.771 450.3926 1436.771 450.5703 1436.688 450.7676 C 1436.605 450.9668 1436.496 450.9453 1436.359 450.7051 C 1436.225 450.4668 1435.959 450.1797 1435.563 449.8438 ZM 1432.125 449.4375 L 1432.75 449.8438 C 1432.584 449.9082 1432.406 450.123 1432.219 450.4863 C 1432.031 450.8516 1431.688 451.377 1431.188 452.0625 L 1432.469 451.9375 C 1432.719 451.5234 1432.918 451.1055 1433.063 450.6875 L 1433.625 451.0938 C 1433.48 451.1797 1433.23 451.4824 1432.875 452.002 C 1432.521 452.5234 1432.063 453.1484 1431.5 453.875 C 1431.793 453.8359 1432.438 453.7207 1433.438 453.5313 L 1433.438 453.6563 C 1432.875 453.8047 1432.438 453.9355 1432.125 454.0488 C 1431.813 454.1641 1431.5 454.3242 1431.188 454.5313 L 1430.813 453.875 C 1431.043 453.8145 1431.309 453.5918 1431.609 453.2051 C 1431.912 452.8203 1432.178 452.4395 1432.406 452.0625 C 1432.178 452.1055 1431.938 452.1641 1431.688 452.2363 C 1431.438 452.3105 1431.209 452.4395 1431 452.625 L 1430.656 452.0313 C 1430.887 451.9922 1431.152 451.6953 1431.453 451.1426 C 1431.756 450.5918 1431.98 450.0234 1432.125 449.4375 ZM 1430.625 455.4063 C 1431.209 455.3242 1431.678 455.252 1432.031 455.1895 C 1432.387 455.127 1432.959 455.0117 1433.75 454.8438 L 1433.781 454.9688 C 1432.844 455.2422 1432.162 455.4551 1431.734 455.6113 C 1431.309 455.7676 1431.043 455.8965 1430.938 456 " transform="matrix(1,0,0,1,16,14.5)" /> 
   <path fill="#27fb06" stroke="#27fb06" stroke-width="0.25" d="M 1431.906 422.0938 L 1431.906 423.4375 L 1436 423.4375 L 1436 422.0938 ZM 1431.906 423.625 L 1431.906 425 L 1434 425 C 1433.938 424.5859 1433.896 424.127 1433.875 423.625 ZM 1436.422 427.7969 C 1436.746 427.9531 1436.943 427.9277 1437.016 427.7207 C 1437.09 427.5137 1437.178 427.1367 1437.281 426.5938 L 1437.406 426.625 C 1437.387 426.9609 1437.381 427.2988 1437.391 427.6426 C 1437.402 427.9863 1437.484 428.2402 1437.641 428.4063 C 1437.797 428.5742 1437.59 428.6094 1437.016 428.5156 C 1436.443 428.4219 1435.875 428.127 1435.313 427.627 C 1434.75 427.127 1434.324 426.3145 1434.031 425.1875 L 1431.906 425.1875 L 1431.906 427.6875 L 1433.75 426.875 L 1433.813 427 C 1432.625 427.7305 1431.938 428.2305 1431.75 428.5 L 1431.313 427.9688 C 1431.438 427.8672 1431.49 427.5957 1431.469 427.1563 L 1431.469 422.8125 C 1431.469 422.3555 1431.459 421.9492 1431.438 421.5938 L 1431.906 421.9063 L 1435.938 421.9063 L 1436.219 421.5625 L 1436.719 422 L 1436.438 422.1875 C 1436.438 423.1055 1436.449 423.6367 1436.469 423.7813 L 1436 424 L 1436 423.625 L 1434.313 423.625 C 1434.334 424.127 1434.375 424.5859 1434.438 425 L 1436.594 425 L 1437.031 424.5625 L 1437.656 425.1875 L 1434.469 425.1875 C 1434.678 425.9609 1434.975 426.5488 1435.359 426.9551 C 1435.746 427.3613 1436.1 427.6426 1436.422 427.7969 M 1433.281 429.5 C 1433.844 429.793 1434.24 430.0449 1434.469 430.252 C 1434.699 430.4609 1434.719 430.6953 1434.531 430.9551 C 1434.344 431.2168 1434.199 431.1855 1434.094 430.8613 C 1433.99 430.5391 1433.699 430.1172 1433.219 429.5938 ZM 1431.063 431.2813 L 1436.344 431.2813 L 1436.813 430.8125 L 1437.469 431.4688 L 1434.438 431.4688 L 1434.438 433.5 L 1435.875 433.5 L 1436.313 433.0625 L 1436.938 433.6875 L 1434.438 433.6875 L 1434.438 436 L 1436.594 436 L 1437.094 435.5 L 1437.781 436.1875 L 1431.625 436.1875 C 1431.355 436.1875 1431.105 436.2188 1430.875 436.2813 L 1430.594 436 L 1433.969 436 L 1433.969 433.7188 L 1432.594 433.7188 C 1432.324 433.7207 1432.074 433.752 1431.844 433.8125 L 1431.563 433.5313 L 1433.969 433.5313 L 1433.969 431.4688 L 1432.094 431.4688 C 1431.824 431.4707 1431.574 431.502 1431.344 431.5625 M 1435.187 437.8437 C 1434.726 437.8437 1434.377 437.9355 1434.139 438.1172 C 1433.898 438.3008 1433.779 438.5312 1433.781 438.8086 C 1433.779 439.1308 1433.924 439.4101 1434.217 439.6465 C 1434.508 439.8828 1434.779 440 1435.031 440 C 1435.529 440 1435.93 439.914 1436.232 439.7422 C 1436.533 439.5703 1436.685 439.291 1436.687 438.9043 C 1436.685 438.541 1436.545 438.2734 1436.264 438.1015 C 1435.982 437.9297 1435.623 437.8437 1435.187 437.8437 ZM 1433.469 438.7343 C 1433.467 438.3125 1433.596 437.9765 1433.857 437.7226 C 1434.117 437.4707 1434.539 437.3437 1435.125 437.3437 C 1435.623 437.3437 1436.039 437.4804 1436.373 437.75 C 1436.705 438.0215 1436.873 438.4062 1436.875 438.9062 C 1436.873 439.4277 1436.664 439.834 1436.248 440.125 C 1435.83 440.4179 1435.227 440.5625 1434.438 440.5625 C 1433.561 440.5625 1432.836 440.3906 1432.264 440.0468 C 1431.689 439.7031 1431.404 439.2304 1431.406 438.625 C 1431.404 438.3554 1431.467 438.1211 1431.592 437.9218 C 1431.717 437.7246 1431.883 437.625 1432.094 437.625 C 1432.176 437.625 1432.258 437.6504 1432.342 437.6992 C 1432.424 437.75 1432.467 437.834 1432.469 437.9511 C 1432.467 438.0722 1432.418 438.1523 1432.32 438.1914 C 1432.223 438.2304 1432.109 438.25 1431.982 438.25 C 1431.893 438.25 1431.822 438.2617 1431.77 438.2832 C 1431.715 438.3047 1431.678 438.3261 1431.658 438.3457 C 1431.635 438.3691 1431.617 438.4062 1431.607 438.4609 C 1431.596 438.5156 1431.592 438.5742 1431.594 438.6386 C 1431.592 439.0273 1431.803 439.3398 1432.225 439.5781 C 1432.645 439.8164 1433.352 439.957 1434.344 440 C 1434.092 439.8945 1433.883 439.7363 1433.717 439.5254 C 1433.549 439.3144 1433.467 439.0508 1433.469 438.7343 M 1436.875 443.2812 L 1432.152 443.2812 C 1431.984 443.2812 1431.861 443.334 1431.779 443.4375 C 1431.695 443.5429 1431.654 443.6875 1431.656 443.875 L 1431.656 444.1875 L 1431.469 444.1875 L 1431.469 441.9062 L 1431.656 441.9062 L 1431.656 442.1875 C 1431.654 442.3965 1431.695 442.5468 1431.779 442.6406 C 1431.861 442.7343 1431.984 442.7812 1432.152 442.7812 L 1435.908 442.7812 C 1435.988 442.7812 1436.055 442.7558 1436.107 442.7031 C 1436.158 442.6523 1436.185 442.5742 1436.187 442.4687 L 1436.187 441.9062 L 1436.375 441.9062 L 1436.375 442.1875 C 1436.373 442.4375 1436.414 442.6406 1436.498 442.7968 C 1436.58 442.9531 1436.707 443.0742 1436.875 443.1562 M 1432.063 447.875 C 1431.914 447.875 1431.811 447.9179 1431.748 448 C 1431.686 448.084 1431.654 448.1992 1431.656 448.3437 L 1431.656 448.625 L 1431.469 448.625 L 1431.469 446.5625 L 1431.656 446.5625 L 1431.656 446.9062 C 1431.654 447.0742 1431.686 447.1933 1431.748 447.2656 C 1431.811 447.3398 1431.914 447.375 1432.063 447.375 L 1433.094 447.375 L 1433.094 445.2812 L 1433.25 445.2812 L 1436.875 447.5625 L 1436.875 447.875 L 1433.281 447.875 L 1433.281 448.7187 L 1433.094 448.7187 L 1433.094 447.875 ZM 1436.094 447.3437 L 1433.281 445.5625 L 1433.281 447.375 M 1435.094 451.625 C 1435.094 451.918 1435.115 452.3047 1435.156 452.7813 L 1436.625 452.625 L 1437.031 452.1563 L 1437.656 452.6875 L 1435.188 452.9375 C 1435.25 453.5859 1435.355 454.0957 1435.5 454.4688 C 1435.959 454.0547 1436.324 453.6172 1436.594 453.1563 L 1437.156 453.7188 L 1436.875 453.75 C 1436.48 454.127 1436.084 454.502 1435.688 454.875 C 1436.063 455.3984 1436.5 455.7617 1437 455.9688 L 1437.438 454.4688 L 1437.563 454.5 C 1437.521 454.9805 1437.496 455.377 1437.484 455.6895 C 1437.475 456.002 1437.516 456.2461 1437.609 456.4219 C 1437.703 456.5996 1437.625 456.668 1437.375 456.625 C 1437.125 456.584 1436.818 456.4531 1436.453 456.2344 C 1436.09 456.0156 1435.719 455.668 1435.344 455.1875 C 1434.969 455.4395 1434.59 455.6484 1434.203 455.8145 C 1433.818 455.9805 1433.334 456.1465 1432.75 456.3125 L 1432.719 456.1875 C 1433.615 455.8555 1434.418 455.3984 1435.125 454.8125 C 1434.938 454.252 1434.813 453.6484 1434.75 453 L 1433.469 453.1563 L 1433.219 453.2813 L 1432.875 453.0313 L 1434.719 452.8438 C 1434.699 452.5547 1434.678 452.1582 1434.656 451.6563 L 1433.75 451.7188 L 1433.563 451.8438 L 1433.281 451.5938 L 1434.656 451.5 C 1434.637 450.7734 1434.615 450.043 1434.594 449.3125 L 1435.313 449.6563 L 1435.063 449.875 C 1435.063 450.3145 1435.074 450.8457 1435.094 451.4688 L 1436.438 451.3438 L 1436.844 450.875 L 1437.469 451.4375 ZM 1435.563 449.8438 L 1435.594 449.75 C 1436.24 449.918 1436.605 450.0801 1436.688 450.2363 C 1436.771 450.3926 1436.771 450.5703 1436.688 450.7676 C 1436.605 450.9668 1436.496 450.9453 1436.359 450.7051 C 1436.225 450.4668 1435.959 450.1797 1435.563 449.8438 ZM 1432.125 449.4375 L 1432.75 449.8438 C 1432.584 449.9082 1432.406 450.123 1432.219 450.4863 C 1432.031 450.8516 1431.688 451.377 1431.188 452.0625 L 1432.469 451.9375 C 1432.719 451.5234 1432.918 451.1055 1433.063 450.6875 L 1433.625 451.0938 C 1433.48 451.1797 1433.23 451.4824 1432.875 452.002 C 1432.521 452.5234 1432.063 453.1484 1431.5 453.875 C 1431.793 453.8359 1432.438 453.7207 1433.438 453.5313 L 1433.438 453.6563 C 1432.875 453.8047 1432.438 453.9355 1432.125 454.0488 C 1431.813 454.1641 1431.5 454.3242 1431.188 454.5313 L 1430.813 453.875 C 1431.043 453.8145 1431.309 453.5918 1431.609 453.2051 C 1431.912 452.8203 1432.178 452.4395 1432.406 452.0625 C 1432.178 452.1055 1431.938 452.1641 1431.688 452.2363 C 1431.438 452.3105 1431.209 452.4395 1431 452.625 L 1430.656 452.0313 C 1430.887 451.9922 1431.152 451.6953 1431.453 451.1426 C 1431.756 450.5918 1431.98 450.0234 1432.125 449.4375 ZM 1430.625 455.4063 C 1431.209 455.3242 1431.678 455.252 1432.031 455.1895 C 1432.387 455.127 1432.959 455.0117 1433.75 454.8438 L 1433.781 454.9688 C 1432.844 455.2422 1432.162 455.4551 1431.734 455.6113 C 1431.309 455.7676 1431.043 455.8965 1430.938 456 " transform="matrix(1,0,0,1,-83.5,71.5)" /> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-93.135,-6.203)">
     941-7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-94.635,14.797)">
     934-7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-93.135,38.297)">
     933-7
   </text> 
   <text x="881.9999" y="145.3333" xml:space="preserve" font-family="宋体" font-size="8" fill="#27fb06" fill-opacity="1" stroke="#27fb06" stroke-width="0.25" baseline-shift="baseline" transform="matrix(0.868,0,0,0.97,-46.135,-3.703)">
     943-7
   </text> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/wd_close.gif" transform="matrix(2.279,0,0,2.724,417.785,335.062)" id="WDKBZ" title="WDKBZ" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" /> 
   <image x="40.5" y="93.5" width="20" height="15" xlink:href="/images/yj_close.gif" transform="matrix(3.344,0,0,2.005,788.949,37.196)" id="YJBDZ" title="YJBDZ" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" />
 	<image x="50" y="50" width="48" height="25" xlink:href="images/NPB_GREEN.png" id="ST_NPB" title="南排变" transform="matrix(1,0,0,1,22,340.5)" />
	<image width="25" height="60" xlink:href="images/ZXB_GREEN.png" id="ST_ZXB" title="中心变" transform="matrix(1,0,0,1.312,65.5,495.582)" />
	<image x="0" y="0" width="50" height="25" xlink:href="images/ST_GREEN.png" id="ST_BZB" title="北重变" transform="matrix(1,0,0,1,464,249)" />
	<image width="25" height="60" xlink:href="images/QBB_GREEN.png" id="ST_QBB" title="青北变" transform="matrix(1,0,0,1,703.5,131.5)" />
	<image width="25" height="60" xlink:href="images/YHB_GREEN.png" id="ST_YHB" title="永和变" transform="matrix(1,0,0,1,997,174)" />
	<image width="30" height="60" xlink:href="images/QYB_GREEN.png" id="ST_QYB" title="青园变" transform="matrix(0.9999999,0,0,1.038,1447,244.189)" />
	<image width="25" height="60" xlink:href="images/MZB_GREEN.png" id="ST_MZB" title="民主变" transform="matrix(1,0,0,1,1181.5,383)" />
	<image width="25" height="60" xlink:href="images/XFB_GREEN.png" id="ST_XFB" title="幸福变" transform="matrix(1,0,0,1,804.833,815)" />
	<image width="60" height="45" xlink:href="images/MFB_GREEN.png" transform="matrix(1.05,0,0,0.9999999,632.2249,584.4999)" id="ST_MFB" title="棉纺变" />
	<image width="25" height="60" xlink:href="images/QCB_GREEN.png" id="ST_YCB" title="迎春变" transform="matrix(1.13,0,0,1.09,440.935,385.295)" />
	<image width="50" height="26" xlink:href="images/QSB_GREEN.png" id="ST_QSB" title="青山变" transform="matrix(1.05,0,0,1.12,1076.725,611.8099)" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" />
	<image width="60" height="26" xlink:href="images/CQB_GREEN.png" id="ST_CQB" title="厂前变" transform="matrix(1.279,0,0,1,755.638,235)" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" />

  </svg>
  </div>
 </div>
 
  <div id="msgWin" class="easy-dialog"  shadow=true resizable=true title="发布通知" style="width:510px;height:290px;padding:10px;background:#fafafa;"
collapsible:true,minimizable:true,maximizable:true">
<textarea id="text" cols=55 rows=7  name="notice" ></textarea>
</div> 

<div id="selectWin" class="easy-dialog"  shadow=true resizable=true title="选择状态" style="width:250px;height:320px;padding:10px;background:#fafafa;collapsible:true;minimizable:true;maximizable:true">
	<div class="middle" id="radios" style="margin-left:50px;margin-top: 20px ">
		<input type="radio" name="status" value="1" checked   >&nbsp;正常<br><br>
		<input type="radio" name="status" value="2"  >&nbsp;断开<br><br>
		<input type="radio" name="status" value="3"  >&nbsp;备用<br><br>
		<input type="radio" name="status" value="4"  >&nbsp;闲置<br><br>
	</div>
	<br><br>
</div>

<div class="search-box" id="search-box" style="display:none">
 	<div class="logo"></div>
	<div id="search_tab" class="search-tab">
 		<ul id="tab" class="tab" >
 			<li id="tab_1" >开关</li>
 			<li id="tab_2" >线路</li>
 		</ul>
 	</div>
	 	<form class="search-form" action="https://cn.bing.com/search" target="_blank" id="search-form">
	 		<input type="text" class="search-text" name="q" id="search_input" autocomplete="off" value=""/>
	 		<input type="submit" class="search-button" value=""/>
	 	</form>
</div>

 <div class="suggest" id="search-suggest" style="display:none">
	<ul id="search-result">
	</ul>
</div>


<script type="text/javascript">
var isClick=false;
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

});
$('#tab_2').click(function() {
	$('#tab_2').show();
	$('#tab_1').hide();
	$('#tab').height(42);
});
/* paper.mouseout(function(event) {
	jQuery("#cableDiagram").css("cursor", "auto");
});
addEvent('tab','mouseover',function(){
	this.className+=' trigger-hover';
}); */
/* jQuery(function(){
	//$('#hidden_enent').hide();
	$('#tab').mouseover(function(event) {
		alert("ssd");
		this.className+=' trigger-hover';
	});
});  */

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
	$.get('/circuit/getSwitchByKeyword.do?keyword='+searchText,function(d){
		//alert($("#search-box").position().left);
		//var d=d.result;
		var html='';
		for(var i=0;i<d.length;i++){
			html+="<li>"+d[i].id+"</li>";
		}
		$('#search-result').html(html);
		//$('#search-suggest').show();
		$('#search-suggest').show().css({
			
			// top:$("#search-box").css('top')+$('#search-box').height()+10,
			//left:$('#search-box').css('left'), 
			//position:'absolute'
		}); 
	});
 });

$("#search-result").bind('click',function(){
	$('#search-suggest').hide();
	//$('#search-box').hide();
	
	
});

$("#search-result").delegate('li','click',function(){
	$('#search_input').val($(this).html());
});



var isFind=false;
var findedButton;
function cancel(){
	$("#selectWin").dialog('close');
}
function certain(){
	//alert($("input[name='status']:checked").val());
	var imageUri = jQuery(image).attr("xlink:href");
		jQuery(image).attr("xlink:href",imageUri.replace('GREEN','RED'));
		
		var arr = jQuery(image).attr("id").split("_");
		var id = arr[1];
		//alert(id);
		var lines = getLinesBySwitchId(id,true);
		for(var i=0;i<lines.length;i++){
			jQuery("line[id='line-"+lines[i]+"']").attr("stroke",Colors.open);
		}
}
var ary = new Array();//定义一个存储历史查询结果数组
var  index=0;

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
	$('#msgWin').dialog({
		toolbar:[{
			text:'新增',
			iconCls:'icon-add',
			handler:function(){
				
				$("#text").val("");
			}
		}],
	
	buttons:[{
		text:'确定',
		iconCls:'icon-ok',
		handler:function(){
			var message =$("#text").val();
			$.post("/message/sendMessage.do", {"message" : message},function(result){
				alert("发布成功！");
			} ,"JSON");
		
		}
	},{
		text:'取消',
		iconCls:'icon-cancel',
		handler:function(){$("#text").val("");}
	}
	]

	});

}
function find(){
	//document.getElementById("search-box").style.display="";//显
	//$('#search-suggest').show();
	$('#search-result').show();
	$('#search-box').show();
	oMask();
		/* //遍历数组，将所有以前的搜索结果的text标签颜色改回黑色
		for(var i =0; i<ary.length; i++){
			$(ary[i]).attr("stroke", "#000000");
			$(ary[i]).attr("fill", "#000000");
		}
		var isExist=false;
		var isLight=false;
		//获取查找输入框的值
		var er=$("#inputText").val();
		if(er=="")
		{
			$.messager.alert('提示信息','请输入开关ID');
		}
		else if(er.length<3)
		{
			$.messager.alert('提示信息','您输入正确的开关ID！');
		}
		else{
			$("text").each(function () {
			//查找开关的text，改成绿色jquery.trim($(this).html())     
				if ($(this).html().trim()==er) {
					ary.push($(this));
					$(this).attr("stroke", "#FF6600");
					$(this).attr("fill", "#FF6600");
					isExist=true;
				}
			});
			
			var normalImg = document.getElementById("switch-"+er);
			findedButton=normalImg;
			//已经搜索到开关
			isFind=true;
				interval = setInterval(function() {
					if (isLight) {
						
						normalImg.setAttribute("xlink:href","/images/switch_close.gif");
						isLight = false;
					} else {
						normalImg.setAttribute("xlink:href","/images/switch_open.gif");
						isLight = true;
					}
				}, 200);
			
			if(isExist)
			{
						//当查找到开关后，使svg显示在正中央
				if(jQuery("svg>image[id^=switch-"+er+"]").size()>0)
				{
					
					var x=Number(jQuery("svg>image[id^=switch-"+er+"]").attr("x")),y=Number(jQuery("svg>image[id^=switch-"+er+"]").attr("y"));
					var ctm=jQuery("svg>image[id^=switch-"+er+"]")[0].getCTM();
					var curX=x*ctm.a+y*ctm.c+ctm.e,curY=x*ctm.b+y*ctm.d+ctm.f;			
					$("svg").width(1599*3).height(899*3);
					$("#container").css("left",$("#outDiv").width()/2-curX-x);
					$("#container").css("top",$("#outDiv").height()/2-curY-y);
					
					$("#container").width($("#container").width()*2);
					$("#container").height($("#container").height()*2);
					
				}
			}
			else{
				$.messager.alert('提示信息','您输入的开关ID没有找到！');
			}
		} */
}




//开关元素绑定单击事件
/*
  27fb06　绿色
  fffe01 黄色　备用
*/

var Colors = {
close:'#27fb06',
open:'red',
hot:'blue',
reserve:'#fffe01'};

var StatusArr = new Array("GREEN", "RED", "BLUE", "YELLOW");
var SwitchArr = new Array("close", "open", "xianzhi", "beiyong");

//变电站设置点击事件
jQuery("svg>image[id^=ST_]").each(function(){
	
	
    var image = this;
   	jQuery(image).bind("click",function(){
   		$('#selectWin').dialog({
   		buttons:[{
   			text:'确定',
   			iconCls:'icon-ok',
   			handler:function(){
   				//1:正常  2：断开  3：备用   4：闲置
   				var status=$("input[name='status']:checked").val();
   				var imageUri = jQuery(image).attr("xlink:href");
   				var arrXlink = jQuery(image).attr("xlink:href").split("_");
   		   		var arrColor = arrXlink[1].split(".");
   		   		var oldColor = arrColor[0];
   		   		var newColor=StatusArr[status-1];
   				jQuery(image).attr("xlink:href",imageUri.replace(oldColor,newColor));
   		   		var arrId = jQuery(image).attr("id").split("_");
   		   		var id = arrId[1];
   		   		var lines = getLinesBySwitchId(id,status);
   		   		for(var i=0;i<lines.length;i++){
   						jQuery("line[id='line-"+lines[i]+"']").attr("stroke",newColor.toLowerCase());
   				}
   		   	$("#selectWin").dialog('close');
   			}
   		},{
   			text:'取消',
   			iconCls:'icon-cancel',
   			handler:function(){$("#text").val("");}
   		}
   		]

   		});

	}); 
});

jQuery("svg>image[id^=switch]").each(function(){
    var image = this;
   	jQuery(image).bind("click",function(){
   		
   		$('#selectWin').dialog({
   	   		buttons:[{
   	   			text:'确定',
   	   			iconCls:'icon-ok',
   	   			handler:function(){
   	   				//1:正常  2：断开  3：备用   4：闲置
   	   				var status=$("input[name='status']:checked").val();
   	   				/* var imageUri = jQuery(image).attr("xlink:href");
   	   				var arrXlink = jQuery(image).attr("xlink:href").split("_");
   	   		   		var arrColor = arrXlink[1].split(".");
   	   		   		var oldColor = arrColor[0];
   	   		   		var newColor=StatusArr[status-1];
   	   				jQuery(image).attr("xlink:href",imageUri.replace(oldColor,newColor));
   	   		   		var arrId = jQuery(image).attr("id").split("_");
   	   		   		var id = arrId[1];
   	   		   		var lines = getLinesBySwitchId(id,status);
   	   		   		for(var i=0;i<lines.length;i++){
   	   						jQuery("line[id='line-"+lines[i]+"']").attr("stroke",newColor.toLowerCase());
   	   				} */
   	   				
   	   		//得到开关id
   	   	   		var arr = jQuery(image).attr("id").split("-");
   	   	   		var id = arr.length>1 ? arr[1] : "";
   	   	   		if(id.length>0){
   	   	   			//设置状态
   	   	    		var imageUri = jQuery(image).attr("xlink:href");
   					var arrXlink = jQuery(image).attr("xlink:href").split("_");
   		   			var arrColor = arrXlink[1].split(".");
   		   			var oldColor = arrColor[0];
   		   			var newColor=SwitchArr[status-1];
   	   	   			var lines = getLinesBySwitchId(id,status);
   	   	   			jQuery(image).attr("xlink:href",imageUri.replace(oldColor,newColor));
   	   	   			/* jQuery(image).attr("xlink:href",imageUri.replace('open','close'));
   	   	   			if(lines != null){
   	   	   				if(isOpened){
   	   	   			   		jQuery(image).attr("xlink:href",imageUri.replace('open','close'));
   	   	   			   		color = Colors.close; */
   	   	   			   		//alert(newColor);
   	   	   			for(var i=0;i<lines.length;i++){
   						jQuery("line[id='line-"+lines[i]+"']").attr("stroke",StatusArr[status-1].toLowerCase());
   					} 		
   	   	   			   		
   	   	   			
   	   	   		}
   	   				
   	   				
   	   				
   	   		   	$("#selectWin").dialog('close');
   	   			}
   	   		},{
   	   			text:'取消',
   	   			iconCls:'icon-cancel',
   	   			handler:function(){$("#text").val("");}
   	   		}
   	   		]

   	   		});
   		
   		
	});
});

//根据一个开关id得到该开关影响的线路id集合
function getLinesBySwitchId(switchId,status){
	var lines = null;
	jQuery.ajax({
		url:"/circuit/getLinesBySwitchId.do",
		data:{switchId:switchId,status:status},
		type:"post",
		async:false,
		success:function(data){
			
			if(data.oc > 0){
				lines = data.lines;
			}else if(data.oc<0){
				jQuery.messager.alert('系统提示',data.tip,'error');
			}
		}
	});
	return lines;
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
   			if(map != null){
   				var lines = map.lines;
   				if(lines !=null){
   					for(var i=0;i<lines.length;i++){
   						var line = lines[i];
   						if(line.status==4){//表示电线上有电
   							jQuery("#line-"+line.id).attr("stroke",Colors.close);
   						}else if(line.status==5){//表示电线上没电
   					    	jQuery("#line-"+line.id).attr("stroke",Colors.open);
   						}
   						else if(line.status==6){//表示电线上没电
   					    	jQuery("#line-"+line.id).attr("stroke",Colors.hot);
   						}
   						else if(line.status==7){//表示电线上没电
   					    	jQuery("#line-"+line.id).attr("stroke",Colors.reserve);
   						}
   					}
   				}
   				var switchs = map.switchs;
   				if(switchs != null){
   					
   					for(var i=0;i<switchs.length;i++){
   						var s = switchs[i];
   						//alert(s.type);
   						
   						if(s.type==4)
   	   					{
   							
   							 var stationImg=jQuery("svg>image[id=ST_"+s.id+"]")
   							var imageUri=stationImg.attr("xlink:href");
   			   				var arrXlink = stationImg.attr("xlink:href").split("_");
   			   		   		var arrColor = arrXlink[1].split(".");
   			   		   		var oldColor = arrColor[0];
   			   		   		
   							if(s.status==11){
   								//alert(11+s.id);
   								stationImg.attr("xlink:href",imageUri.replace(oldColor,'GREEN'));
   	   						}else if(s.status==10){
   	   						//alert(10+s.id);
   	   						stationImg.attr("xlink:href",imageUri.replace(oldColor,"RED"));
   	   						}
   	   						else if(s.status==12){
   	   						//alert(12+s.id);
   	   						stationImg.attr("xlink:href",imageUri.replace(oldColor,"BLUE"));
   	   						alert(12+s.id);
	   						}
   	   						else if(s.status==13){
   	   						//alert(13+s.id);
   	   						stationImg.attr("xlink:href",imageUri.replace(oldColor,"YELLOW"));
  						} 
   	   					}
   	   					else
   	   					{
   	   					 var href=stationImg.attr("xlink:href");
   	   					  var normalImg = document.getElementById("switch-"+s.id);
   	   					if(s.status==11){
   	   						
   	   					alert(11+s.id);
   	   					normalImg.setAttribute("xlink:href",href.replace("open","close"));
   						}else if(s.status==10){
   							//alert(10+s.id);
   							normalImg.setAttribute("xlink:href",href.replace("close","open"));
   						} 
   						 else if(s.status==12){
   							//alert(12+s.id);
   							normalImg.setAttribute("xlink:href",href.replace("close","xianzhi"));
   						} 
   						else if(s.status==13){
   							//alert(13+s.id);
   							normalImg.setAttribute("xlink:href",href.replace("close","beiyong"));
   						}  
   	   					} 
   						
   					}
   				}
   			}
   		}   		
   	});
	jQuery("#glass").slideUp(500);
   	jQuery("#container").draggable();

});



</script>
</html>