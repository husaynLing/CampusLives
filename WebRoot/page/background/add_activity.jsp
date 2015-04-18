<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'activityadd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/activityapply.css">

  </head>
  
  <body>
   			<div class="c_apply">
   <form  action="ActivityServlet" method="post">
        <table align="center" >
        <thead > <p align="center"><b>增加活动</b></p></thead>
        
             <tbody >
              	 
              	 <p> <tr><td>活动ID</td>  <td><input type="text"  id="ac_id" name="ac_id"/></td>   </tr> </p>
                 <p> <tr><td>活动名称</td>  <td><input type="text"  id="ac_name" name="ac_name" /></td>   </tr> </p>
                 <p> <tr><td>活动时间</td>  <td><input type="text"  id="ac_time"  name="ac_time" /></td>   </tr> </p>
                 <p> <tr><td>活动地点</td>  <td><input type="text"  id="ac_place" name="ac_place"/></td>   </tr> </p>
                 <p> <tr><td>负责人姓名</td>  <td><input type="text" id="p_name"  name="p_name" /></td>   </tr> </p>
                  <p> <tr><td>负责人电话</td>  <td><input type="text" id="p_tel" name="p_tel"/></td>   </tr> </p>
                  <tr><td>活动内容</td>  <td><textarea  name="ac_content" rows="10" cols="50"  id="ac_content" name="ac_content"></textarea>
                                        </td>   
                  </tr>
                  <p> <tr><td ><a title="上一个"> <input type="button" id="add_previous" value="<"/></a></td>
                          <td><a href="ActivityServlet2">
                          <input type="submit" value="增加"  name="add_submit"/></a>
                               <input type="reset" id="add_reset" value="重置"/>
                                <input type="button" id="add_return" value="返回"/></td>  

                          <td ><a title="下一个"> <input type="button" id="add_next" value=">"/></a></td>
                      </tr>
                  </p>
            </tr>
           
          </tbody>
          
         </table>
         
        </form>
     </div>
   			
   
  </body>
</html>
