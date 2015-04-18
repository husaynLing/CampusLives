<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'activityapply.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0"> 
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/activityapply.css">

  </head>
  
  <body>
  <div class="c_apply">
   <form action="ActivityServlet" method="post">
        <table align="center" >
        <thead > <p align="center"><b>填写活动报名信息</b></p></thead>
        
             <tbody >
              <%  
               request.setCharacterEncoding("utf-8");
               response.setCharacterEncoding("utf-8");
               
	                 String ac_id1=(String)request.getParameter("v1");
	                String ac_name1=(String)request.getParameter("v2");
				 if (ac_name1!= null) { 
				
				ac_name1 = new String(request.getParameter("v2").getBytes("iso8859-1"),"utf-8"); 
				                                   
				                                     
				} 
				
				request.setAttribute("flag_apply_lov", 2);
                
               %>
             <tr>
                  <td>活动id：</td><td><input type="text" name="ac_id" value="<%=ac_id1%>"/></td> 
               
            </tr>
              <tr>
                  <td>活动名：</td><td><input type="text" name="ac_name" value="<%=ac_name1%>"/></td>  
                
               
            </tr>
              <tr>
                 <td>用户id：</td><td><input type="text" name="u_id" /></td>
               
            </tr>
            <tr>
                  <p> <td>用户姓名：</td><td><input type="text" name="u_name" /></td> </p> 
            </tr>
             <tr>
                  <p> <td>联系方式：</td><td><input type="text" name="u_tel" /></td> </p> 
            </tr>
            
            <tr >
                  <p align="center"> <td ></td>
                       <td><input type="submit" name="submitofapply" value="报名"/>
                            <input type="reset" name="resetofapply" value="重置"/>
                            <a href="#"><input type="button" name="returnofapply" value="返回"/></a>
                      </td>
                  </p> 
            </tr>
            
        </tbody>
     </table>
   </form>
  	</div>
  
  </body>
</html>
