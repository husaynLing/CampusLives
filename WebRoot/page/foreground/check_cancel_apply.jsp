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
    
    <title>My JSP 'lookapply.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/activityapply.css">
	

  </head>
  
  <body>
		<div class="c_apply">
   <form>
        <table align="center" border="1">
        <thead > <p align="center"><b>报名详情</b></p></thead>
        
             <tbody >
                <tr><td>申请号</td>  <td>活动ID</td>   <td>活动名</td>    <td>用户</td> <td>用户电话</td>  <td></td></tr> 
                <!--  
                   <tr>
             			<td>56567</td>  <td>5665</td>   <td>666</td>    <td>6666</td> <td>13716228855</td> <td><a href="#">取消报名</a></td>
                   </tr> 
              -->
                <%
              request.setCharacterEncoding("utf-8");
              response.setCharacterEncoding("utf-8");
              
             String sql="select * from ActivityApply where u_id='u201'";/////////////////////////
	       Vector V=(Vector)ConnectionOperation.queryData(sql);//vector
	       Iterator it=V.iterator();

	       while(it.hasNext()){

	          Vector v=(Vector)it.next();

	           %>
	      <tr>
             <td><label ><%=v.get(0).toString() %></label></td>
             <td><label ><%=v.get(1).toString() %></label></td>
             <td><label ><%=v.get(2).toString() %></label></td>
             <td><label ><%=v.get(3).toString() %></label></td>
             <td><label ><%=v.get(4).toString() %></label></td>
             <td><label ><%=v.get(5).toString() %></label></td>
            <td><a  href="ActivityServlet2?ap_no=<%=v.get(0).toString()%>" title="取消报名" >取消报名</a></td>
                 
	       <%
              }
	         
	           
            %>
              
            </tr>
           <tr> <td></td> <td></td><td></td> <td></td> <td></td> <td></td> 
                 <td><a href="#">返回</a></td></tr>
          </tbody>
          
         </table>
         
        </form>
     </div>
           
  </body>
</html>
