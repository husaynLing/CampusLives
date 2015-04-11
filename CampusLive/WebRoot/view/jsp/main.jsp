<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>校园服务网站</title>
	
	<link rel="stylesheet" type="text/css" href="view/css/main.css">
	
  </head>
  <body>
  <div id="container" >
    <div id="header"></div>
    <div id="body">
    	<div class="user">
    	用户信息
    	</div>
    </div>
    <div id="footer"></div>
  </div>
  </body>
</html>
