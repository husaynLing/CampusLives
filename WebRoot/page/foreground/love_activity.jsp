<%@page import="com.dbo.ConnectionOperation"%>
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
    	                  <tr> <td><a href="page/background/add_activity.jsp"> [增加活动]</a></td>
    	                        <td><a href="page/background/delete_activity.jsp"> [删除活动]</a></td>
    	                  <tr> <td><a href="page/background/alter_activity.jsp"> [修改活动]</a></td>
    	                       <td><a href="page/foreground/check_cancel_apply.jsp"> [查看报名情况]</a></td></tr>
    	                  <tr> <td ><a href="#"><input type="hidden" value="[活动管理]" accesskey='<jsp:element name="table"></jsp:element>'/> </a></td></tr>
    	                  
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
    	         
    	          	 <form >
        <table >
        <thead > <p align="center"><b>爱心活动列表</b></p></thead>
             <tbody>
               <tr><td><b>活动ID</b></td><td align="center"><b>活动名</b></td><td><b>报名</b></td></tr>
         
           <%
              request.setCharacterEncoding("utf-8");
              response.setCharacterEncoding("utf-8");
             
             
              
             String sql="select * from LoveActivity";
	       Vector V=(Vector)ConnectionOperation.queryData(sql);//vector
	       Iterator it=V.iterator();
	     	int i=1;
	       while(it.hasNext()){
	        
	          Vector v=(Vector)it.next();
	       			i++;
	          
	             %>
	      <tr>
             <td><label ><%=v.get(1).toString() %></label></td>
             <td><a  href="page/foreground/look_activity.jsp?ac_id=<%=v.get(1).toString()%>&ac_name=<%=v.get(2).toString()%>&ac_content=<%=v.get(7).toString()%>" title="查看详情">
                       <label  ><%=v.get(2).toString() %></label>
                 </a>
              </td> <td align="center"><a title="报名活动" href="page/foreground/apply_activity.jsp?v1=<%=v.get(1).toString()%>&v2=<%=v.get(2).toString()%>"><label >+</label></a></td>
            </tr>        
	 
	            <%
	       
	           }
	           i--;
	            request.setAttribute("delete_no", i);//delete_activity.jsp
            %>
            
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
