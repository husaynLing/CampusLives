<%@page import="com.servlet.ActivityServlet2"%>
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
    
    <title>My JSP 'activitydelete.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/activityapply.css">
   
  </head>
  
  <body>
   	<div class="c_apply">
   
   			
   <form style="width:600px; height:500px; overflow: scroll; position:absolute; ">
        <table align="center" >
        <thead > <p align="center"><b>删除活动</b></p></thead>
        
        		<%
        		 request.setCharacterEncoding("utf-8");
              response.setCharacterEncoding("utf-8");
             
	     
	      String sql="select * from LoveActivity";
	       Vector V=(Vector)ConnectionOperation.queryData(sql);//vector
	       Iterator it=V.iterator();
	     	int i=1;
	     	
	     	ActivityServlet2.is_delete=1;////////////////////////////////
	     	
	       while(it.hasNext()){
	        
	          Vector v=(Vector)it.next();
	       		
        		 %>
             <tbody>
             
              	 <p> <tr><td >活动号</td>  <td  ><input type="button"   id="ac_no"  value="<%=v.get(0)%>"/></td>   </tr> </p>
               	 <p> <tr><td >活动ID</td>  <td ><input type="button"  id="ac_id"  value="<%=v.get(1)%>" /></td>   </tr> </p>
                 <p> <tr><td>活动名称</td>  <td><input type="button"  id="ac_name"  value="<%=v.get(2)%>"/></td>   </tr> </p>
                 <p> <tr><td>活动时间</td>  <td><input type="button"  id="ac_content"  value="<%=v.get(3)%>"/></td>   </tr> </p>
                 <p> <tr><td>活动地点</td>  <td><input type="button" id="p_name"  value="<%=v.get(4)%>"/></td>   </tr> </p>
                 <p> <tr><td>负责人</td>  <td><input type="button"  id="ac_time"  value="<%=v.get(5)%>"/></td>   </tr> </p>
                 <p> <tr><td>负责人电话</td>  <td><input type="button"  id="ac_place"  value="<%=v.get(6)%>"/></td>   </tr> </p>
                 <p> <tr><td>活动内容</td>  <td><textarea  name="ac_content" rows="10" cols="50"  id="ac_content" name="ac_content"><%=v.get(7)%></textarea></td>   </tr> </p>
                 
                    <tr><td ></td> 
                         <td>
             		        <a><input type="submit" value="删除" name="delete" /></a>
                             <input type="button" id="return_id" value="返回"/>
				          </td>
				          <td>
                         </td>   
                    </tr> 
               
            </tr>
            <% 
            
                 	
	          }
	          
	          %>
	         
          </tbody>
         
         </table>
         
        </form>
     </div>
     </div>
  </body>
</html>
