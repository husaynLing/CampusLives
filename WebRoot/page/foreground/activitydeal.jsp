<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ActivityApply.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
      <form>
        <table align="center">
        <thead align="right" > <b>爱心活动列表</b></thead>
             <tbody>
               
             <tr>
                活动1：谁的风格色 为人格侮辱过而非  <a href="#">详情</a> 
               
            </tr>
            <tr>
                                                活动2：谁法国电信辅导费和地方很多  <a  href="#">详情</a> 
</tr></tbody></table></form></body></html>
