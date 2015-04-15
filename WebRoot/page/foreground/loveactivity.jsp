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
	
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script src="js/LoveActivity.js" type="text/javascript"></script>
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
                       				        <a  href="view/jsp/ActivityApply.jsp">添加活动</a>
                       				       
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
    	        <br>
    	        
    	            <table align="center">
    	                    <th>用户信息:</th>
    	            		<tr >
    	            	         <td>姓名</td>
    	                         <td>asdsdas</td>
    	                   </tr>
    	                   	<tr >
    	            	         <td>年龄</td>
    	                         <td>asdsdas</td>
    	                   </tr>
    	                   	<tr >
    	            	        <td>性别</td>
    	                        <td>asdsdas</td>
    	                   </tr>
    	                   <tr >
    	            	       <td>联系方式</td>
    	                       <td>asdsdas</td>
    	                  </tr>
    	            </table>               
    	        </div>
    	       
    	        <div class="c_div2">
    	                    
    	        </div>
    	       <div class="c_div3">
    	             <div id="middle_b">
    	                      <div id="in_middle_b">
    	                             <div id="d1">
    	                             	 <a ><img  width="200px" height="200px" src="image/2.jpg" /></a>
    	                                 <a ><img  width="200px" height="200px" src="image/3.jpg" /></a>
    	                                 <a ><img  width="200px" height="200px" src="image/4.jpg" /></a>
    	                                 <a ><img  width="200px" height="200px" src="image/5.jpg" /></a>  
    	                               
    	                             </div>
    	          .                       <div id="d2">
    	                                  </div>
    	                      </div>
    	              </div>
    	       </div>
    	       <p align="center"><b>hello Welcome to here..</b></p>
    	       <div class="c_div4">
    	         
    	          	 <form>
        <table >
        <thead > <p align="center"><b>爱心活动列表</b></p></thead>
             <tbody>
               
             <tr>
                 <p> 活动1：谁的风格色 为人格侮辱过而非  <a href="#">详情</a></p> 
               
            </tr>
            <tr>
                 <p>活动2：谁法国电信辅导费和地方很多  <a  href="#">详情</a></p> 
            </tr>
             <tr>
                 <p>活动3：谁法发过一份费和地方很多  <a  href="#">详情</a></p> 
            </tr>
            <jsp:include page="activityapply.jsp" flush="true"></jsp:include>
        </tbody>
     </table>
   </form>
    	          
    	       </div>
         </div>
         
            
         
         <div id="footer">
         </div>
  </div>
  </body>
</html>
