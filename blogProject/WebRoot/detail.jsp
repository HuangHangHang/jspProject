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
				  
				  
	#nav ul li{}
					 
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
		
		 font-weight:bold; 
		 color:#FF9724;
		 }
		 
	 #left{
		  width:318px;
		  float:left;
		  height:240px;
		  border-right:1px dashed #000;
		}
				  

	 #right{
			width:780px;
			height:240px;
		    float:left;
		 }
				  
						
	#main{
			width:1100px;
			height:900px;
			margin:0px auto;
			background-image:url(images/bbg1.jpg);
		
			}
							
	#tall{
			width:1100px;
		    height:600px;
			clear:both;
			float:left;
		
					  
			}
			#delete_a{
			
				
				
				}
				
	</style>
	
	
	<script type="text/javascript">
	
	    function fabiao(){
	       var uid=document.getElementById("user_id");
	       var comtext=document.getElementById("comment_text");
	       var  myform3=document.getElementById("form3");
	     
	        if(uid.value !=null && uid.value !=''){
	        
	           // alert(uid.value);
	        
	            if(comtext.value !=''){
	            
	                 myform3.submit();
	                //return true;
	               
	            }else{alert("评论内容不能为空!!");return }
	        
	        
	        }else{alert("您未登录，不能进行评论！！");return}
	 
	 }
	 
	 
		 
 // window.onload=function(){
//		 
//		 var delLi=document.getElementById('del_li');
//  	     var delA=delLi.getElementsByTagName('a');
//		 var daUserid=document.getElementById('dauserid');
//		 var deuserid=document.getElementById('deuserid');	
//		 
//		 for(var i=0;i<delA.length;i++){	 
//	
//			    delA[i].onmouseover=function(){
//			 
//			       if(deuserid.value !=null && deuserid.value !=''){
//				   
//				      if(deuserid.value!=dauserid.value){
//					
//						 //alert("您不能删除不是自己的评论！")
//						 alert(deuserid.value+"     "+dauserid.value)
//						   
//					    }
//							   
//		          }else{
//			           alert("您未登录，不能删除评论！")
//				  
//				       }
//			   }
//		 }
//	 }
			 	
	</script>
	
	
  </head>
  
  <%
        request.setCharacterEncoding("utf-8");
    
          String blogid=request.getParameter("blogid");
          int id=Integer.parseInt(blogid);
          
          
          BlogcontentTbBean bcbean=new BlogcontentTbBean();
          
          BlogcontentTb bc_tb=bcbean.getBlonContentById(id);
          
          
          
         CommentTbBean cobean=new CommentTbBean();
         
         CommentTb co_tb=cobean.getAllCommentByBlogID(id);
         
 
   %>
  
  
  
  <body>
    <div id="logo">
    <img src="images/logo.png"></img><input type="hidden" value="${sessionScope.user_id}" name="userid">   
   </div>
   <div id="nav">
      <ul>
       <li><a href="index.jsp">首页</a></li>
       <li><a href="rgzn.jsp">人工智能</a></li>
       <li><a href="javasript:;">大数据</a></li>
       <li><a href="detail.jsp">云计算</a></li>
       <li><a href="jiqiren.jsp">机器人</a></li>
       <li><a href="qiche.jsp">智能汽车</a></li>
       <li><a href="javasript:;">区块链</a></li>
       <li><a href="znjj">智能家居</a></li>
       <li><a href="javasript:;">物联网</a></li>
       <li><a href="javasript:;">其它</a></li>
       <li><a href="login.jsp">登录</a></li>
      </ul>
   
   
   </div>
   <div id="main">
   
   <div id="left">
   
   
   <div id="list_show" >
           
         <div id="user_mess" style="width:320px; height:120px; margin-top:5px;"> 
           <a href="javasript:;"><img src="<%=bc_tb.getUserTb().getUserHeader() %>" style="width:80px; height:80px; border:1px solid #FFFFFF; border-radius:50px; float:left;"></a>
           <span id="sp1a"><a href="javasript:;" style="float:left; text-decoration:none; display:block; margin-top:6px;" id="ssa">&nbsp;&nbsp;博主：<%=bc_tb.getUserTb().getUserName() %></a></span>
             <div id="ss" style="width:200px; height:80px; float:left; margin-top:10px; margin-left:14px;">
                <blockquote>
                  <p><a href="javasript:;" style="text-decoration:none; float:left; color:#808080;">参与：556</a>
                    <a href="javasript:;" style="text-decoration:none; clear:both; float:left; color:#808080;">评论：30</a>
                    <a href="javasript:;" style="text-decoration:none; clear:both; float:left; color:#808080;">支持：20</a>
                  </p>
                </blockquote>
           </div>
         </div>
         
      
       </div>
   
   </div>
   <div id="right">
   
   
   <span id="sp2a" style="text-align:center;"> <a href="#" style="text-decoration:none;"><h2><%=bc_tb.getBlogTitle()%></h2></a></span><br/><br/>
   
   <p>&nbsp;&nbsp;<%=bc_tb.getBlogContent()%></p>
   </div>
   
   <div id="tall">
   <h3>评论区>>>>>>></h3>
   <div id="for" style="width:100%; height:90px; border-top:1px dashed #7098CF;">
   
   <form action="detail_do.jsp" method="post" name="form3" id="form3">
     <input type="hidden" value="<%=bc_tb.getUserTb().getId()%>" name="user_id2" id="user_id2">
     <input type="hidden" value="${sessionScope.user_id}" name="user_id" id="user_id">
     <input type="hidden" value="<%=id%>" name="blog_id" id="blog_id">
    
     
   
     <textarea name="comment_text" id="comment_text" style="display:block; overflow:hidden; width:1000px; height:80px; border:1px solid #9020C1; float:left; font-size:18px; font-weight:bold;" cols="6" rows="300"></textarea>
   
    
     <br/><br/>
     <button type="button" id="bq1" name="" onclick="fabiao()" style="width:60px; height:37px; margin-left:10px; font-size:16px;"><a href="javascript:">发表</a></button>
   
   </form>
   </div>
   
   <div id="show_tall" style="width:100%; height:400px;">
   <% 
   
      Set set=bc_tb.getCommentTbs();
        Iterator iter=set.iterator();
      
       while(iter.hasNext()){
       
        
       CommentTb cbe=(CommentTb)iter.next();
   
    %>
  
   <li style="display:block; width:100%; height:80px; border:1px dashed #A2A7E0;" id="del_li">
    <input type="hidden" value="<%=cbe.getUserTb().getId()%>" id="dauserid">
    <input type="hidden" value="<%=cbe.getBlogcontentTb().getId()%>" name="blogid" id="blogid">
     <img src="<%=cbe.getUserTb().getUserHeader()%>" style="width:70px; height:70px; border:1px solid #FFFFFF; border-radius:50px; float:left; margin-left:5px;"></img>
     <span style="display:block; width:110px; height:20px; float:left; margin-right:10px; margin-left:5px; color:#424751;">昵称: <%=cbe.getUserTb().getUserName()%></span>
     <span style="display:block; width:140px; height:20px; float:left; margin-right:10px; color:#FD9013;">日期: <%=cbe.getCommentTime()%></span>
      <div id="ssv" style=" width:960px; height:50px; float:left; line-height:40px; text-align:left; margin-left:5px;"><%=cbe.getCommentText()%></div><br/><br/>&nbsp;<a href="delete_do.jsp?commentid=<%=cbe.getId()%>&userid=${sessionScope.user_id}&blogid=<%=id%>&userid2=<%=cbe.getUserTb().getId()%>">删除</a>
   </li>
   <br/>
   
   <% }%>
     
   
   
 
   </div>
  </div>
  </div>
  
  

  
  <%HibernateSessionFactory.closeSession(); %>
  </body>
 
</html>
