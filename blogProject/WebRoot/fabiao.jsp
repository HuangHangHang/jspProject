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
    
    <title>My JSP 'fabiao.jsp' starting page</title>
    
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
String id=request.getParameter("user_id");
int ids=Integer.parseInt(id);
String title=request.getParameter("text1");
String centert=request.getParameter("text2");


   Register a=new Register();
  boolean list=a.fabiao(ids,title,centert);
  if(list)
  {
  response.setHeader("refresh","2;URL=singleblog.jsp?uid="+ids);
  }else{
  
  response.setHeader("refresh","2;URL=singleblog.jsp?uid="+ids);
  }
  
 %>
 
 <body>

    <%=list?"发布成功":"发布失败"%>
  </body>
</html>
