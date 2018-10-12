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
    
    <title>My JSP 'detail_do.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
         request.setCharacterEncoding("utf-8");
         
         String Userid=request.getParameter("user_id");
         String Userid2=request.getParameter("user_id2");
         String Blogid=request.getParameter("blog_id");
         
        
         String comment_text=request.getParameter("comment_text");
         
         int user_id=Integer.parseInt(Userid);
         int user_id2=Integer.parseInt(Userid2);
         int blog_id=Integer.parseInt(Blogid);
         // request.setAttribute("blog_id",blog_id);
         
         CommentTbBean cb=new CommentTbBean();
         boolean isSuccess=cb.addComment(user_id,blog_id,comment_text,user_id2);  
        
         response.setHeader("refresh", "2;URL=detail.jsp?blogid="+blog_id);//3秒后自动跳转
        
        
         //response.sendRedirect("detail.jsp");
        
        %>
         
       
  <body>
    
      <p>您的评论已经发表！！等待跳转</p>
      

  </body>
   
</html>
