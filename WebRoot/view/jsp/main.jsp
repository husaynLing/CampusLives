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
         <div id="header">
         </div> 
         <div id="body">
    	         <div id="nav">
                       <ul>
                       		<li>
                       				<a href="#">主页 </a>
                       				
                       		</li>
                       		<li>
                       				<a href="#">爱心活动主页</a>
                       				
                       		</li>
                       		<li>
                       				<a href="#">爱心活动报名</a>
                       				
                       		</li>
                       		<li>
                       				<a href="#">活动管理</a>
                       				<ul>
                       				    <li>
                       				        <a  href="#">添加活动</a>
                       				       
                       				    </li>
                       				      <li>
                       				        <a  href="#">删除活动</a>
                       				       
                       				    </li>
                       				     <li>
                       				        <a  href="#">修改活动</a>
                       				       
                       				    </li>
                       				</ul>
                       				
                       		</li>
                       		<li>
                       				<a href="#">处理活动报名</a>
                       				
                       		</li>
                       		<li>
                       				<a href="#">修改密码</a>
                       				 
                       		</li>
                       		
                       		
                       </ul>
              
                </div>
               
              
                
    	        <div class="c_div1">
    	                    用户信息。。。。
    	          <input type="text" value="aaaa"/>
    	         
    	                           
    	        </div>
    	        <div class="c_div2">
    	                    
    	        </div>
    	        <div class="c_div3">
    	                    
    	        </div>
    	         <div class="c_div4">
    	                    
    	        </div>
         </div>
         
            
         
         <div id="footer">
         </div>
  </div>
  </body>
</html>
