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
		                    	<img src="images/ji1.jpg" alt="Image-1">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>智能机器人</h3>
		                        <p>我们从广泛意义上理解所谓的智能机器人，它给人的最深刻的印象是一个独特的进行自我控制的“活物”。其实，这个自控“活物”的主要器官并没有像真正的人那样微妙而复杂。</p>
		                    	<a href="#" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-1 effect-2">
		                	<div class="image-box">
		                    	<img src="images/ji2.jpg" alt="Image-2">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>传感型机器人</h3>
		                        <p>又称外部受控机器人。机器人的本体上没有智能单元只有执行机构和感应机构，它具有利用传感信息（包括视觉、听觉、触觉、接近觉、力觉和红外、超声及激光等）进行传感信息处理、实现控制与操作的能力。</p>
		                    	<a href="#" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-1 effect-3">
		                	<div class="image-box">
		                    	<img src="images/ji3.jpg" alt="Image-3">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>交互型机器人</h3>
		                        <p>机器人通过计算机系统与操作员或程序员进行人－机对话，实现对机器人的控制与操作。虽然具有了部分处理和决策功能，能够独立地实现一些诸如轨迹规划、简单的避障等功能，但是还要受到外部的控制。</p>
		                    	<a href="#" class="btn">进入讨论</a>
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
		                    	<img src="images/ji4.jpg" alt="Image-1">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>自主型机器人</h3>
		                        <p>在设计制作之后，机器人无需人的干预，能够在各种环境下自动完成各项拟人任务。可以就像一个自主的人一样独立地活动和处理问题。</p>
		                    	<a href="#" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-2 effect-2">
		                	<div class="image-box">
		                    	<img src="images/ji5.jpg" alt="Image-2">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>工业机器人</h3>
		                        <p>它只能死板地按照人给它规定的程序工作，不管外界条件有何变化，自己都不能对程序也就是对所做的工作作相应的调整。</p>
		                    	<a href="#" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-2 effect-3">
		                	<div class="image-box">
		                    	<img src="images/ji6.jpg" alt="Image-3">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>初级智能机器人</h3>
		                        <p>它和工业机器人不一样，具有象人那样的感受，识别，推理和判断能力。可以根据外界条件的变化，在一定范围内自行修改程序，也就是它能适应外界条件变化对自己怎样作相应调整。</p>
		                    	<a href="#" class="btn">进入讨论</a>
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
		                    	<img src="images/ji7.jpg" alt="Image-1">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>智能农业机器人</h3>
		                        <p>智能农业机器人采用空气动力学，根据气动布局特点形成了鲨鱼型外观结构，采用工业级高分子材料制作的履带式底盘，特殊的离去角角度。</p>
		                    	<a href="#" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-6 effect-2">
		                	<div class="image-box">
		                    	<img src="images/ji8.jpg" alt="Image-2">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>家庭智能陪护</h3>
		                        <p>陪护机器人应用于养老院或社区服务站环境，具有生理信号检测、语音交互、远程医疗、智能聊天、自主避障漫游等功能。</p>
		                    	<a href="#" class="btn">进入讨论</a>
		                    </div>
		                </div>
		            </li>
		            <li>
		            	<div class="port-6 effect-3">
		                	<div class="image-box">
		                    	<img src="images/ji9.jpg" alt="Image-3">
		                    </div>
		                    <div class="text-desc">
		                    	<h3>高级智能机器人</h3>
		                        <p>高级智能机器人和初级智能机器人一样，具有感觉，识别，推理和判断能力，同样可以根据外界条件的变化，在一定范围内自行修改程序。</p>
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