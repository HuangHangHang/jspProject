<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jnjj.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
    *{
		border:0px;
		margin:0px auto;
		padding:0px;
		}
	#top{
		height:730px;
		background-image: url(images/rgzn/timg11.jpg);
		background-repeat:no-repeat;
		}
	#top ul{
		list-style-type:none;
		}
	#top a{
		display:block;
		text-decoration:none;}
	.logo{
		padding:5px 0 0 40px;}
	.top1{
		width:800px;
		margin: 0 0 0 320px;
		
		}
	.top_1 {
		background-image:url(images/rgzn/timg2.jpg);
		background-repeat:no-repeat;
		width:400px;
		height:80px;
		float:left;
		text-align:right;  
		line-height:80px;
		font-size:50px;	
		}
	.top_2 {
		background-image:url(images/rgzn/timg2_2.jpg);
		background-repeat:no-repeat;
		width:400px;
		height:80px;
		float:right;
		line-height:80px;
		font-size:50px;	
		}

	#top p{
		color:white;
					
		}
	.ren{
		border:white 2px solid;
		border-radius:100px;
		display:block;
		width:150px;
		height:150px;
		line-height:150px;
		font-size:80px;
		text-align: center;
		margin:100px 0 0 650px;
		background-color:#0D8BE5;
		color:white;
		
		}
	.ren:hover{
		background-color:#6EB2EB;
		}
	.top_p{
		padding:40px 0 10px 40px; 
		}
	.gz{
		margin-left:680px;
		margin-right:652px;
		display:block;
		padding:5px 10px;
		background-color:red;
		border:1px white solid;
		border-radius:10px;
		color:white; 
		}
	#top_bottom{
		margin-top:10px;
		background-color:rgba(235,247,246,0.3);
		height:300px;}
	#top_bottom p{
		padding-top:100px;
		float:left;
		line-height:100px;
		font-size:36px;
	}
	.p1{
		padding:0 20px 0 190px;
		}
	#top_bottom .p2{
		color:red}
	
	
	#daohang{
		height:70px;
		border-bottom:1px #E2FFF6 solid;
		background-color:rgba(205,241,232,0.60);
		margin-bottom:40px;
		}
	#daohang ul{
		list-style-type:none;
		}
	#daohang li{
		float:left;}
	#daohang a{
		display:block;
		text-decoration:none;
		margin-left:110px;
		height:50px;
		line-height:50px;
		padding:0 15px;
		color:#464646;
		background-color:#F9B026;
		border:1px #F9B026 solid;
		border-radius:5px;
		margin-top:10px;
		}
	#daohang a:hover{
		background-color:#FF6E00;
		color:white;
		}
	#daohang .daohang1{
		background-color:#FF6E00;
		color:white;
		}
	#body_d2{
		width:1200px;
		}
	#left{
		float:left;
		width:860px;
		}
	#left div{
		padding-bottom:5px;
		border-bottom:#8C8D8E 1px dotted}
	#left h1{
		line-height:36px;
		float:left;
		color:red;
		}
	#left h2{
		margin:15px 0;
		}
	#left p{
		padding-top:10px;
		color:#4A4D4C;}
	
	
	
	#right{
		float:right;
		width:320px;}
	#right h1{
		border-left:3px #E81A1E solid;
		margin:15px 0;
		}
	#right h3{
		line-height:35px;
		color:#5E6566;}
	#right h3 span{
		color:#F13D40;}
	
	
	
	
	
	.qingchu{
		clear: both;}
	#bottom{
		height:100px;
		background-color:rgba(189,194,195,0.80);
		bottom:0px;
		margin-top:20px;
		text-align: center;
		line-height:100px;}
    </style>
  </head>
  
  <body>
    <div id="top">
<ul>
<li class="logo"><a href=""><img src="images/logo.png"></a></li>
<li>
<div class="top1">
<p class="top_1">智能</p><p class="top_2">家居</p>
</div>
</li>
<li><a class="ren" href="">智</a></li>
<li><p class="top_p">每天十分钟，补充你的大脑。</p>
	<a href="" class="gz">添加关注
    <p></p></a>

</li>
<div id="top_bottom">
<li><p class="p1">访问量：</p>  <p class="p2">64654</p>
	<p class="p1">文章数：</p>   <p class="p2">545</p>
	<p class="p1">粉丝数：</p>  <p class="p2">214</p>
</li>
</div>
</ul>
  </div>
  
  
  
  
  
  <div id="body_div">  
  	<div id="daohang">
    	<ul>
        	<li><a class="daohang1" href="">专栏首页</a></li>
            <li><a href="">文章内容</a></li>
            <li><a href="">粉丝关注</a></li>
        </ul>
    </div>
    
    
    
    <div id="body_d2">
   		 <div id="left">
         	<div><h1>最新</h1><img src="images/rgzn/wenzhang1.png"></div>
            
            
           		 <h2></h2>
            
            <div>
           		 <h2>智能音箱大战618哑火！说好的火拼呢？</h2>
                 <p>文/智东西 寓扬　　今年618购物节，智能音箱“哑火”了。双十一成为大家公认的购物节后，今年刘强东也暗自发力大搞618，其累计销售额达1592亿元，直逼马云去年双十一成交额的1682亿元。在此势头下仿佛互联网巨头围绕智能音箱必有一战！此前各家也摩拳擦掌，频频释放大战的信号。但随着年中购物节落下帷幕，智能音箱大战竟然竟然哑火了。</p>
            	<p>2018.6.28  15：56</p>
            </div>
            <div>
           		 <h2>中国智能音箱市场不温不火？2018年会有新突破</h2>
                 <p>来源：新浪数码   智能音箱这类产品在国外颇受欢迎，不过在中国市场不温不火。市场调研机构Counterpoint的一篇博文分析了中国智能音箱市场目前的变化与形势，新浪数码对这篇文章进行编译整理，方便大家阅读，以下为文章全文：自2014年亚马逊推出Echo以来，智能音箱逐渐成为消费者喜爱的产品。而随着人工智能和语音识别技术的成熟，智能音箱的功能、用途更加多元化，我们期望智能音箱能更加智能，并在人们的日常生活中发挥更大作用。</p>
            	<p>2018.6.25  12：45</p>
            </div>
            <div>
           		 <h2>从拼低价到秀卖点，山寨“智能电视”为什么会火？</h2>
                 <p>文/懂懂笔记 &nbsp;&nbsp;“那些电视厂家哪里懂得市场，不过是跟着国外品牌屁股后面跑。我们这个智能电视才真的是贴近用户需求呢！”刘叔权指着店里摆放着的一排大纸箱，不无得意地说到。在华强北电子市场里，刘叔权的这个档口委实难以找到，不过即便这么个“巴掌大”的小店，每个月“悄悄”卖出去的这种所谓的智能电视也有四五百套。</p>
            	<p>2018.6.23  8：35</p>
            </div>
            <div>
           		 <h2>从价格战到价值战，电视厂商的消费升级之路</h2>
                 <p>文｜朱晓培&nbsp;&nbsp;彩电行业正处在一个转折期。一方面，乐视TV、小米电视、暴风TV等互联网智能电视品牌实现了规模销售，抢占市场份额的同时，也打破了传统电视厂商的原有格局。另一方面，经过了四五年的转型和尝试，TCL$TCL集团(SZ000100)$ 、创维、海尔、长虹等传统电视厂商也逐渐适应了互联网带来的改变。因此，彩电行业进入了一个重新割据的时期。这个新时期的市场，出现了两个以前没有的挑战和机会。</p>
            	<p>2018.6.23  19：28</p>
            </div>
         </div>
         
         
         
    	 <div id="right">
         <h1>&nbsp;热门文章 ————</h1>
         <h3><span>1&nbsp;</span>从拼低价到秀卖点，山寨“智能</h3>
         <h3><span>2&nbsp;</span>重返客厅！乐视打响“家庭娱乐</h3>
         <h3><span>3&nbsp;</span>联想又放“大招”：会聊天的智</h3>
         <h3>4&nbsp;与亚马逊Echo竞争，微软智</h3>
         <h3>5&nbsp;并购扩张成家电巨头转型套路？</h3>
         
         <h1>&nbsp;栏目分类 ————</h1>
         <h3>1&nbsp;默认分类</h3>
         </div>
         <p class="qingchu"></p>
    </div>
  </div>
  
  
  
  
  
  <div id="bottom">  
  <p>版权所有©BlogSpceTime</p>
  </div>
  </body>
</html>
