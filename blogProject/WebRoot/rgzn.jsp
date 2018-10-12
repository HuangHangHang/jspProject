<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rgzn.jsp' starting page</title>
    
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
		background-image: url(images/rgzn/timg12.jpg);
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
		background-color:red;
		color:white;
		
		}
	.ren:hover{
		background-color:#F45140;
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
		background-color:rgba(235,247,246,0.2);
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
<p class="top_1">人工</p><p class="top_2">智能</p>
</div>
</li>
<li><a class="ren" href="">人</a></li>
<li><p class="top_p">每天十分钟，补充你的大脑。</p>
	<a href="" class="gz">添加关注
    <p></p></a>

</li>
<div id="top_bottom">
<li><p class="p1">访问量：</p>  <p class="p2">71654</p>
	<p class="p1">文章数：</p>   <p class="p2">485</p>
	<p class="p1">粉丝数：</p>  <p class="p2">193</p>
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
           		 <h2>IBM举办首次人机辩论赛，AI的“胜利”名不副实</h2>
                 <p>文/杨苏颖&nbsp;来源：智能相对论（ID：aixdlun）　　“号外，号外，人类和AI的第一场辩论赛输了……“，如果现在每天清晨还有那么一群忙碌的小报童，那么IBM的人工智能Project Debater可能会是最近他们收工之后饭桌上的最新谈资。6月18日，就在旧金山的一间办公室里，IBM举办了历史上第一场人机辩论比赛。两道辩论题目分别是：“我们是否应当资助太空探索”；“我们是否应当更多地使用远程医疗”。而两场辩论，Project Debater的对手都不容小觑，前一位是以色列全国辩论冠军Noa ovadia ，后一位是以色列辩论专家Dan Zafrir。虽然对手强大，但是现场辩论Project Debater由于提供了更多有利的证据而更具说服力，最终观众的投票也倒向了Project Debater。</p>
            	<p>2018.6.28  15：56</p>
            </div>
            <div>
           		 <h2>“AI互联网”将统治一切</h2>
                 <p>文/周掌柜&nbsp;&nbsp;科技进步正在重新定义进步与落后，这次被“屠杀”的很有可能是传统的“互联网”。从1995年左右互联网萌芽开始影响中国，应该说已经有20多年的时间。说长确实很长，几乎两三代人伴随着互联网成长，我们这些80后在这轮科技浪潮前应该说还是很前沿的，很多科技大佬接了70后的第二棒。如果说短呢，确实还没有太多历史的沉淀，从周掌柜个人来看，现在的很多大佬在2000年左右刚刚起步，踌躇满志的样子还历历在目。但今天他们已经创造了前所未有的商业帝国。这20多年，我个人其实一直关注和参与者互联网，包括2次互联网方向的创业。本文也是结合个人的看法和团队最近对互联网行业的调研研究，做一些简单的梳理。</p>
            	<p>2018.6.25  12：45</p>
            </div>
            <div>
           		 <h2>代码伦理的未来才是人工智能的未来</h2>
                 <p>来源：techcrunch &nbsp;&nbsp;不久前，Facebook 因擅用用户数据受到 严厉审查 。而后，它使用人工智能预测并向广告商售卖用户预期行为的举动也没能逃脱我们的法眼。但这种种做法并不值得我们惊讶——Facebook 的商业模式和它对待用户数据的方式只是引爆我们对数据隐私看法的导火索。而这些纷争将会是促进 Facebook 的数据共享与保护机制向前发展的垫脚石。</p>
            	<p>2018.6.23  8：35</p>
            </div>
            <div>
           		 <h2>人工智能新算法：可预测人死亡时间准确率高达95%</h2>
                 <p>来源：中新网6月22日电 据美国侨报网报道，日前，谷歌新出炉的一项研究报告称，该公司已开发出一种新人工智能（AI）算法，可预测人的死亡时间，且准确率高达95%。最近，谷歌的这项研究发表在了《自然》杂志上。据报道，这项AI技术对医院患者面临的一系列临床问题进行了测试。在研究中，谷歌对来自两个医疗中心至少21.6万名成人患者，应用了这一AI技术，测试时间至少为24个小时。研究人员从电子健康记录中获取了大量数据。</p>
            	<p>2018.6.23  19：28</p>
            </div>
         </div>
         
         
         
    	 <div id="right">
         <h1>&nbsp;热门文章 ————</h1>
         <h3><span>1&nbsp;</span>2017人工智能：技术、伦理</h3>
         <h3><span>2&nbsp;</span>阿里云首席科学家周靖人：AI</h3>
         <h3><span>3&nbsp;</span>李开复：人工智能领域“有泡沫</h3>
         <h3>4&nbsp;面向普通用户的科技趋向：AI</h3>
         <h3>5&nbsp;人工智能对道德伦理问题提出重</h3>
         
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
