<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.gxcme.blogProject.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<link rel="stylesheet" type="text/css" href="css/lanren.css">
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
	
	
    <style type="text/css">
	
	  *{
		  margin:0px auto;
		  border:0px;
		  padding:0px;
		 
		  
		  }
		  body{
			    background-color:#A5BEA1;
			  }
		  #logo{
			  margin-top:5px;
			  width:1100px;
			  height:100px;
			  background-color:#685E5E;
			  margin-left:0px auto;
			  margin-right:0px auto;
			  
			  }
		  #nav{
			  padding-left:20px;
			  width:1100;
			  height:30px;
			  margin:0xp auto;
			   background-color:#67A2CC;
			  }
			  
		#nav ul{
			margin-left:0px;
		 	display:block;
			width:100%;
			height:30px;
		    margin-left:0px;
			list-style-type:none;
				       
			}
			
		#nav ul li{
			margin:0px;
			width:70px;
			display:block;
				
			}
			
		#nav ul li a{
			color:#E6F3F2;
			text-align:center;
			line-height:30px;
            width:70px; 
			float:left;
			height:30px;
			text-decoration:none;
						  
			}
			
		#nav ul li a:hover{
			background-color:#CEB1DB;
			width:70px;
			font-weight:bold; 
			}
			
		#neirong{
			width:1100px;
			height:900px;
			}
			
		 #footer {
			width:500px;
			height:50px;
			margin-left:40%;
			}
								  
	</style>
  </head>
  <%
        request.setCharacterEncoding("utf-8");
        
        BlogcontentTbBean bc=new BlogcontentTbBean();
        List list=bc.getAllContent();
  
   %>
  
  <body>
    <div id="logo">
    <img src="images/logo.png"></img>
   </div>
   <div id="nav">
      <ul>
       <li><a href="index.jsp">首页</a></li>
       <li><a href="rgzn.jsp">人工智能</a></li>
       <li><a href="javasript:;">大数据</a></li>
       <li><a href="javasript:;">云计算</a></li>
       <li><a href="jiqiren.jsp">机器人</a></li>
       <li><a href="qiche.jsp">智能汽车</a></li>
       <li><a href="javasript:;">区块链</a></li>
       <li><a href="znjj.jsp">智能家居</a></li>
       <li><a href="javasript:;">物联网</a></li>
       <li><a href="javasript:;">其它</a></li>
       <li><a href="login.jsp">登录</a></li>
      </ul>
   
   
   </div>
   <div id="neirong">
   <!-- 代码部分begin -->
	<div class="lanren">
		<div class="full-length">
		    <div class="container">
		    	<!-- Effect-1 -->
	
		        <ul>
		        	<li>
		            	<div class="port-1 effect-1">
		                	<div class="image-box">
		                    	<img src="images/che1.jpg" alt="Image-1">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>奔驰智能汽车</h3>
		                        <p>奔驰在美国拉斯维加斯举行的2015年国际消费电子展(CES)发布全新研发的F015 Luxury in Motion概念车，为我们勾勒出自动驾驶的美好未来。</p>
		                    	<a href="javasript:;" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-1 effect-2">
		                	<div class="image-box">
		                    	<img src="images/che2.jpg" alt="Image-2">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>无人驾驶汽车</h3>
		                        <p>无人驾驶汽车是智能汽车的一种，也称为轮式移动机器人，主要依靠车内的以计算机系统为主的智能驾驶仪来实现无人驾驶的目标。</p>
		                    	<a href="javasript:;" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-1 effect-3">
		                	<div class="image-box">
		                    	<img src="images/che3.jpg" alt="Image-3">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>无人汽车的发展</h3>
		                        <p>据汤森路透知识产权与科技最新报告显示，2010年到2015年间，与汽车无人驾驶技术相关的发明专利超过22,000件，并且在此过程中，部分企业已崭露头角，成为该领域的行业领导者。</p>
		                    	<a href="javasript:;" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		        </ul>
		        <!-- Effect-1 End -->
		        
		    	<!-- Effect-2 -->
	
		    	<ul>
		        	<li>
		            	<div class="port-2 effect-1">
		                	<div class="image-box">
		                    	<img src="images/che4.jpg" alt="Image-1">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>无人驾驶公交</h3>
		                        <p>2015年9月，全球第一台无人驾驶大客车，在开放道路交通条件下，全程无人工干预首次成功运行，标志着在国客车制造产业迎来了重大突破。</p>
		                    	<a href="javasript:;" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-2 effect-2">
		                	<div class="image-box">
		                    	<img src="images/che5.jpg" alt="Image-2">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>无人汽车试验</h3>
		                        <p>世界上最先进的无人驾驶汽车已经测试行驶近五十万公里，其中最后八万公里是在没有任何人为安全干预措施下完成的。</p>
		                    	<a href="javasript:;" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-2 effect-3">
		                	<div class="image-box">
		                    	<img src="images/che6.jpg" alt="Image-3">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>技术原理</h3>
		                        <p>无人驾驶汽车是通过车载传感系统感知道路环境，自动规划行车路线并控制车辆到达预定目标的智能汽车。</p>
		                    	<a href="javasript:;" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		        </ul>
		        <!-- Effect-2 End -->
        
		        <!-- Effect-6 -->

		    	<ul>
		        	<li>
		            	<div class="port-6 effect-1">
		                	<div class="image-box">
		                    	<img src="images/che7.jpg" alt="Image-1">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>中国无人车</h3>
		                        <p>中国自主研制的无人车——由国防科技大学自主研制的红旗HQ3无人车，创造了中国自主研制的无人车在一般交通状况下自主驾驶的新纪录。</p>
		                    	<a href="#" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-6 effect-2">
		                	<div class="image-box">
		                    	<img src="images/che8.jpg" alt="Image-2">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>谷歌无人车</h3>
		                        <p>70年代开始，美国、英国、德国等发达国家开始进行无人驾驶汽车的研究，在可行性和实用化方面都取得了突破性的进展。</p>
		                    	<a href="#" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-6 effect-3">
		                	<div class="image-box">
		                    	<img src="images/che9.jpg" alt="Image-3">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>英国无人车</h3>
		                        <p>90年代英国新的无人驾驶汽车计划展开。一些人在英国伦敦希斯罗机场亲眼目睹了许多辆无人驾驶汽车“优尔特拉”（ULTra）自动驶离、抵达车站的奇妙场景。</p>
		                    	<a href="#" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		        </ul>
		        <!-- Effect-6 End -->
		        
		</div>
	</div>
	<!-- 代码部分end -->
    </div>
        <!--底部开始-->
<div id="footer">Copyright &copy; 2010 - 2018 Blogger Inc. </div>
<!--底部结束-->
   </div>
  

  </body>
</html>