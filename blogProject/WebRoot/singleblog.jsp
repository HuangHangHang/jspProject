<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.gxcme.blogProject.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'singleblog.jsp' starting page</title>
    
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
		margin:0px;
		padding:0px;
		border:0px;
		font-family:Verdana, Geneva, sans-serif, "Microsoft YaHei UI Light", "Arial Unicode MS";
		
		}
    #big_body{
		width:80%;
		background-color:rgb(241,241,241);
		margin:0px auto;
		
		
		}
	#navigation{
		border-top:2px solid #FC3;
		background-color:#F1F1F1;
		border-bottom:0.5px solid #EFEFEF;
		width:100%;
		height:80px;
		
		position:absolute;
		top:0px;
			
		}
		#navigetion_big{
		width:70%;
		margin:0px auto;
			
			}
	  #navigation #navigation_1{
		margin:0px auto;
		width:80%;
		
		
		
		}
	#navigation span{
		display:block;
		float:left;
		margin-left:10%;
		}
	#navigation_1 ul{
		display:block;
		width:60%;
		height:80px;
		float:left;

		}
	#navigation_1 li{
		display:block;
		float:left;
		text-decoration:none;
		margin-left:5%;
		text-align:center;
		width:20%;
		
		padding-top:35px;
		
			
		}
    #navigation_1 li a{
		text-decoration:none;
		padding:10px 10px;
		border-radius:5px;
		color:#3C3;
		}
	.show{
			background-color:#CDCDCD;
			
		}
	#centent{
		width:70%;
		height:1500px;
		margin-top:-40px;
		margin:0px auto;
		background-color:red;
		
		
		
		}	
	#head{
		width:70%;
		height:120px;
		margin:0px auto;
		
		}	
	#left{
		width:35%;
		height:100%;
		display:block;
		float:left;
		background-color:#C63;
			
			}
	#left_1{
		width:100%;
		height:250px;
		background-color:#FFF;
		}
	
    #left_2 ul li{
		list-style:none;
		line-height:60px;
		background-color:#0C9;
		border-bottom:1px solid #DDD;
		font-size:20px;
		color:#FFF;
		padding-left:40%;
		}
		
		
	#right{
		display:block;
		float:right;
		width:64%;
		height:100%;
	
		}
	#right_1{
		width:100%;
		height:60px;
		background-color:#fff;
		
		}	
	#left_2 ul li{
		display:block;
		
		}	
	
	#left_2 ul .show1{
		background-color:#8AEBB3;
		}
		
    	#c1{
		width:100%;
		height:100%;
		background-color:#FCFCFC;
		clear:both;
		display:none;
		
		
		}	
		
		#c2{
		width:100%;
		height:100%;
		background-color:#FCFCFC;
		clear:both;
		display:none;
		
		}	
		#c3{
		width:100%;
		height:100%;
		background-color:#8C3132;
		clear:both;
		display:none;
		
		
		}	
		#c4{
		width:100%;
		height:100%;
		background-color:#730F10;
		clear:both;
		display:none;
		
		
		}	
		#c5{
		width:100%;
		
		height:100%;
		background-color:#2D2020;
		clear:both;
		display:none;
		
		
		}
	
	#right .yangshi{
		
		display:block;
		
		}
		#touxiang{
			display:block;
			position:relative;
			left:40%;
			padding-top:60px;
			
			
			}	
			#xinming{
			display:block;
			position:relative;
		    top:40%;
		    padding-left:17px;
			
				}	
	#shuju{
		width:100%;
		height:6px;
		background-color:#066;
		
		}
	#bq2{
		width:100px;
		height:60px;
		background-color:#FC0;
		margin-top:50px;
		font-size:20px;
		border-radius:5px;
		
		}
		#head2{
			width:100%;
			height:50px;
			background-color:#FC0;
			margin-bottom:50px;
			text-align:center;
			font-size:24px;
			
			}
					
    </style>
    
	
	<script>
   window.onscroll=window.onresize=function(){
var oDiv=document.getElementById('navigation');

var scrollTop=document.documentElement.scrollTop||document.body.scrollTop;
if(!window.XMLHttpRequest){
  startMove(document.documentElement.clientHeight - oDiv.offsetHeight + scrollTop);
}

                else{
                oDiv.style.position='fixed';
                }
}
var timer=null;
function startMove(iTarget){
var oDiv=document.getElementById('suspension');
clearInterval(timer);
timer=setInterval(function(){
var speed=(iTarget-oDiv.offsetTop)/8;


speed=speed>0?Math.ceil(speed):Math.floor(speed);
if(iTarget==oDiv.offsetTop){
clearInterval(timer);
}
else{
oDiv.style.top=oDiv.offsetTop+speed+'px';
}
},30)
}



	
	
	function msg(p){
		for(var i=1;i<5;i++){
        document.getElementById("a"+i).className=" ";
			}
		document.getElementById("a"+p).className="show";
		
		}
	
    function ggg(p){
		for(var i=1;i<5;i++){
        document.getElementById("a"+i).className=" ";
			}
	}
	
	
	
	

	function pinlun(p){
		for(var i=1;i<6;i++){
			document.getElementById("b"+i).className=" ";
			document.getElementById("c"+i).className=" ";
			}
			
			document.getElementById("b"+p).className="show1";
			document.getElementById("c"+p).className="yangshi";
	
		}
		
	
	
		
		
    </script>




  </head>
  <% 
  
     String uid=request.getParameter("uid");
     
     int id=Integer.parseInt(uid);
     
     BlogcontentTbBean bbean=new BlogcontentTbBean();
      
     List list=bbean.getAllContent();
     
     
  
  
  %> 
  
  <body>
   <div id="navigation">
   <div id="navigetion_big">
   <div id="navigation_1">
   <span><img src="images/logo.png"/></span>
   <ul>
   <li><a href="index.jsp"  id="a1" onmouseover="msg(1)" onmouseout="ggg(1)">博客首页</a></li>
   <li> <a href="javascript:;"  id="a2" onmouseover="msg(2)" onmouseout="ggg(2)">我的博客</a></li>
  <li> <a href="javascript:;"  id="a3" onmouseover="msg(3)" onmouseout="ggg(3)">消息</a></li>
   <li><a href="javascript:;"  id="a4" onmouseover="msg(4)" onmouseout="ggg(4)">设置</a></li>
  
   </ul>
   </div>
   </div>
   </div>
   <div id="big_body">
   <div id="head"></div>
   <div id="centent"> 
   
   <div id="left">
   <div id="left_1">
   <div id="touxiang1">
    <span id="touxiang"><img src="${sessionScope.user_header}" id="" style="width:70px; height:70px; border:1px solid #FFFFFF; border-radius:50px; float:left;"/></br></br></br></br><h5 id="xinming">${sessionScope.username }</h5>  &nbsp;&nbsp; </span><input name="hd" type="hidden" value="${sessionScope.user_id}" id="inp"/>
   </div>
   </div>
    <div id="left_2">
    <ul>
    <li id="b1" class="show1" onClick="pinlun(1)">我的博文</li>
    <li id="b2" onClick="pinlun(2)">发表博文</li>
    <li id="b3" onClick="pinlun(3)">我的评论</li>
    <li id="b4" onClick="pinlun(4)">我的佛学</li>
    <li id="b5" onClick="pinlun(5)">我的收藏</li>
    </ul>
   </div>
   </div>
   
   
   <div id="right">
 
   <div class="yangshi" id="c1">
   <div style="width:100%; height:50px; background-color:#FC0; font-size:24px; text-align:center;">精彩博文</div>
     <%
       for(int i=0;i<list.size();i++){
        BlogcontentTb bctb=(BlogcontentTb)list.get(i);
        
        if(id==bctb.getUserTb().getId()){
     
      %>
      
      <div style="font-size:30px; margin-bottom:20px;"><%=bctb.getBlogTitle() %></div>
      <div style="font-size:20px; border-bottom:1px solid #E5E5E5; width:100%; height:250px; overflow:hidden;"><%=bctb.getBlogContent() %></div>
      <div id="shuju"></div>
      
      <%} %>
    
    <%}%>
   
  </div>
  
  
     
  
    <div id="c2">
    <div id="head2">请您文明、规范发表言论！</div>
    
    <div>
   
    <form action="fabiao.jsp" method="post" name="form1">
     <span style="margin-top:10%">标题：</span>
    <textarea name="text1" id="text1" style="width:100%; height:40px; background-color:#E6E6E6; margin-bottom:30px;">
    </textarea>
    <span>正文：</span>
    <textarea name="text2" id="text2" style="width:100%; height:300px; background-color:#E6E6E6;" >
    </textarea>
    <input type="hidden" name="user_id" value="${sessionScope.user_id}" id="user_id">
     <input type="submit" id="bq2" name="" value="发布">
    </form>
    </div>
    
    
    
    
    </div>
    
    
     <div id="c3">
     
     </div>
     
     
      <div id="c4">
      
      </div>
      
      
       <div id="c5">
       
       
       </div>
   
  
  
  </div>
  </div>
  </div>
  </div>
  </body>
</html>
