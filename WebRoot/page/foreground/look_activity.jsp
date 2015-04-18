<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'look_activity.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/activityapply.css">

  </head>
  
  <body>
    
		<div class="c_apply">
   <%
        			  request.setCharacterEncoding("utf-8");
        			  response.setCharacterEncoding("utf-8");
        			  
        			  String ac_id=request.getParameter("ac_id").toString();
        			  String ac_name=new String(request.getParameter("ac_name").getBytes("iso8859-1"),"utf-8");
        			   String ac_content=new String(request.getParameter("ac_content").getBytes("iso8859-1"),"utf-8");
        			   
        			  
        			  
        			 %>
   			
      <form>
         <table align="center" >
           <thead > <p align="center"><b><%=ac_name %></b></p></thead>
        			
             <tbody >
              	  <tr><td>活动ID</td>  <td><input type="button"   id="ac_id" value="<%=ac_id %>" /></td>   </tr> 
               	  <tr>
               	  <td colspan="2">
               	    <textarea rows="10" cols="50" > 
               	       <%=ac_content%>
               	    </textarea>
               	  </td>
               	  </tr>
               	  <tr><td> <input type="button" value="返回"/></td></tr>
              
          </tbody>
          
         </table>
         
        </form>
     </div>
  </body>
</html>
