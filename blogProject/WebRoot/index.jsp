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
			  width:1100px;
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
			
	
		
		#nav ul li a{
		    color:#E6F3F2;
			text-align:center;
			line-height:30px;
			display:block;
			float:left;
			width:70px;
			float:left;
			height:30px;
			text-decoration:none;		  
			}
			
		#nav ul li a:hover{	
			 
			
			 color:#FF9724;					  
			}
			
		#left{
			width:420px;
		    float:left;
			background-color:#E3CB85;
				}
				
	  #middle{
			width:400px;
			float:left;
			margin-left:0.5%; 
			}
				  
			  
	   #right{
				width:266px;
				float:left;
				margin-left:0.5%;
				background-color:#508AB0; 
				}
				  
		.middle_class{
				width:100%;
				height:230px;
				margin-bottom:10px;
				}
					
		#list_show{
				width:100%;
				height:250px;
				border-bottom:1px dashed #D9ABE3;
				}
				
		#main{
				width:1100px;
			    height:1000px;;
				margin:0px auto;
	
				}
		#ss a:hover{
				color:#CF875C;	
				}
		#spaa a:hover{
				color:#8A87DD;				
				}
		#sp2a a:hover{
				color:#F01014;				
				}
		#hidd{
			display:none;
			}
								
								
	</style>
	
	<script type="text/javascript">
	
	 window.onload=function(){
		 
		   var uid=document.getElementById('user_id');
		   var hid=document.getElementById('hidd');
		   if(uid.value !=null && uid.value !=''){
			   
			     hid.style.display='block';
			   
			   }
		 
		 
		 }
	
	</script>
	
  </head>
  <%
        request.setCharacterEncoding("utf-8");
        
        BlogcontentTbBean bc=new BlogcontentTbBean();
        List list=bc.getAllContent();
        
       
        //UserTbBean bbean=new UserTbBean();
      
        
  
   %>
  
  <body>
    <div id="logo">
    <img src="images/logo.png"></img><span style="display:block; width:320px; height:30px; float:right; margin-top:30px; color:#FFFFFF; ">当前登录用户：<a href="index.jsp" style="color:#B0EF21;">${sessionScope.username}</a></span><input type="hidden" name="user_id" value="${sessionScope.user_id}" id="user_id">
   </div>
   <div id="nav">
      <ul>
       <li><a href="index.jsp">首页</a></li>
       <li><a href="rgzn.jsp">人工智能</a></li>
       <li><a href="index.jsp">大数据</a></li>
       <li><a href="index.jsp">云计算</a></li>
       <li><a href="jiqiren.jsp">机器人</a></li>
       <li><a href="qiche.jsp">智能汽车</a></li>
       <li><a href="index.jsp">区块链</a></li>
       <li><a href="znjj.jsp">智能家居</a></li>
       <li><a href="index.jsp">物联网</a></li>
       <li><a href="index.jsp">其它</a></li>
       <li><a href="login.jsp">登录</a></li>
       <li id="hidd"><a href="singleblog.jsp?uid=${sessionScope.user_id}">我的博客</a></li>
      </ul>
   
   
   </div>
   <div id="main">
   
   <div id="left">
   
   <%
     for(int i=0;i<list.size();i++){
      BlogcontentTb bctb=(BlogcontentTb)list.get(i);
     
       if(bctb.getId()>10 && bctb.getId()<15){
        
     %>
       <div id="list_show">
       <br/>
         <span id="sp2a"> <a href="detail.jsp?blogid=<%=bctb.getId()%>" style="text-decoration:none;"><h3>&nbsp;&nbsp;<%=bctb.getBlogTitle() %></h3></a></span>
          
         <div id="user_mess" style="width:420px; height:80px; margin-top:5px;"> 
           <a href="#"><img src="<%=bctb.getUserTb().getUserHeader()%>" style="width:70px; height:70px; border:1px solid #FFFFFF; border-radius:50px; float:left;"></img></a>
           <span id="spaa"><a href="#" style="float:left; text-decoration:none; display:block; margin-top:6px; color:#797C71;" id="ssa">&nbsp;昵称：<%=bctb.getUserTb().getUserName() %></a></span>
             <div id="ss" style="width:300px; height:40px; float:left; margin-top:10px; margin-left:14px;">
                <a href="#" style="text-decoration:none; ">参与：556</a>&nbsp;
                <a href="#" style="text-decoration:none; ">评论：30</a>&nbsp;
                <a href="#" style="text-decoration:none; ">支持：20</a>
           </div>
         </div>
         
         <textarea style="overflow:hidden; width:420px; height:100px; font-size:16px; background-color:#E3CB85;" readonly>&nbsp;<%=bctb.getBlogContent()%>
         
         
         </textarea>
       </div>
      <%}%>
    <% }%>
   
   </div>
   <div id="middle">
     <div id="middle_one" class="middle_class" style="background-color:#C7CBCE;">
     <br/>
       <h4>&nbsp;AI人工智能为何如此深受关注？</h4>
       
      <a href="jiqiren.jsp"> <img alt="picture" src="images/sss.png"></img></a>
    
     </div>
     <div id="middle_two" class="middle_class" style="background-color:#04162D; color:#FDF7F7;">
     <h4>&nbsp;区块链技术遭到质疑？</h4>
     <a href="#"><img src="images/s5.png"></img></a>
    
     </div>
     <div id="middle_three" class="middle_class" style="background-color:#070E16; color:#FDF7F7;">
       <h4>&nbsp;智能汽车如何发展？</h4>
     <a href="qiche.jsp"><img src="images/qis.jpg"></img></a>
    
     </div>
     <div id="middle_three" class="middle_class" style="background-color:#F1D79E;color:#C78F04;">
       <h4>&nbsp;家居生活，如何选择？</h4>
     <a href="znjj.jsp"><img src="images/ssss.jpg"></img></a>
    
     </div>
   
   </div>
   <div id="right">
     <a href="javasript:;"><img style="margin-bottom:15px;"  src="images/s1.jpg"></img></a>
     <a href="javasript:;"><img style="margin-bottom:15px;"   src="images/s2.jpg"></img></a>
     <a href="javasript:;"><img  style="margin-bottom:15px;"  src="images/g1.jpg"></img></a>
      <a href="javasript:;"><img  style="margin-bottom:15px;"  src="images/g2.jpg"></img></a>
       <a href="javasript:;"><img  style="margin-bottom:15px;"  src="images/g3.jpg"></img></a>
   </div>
   </div>
  </body>
  
    <%HibernateSessionFactory.closeSession(); %>
</html>
