<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.gxcme.blogProject.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delete_do.jsp' starting page</title>
    
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
       
       String Userid=request.getParameter("userid");
        String Userid2=request.getParameter("userid2");
       
       //System.out.print(Userid);
        String Blogid=request.getParameter("blogid");
          int blogid=Integer.parseInt(Blogid);
      // String Deuserid=request.getParameter("deuserid");
       String Commentid=request.getParameter("commentid");
       
       if(Userid !=null && Userid !=""){
       
       
       
       
       int userid=Integer.parseInt(Userid);
       int userid2=Integer.parseInt(Userid2);
     
       //int deuserid=Integer.parseInt(Deuserid);
       int commentid=Integer.parseInt(Commentid);
      
      if(userid==userid2){
     
    
            CommentTbBean cbb=new CommentTbBean();
              boolean res=cbb.deleteComment(commentid);
            
              response.sendRedirect("detail.jsp?blogid="+blogid);
              }else{%>
              <h2 style="color:red;">Error，不能删除不是自己的评论，3秒后返回上一页</h2> 
              <% response.setHeader("refresh","3;URL=detail.jsp?blogid="+blogid);} %>
              
              
              
            
    
    <%}else{%> 
    
    
      <h2 style="color:red;">Error，未登录不能删除评论。3秒后自动返回上一页</h2>
    
     <%
      response.setHeader("refresh","3;URL=detail.jsp?blogid="+blogid);
     }%>
  
  <body>
 
   
  </body>
</html>
