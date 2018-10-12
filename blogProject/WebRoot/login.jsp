<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
		}
		
		#img1{
			margin-left:2%;
			
			}
		body{
			
			
			}
		#head{
			width:100%;
			height:10%;
			
			margin-bottom:5px;
			}
		#mybody{
			width:100%;
			height:700px;
			background-color:#F6F6F6;
			background-image:url(images/20120611125918_yLUtzsss.png);
			}
		
		#botton{
			width:100%;
			height:90px;
			text-align:center;
			background-color:#DDD;
			padding-top:60px;
			}
		#botton_a{
			text-align:center;
			
			}
			
			#right{
				width:300px;
				height:350px;
				display:block;
				position:absolute;
				top:270px;
				right:280px;
				
				background-color:#000000;/* IE6和部分IE7内核的浏览器(如QQ浏览器)下颜色被覆盖background-color:#E7E7E7; */
                background-color:rgba(0,0,0,0.2); /* IE6和部分IE7内核的浏览器(如QQ浏览器)会读懂，但解析为透明 */
				
				}
		.t1{
		height: 35px;
		width: 200px;
	          }
	    .t2{
		height: 35px;
		width: 200px;
	         }
	   #bq2{
		width: 200px;
		height: 40px;
		line-height: 40px;
		margin-left: 30px;
		background-color: #F86103;
		color: #FFF;
		font-size: 20px;
		font-weight: bold;
		border: 2px solid #F86103;
		border-radius: 3px;
		
	         }
			 #bq1{
		width: 200px;
		height: 40px;
		line-height: 40px;
		margin-left: 30px;
		background-color: #F86103;
		color: #FFF;
		font-size: 20px;
		font-weight: bold;
		border: 2px solid #F86103;
		border-radius: 3px;
	         }
	
	.a1{
		padding-left: 20px;
	          }
    #tab_head{
	width:300px;
	height:42px;
	background-color:#666;
	margin-bottom:30px;
	
	
	}
    
    #tab_head a{
	 width:150px;
	 font-size:20px;
	 font-weight:normal;
	 float:left;
	 height:22px;
	 line-height:22px;
	 left -44px;
	 padding-left:12px;
     margin-left:0px;
     display:inline;
     color:#FFF;
	 margin-bottom:30px;
	 background-color:#666;
	 padding:10px;
	 
	 }
	 #tab_head .current{
		 background-color:#999;
		 
		 }
		 
	 #right  ul{
			  clear:both;
			  list-style:none;
			  margin:0px;
			  padding:0px;
			  display:none;
			  }
	#right .show{
			  display:block;
			   }
	#a2{
		 display:block;
		 position:absolute;
		 top:0px;
		 right:0px;
		 text-decoration:none;
		   
	}
	#a1{
		 display:block;
		 position:absolute;
		 top:0px;
		 left:0px;
		 text-decoration:none;
		 background-color:#999;
	}
	
	.text{
		display:block;
		margin-left:30px;
		margin-bottom:20px;
		}
		#a3{
			color:#666;
			text-decoration:none;
			margin-left:150px;
			font-size:12px;
			
			}
			#s1{
				width:200px;
				height:60px;
				position:absolute;
				right:280px;
				top:245px;
				
				}
	
		
    </style>
    <script>
    
    function aa(q){
	
	for(var i=1;i<3;i++){
		document.getElementById("a"+i).className=" ";
		document.getElementById("ul"+i).className=" ";
		
		}
	
	document.getElementById("ul"+q).className="show";
	document.getElementById("a"+q).className="current";
	
	
	}
	
	
	function input_name(){
		var name=document.getElementById("uname");
		var span=document.getElementById("s1");
		
		var uname=name.value;
		var biao=/^[\u4e00-\u9fa5]{2,5}$/;
		
		if(!biao.test(uname)){
		span.innerHTML="*格式错误";
		
		name.focus();
			return false;
			}
		else{
			
			span.innerHTML="  ";
			
			return true;
			}
		
		}
		
		function input_pwd(){
		var upwd=document.getElementById("upass");
	
		var span=document.getElementById("s1");
		var upass=upwd.value;
		var biao=/^([a-zA-Z_])\w{2,10}$/;
		
		if(!biao.test(upass)){
		span.innerHTML="*格式错误";
		
			return false;
			}
		else{
			
			span.innerHTML="  ";
			return true;
			}
		
		}
		
		function checkall(){
		
		   if(input_name() && input_pwd()){
		   
		    form1.submit();
		   }
		
		}
		
		//function checkLogin(){
		//var name=document.getElementById("lo_uname");
		//var upwd=document.getElementById("lo_upass");
		
		//if(!name.value && !upwd.value){
		 
		    //  return false;
		  //}
		 // return true;
		  
		 // form2.submit();
		
		//}
		
		
		
		function input_names(){
		var name=document.getElementById("lo_uname");
		var span=document.getElementById("s1");
		
		var uname=name.value;
		
		
		if(!name.value){
		span.innerHTML="*用户名不能为空";
		
		name.focus();
			return false;
			}
		else{
			
			span.innerHTML="  ";
			
			return true;
			}
		
		}
		
		function input_pwds(){
		var upwd=document.getElementById("lo_upass");
	
		var span=document.getElementById("s1");
		
		
		if(!upwd.value){
		span.innerHTML="*密码不能为空";
		
			return false;
			}
		else{
			
			span.innerHTML="  ";
			return true;
			}
		
		}
		
		function checkalls(){
		
		   if(input_names() && input_pwds()){
		   
		   form2.submit();
		   }
		
		}
		
		
		
		
		
		
		
    
    
    </script>
    
    
    
    
    
  </head>
  
  <body>
    
    <div id="head">
    <img id="img1" src="images/logo.png"/>
    </div>
    
    <div id="mybody">
    <span id="s1"></span>
    <div id="right">
    <div id="tab_head">
    <a href="javascript:;" id="a1"  onclick="aa(1)" class="current" >登录</a>
    <a href="javascript:;" id="a2" onclick="aa(2)" >注册</a>
    </div>
          <ul class="show" id="ul1">
               <form action="Register!logins" method="post" name="form2">
				<span class="text" ><input class="t1" type="text" name="lo_uname" id="lo_uname" value="" onBlur="input_names()"  placeholder="昵称"></br></span>
				<span class="text" ><input class="t1" type="password" name="lo_upass" id="lo_upass" value="" onBlur="input_pwds()"  placeholder="密码"></br></span>
                <a id="a3" href="#">忘记密码</a>
				<button type="button" id="bq1" name=""  onclick="checkalls()">登 录</button>
	           </form>
			
            </ul>
            
            <ul id="ul2">
             <form action="Register!tianjia" method="post" name="form1">
            <span class="text" ><input class="t2" type="text" id="uname" name="re_uname" onBlur="input_name()" value="" placeholder="昵称：2~5字符"></br></span>
			<span class="text" ><input class="t2" type="password" id="upass" name="re_upass" onBlur="input_pwd()" value="" placeholder="密码：字母数字组合以字母开头4~12"></br></span>
            <button type="button" id="bq2" name="" onclick="checkall()">注 册</button>
            </form>
            </ul>
    
    </div>
    
    </div>
    
    <div id="botton">
    <div id="botton_a">
 <p>@ Copyright 2001 - 2018 blogchina.com, All Rights Reserved</p>
<p>京ICP证120511　京公网安备 11010802020321号</p>
<p>客户服务热线：15635467434　客服邮箱：2437317267@qq.com　 违法和不良信息举报电话：15641242218　举报邮箱:2437317267@qq.com</p></div>
    </div>
    
    
    
    
  </body>
</html>
