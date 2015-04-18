package com.dbo;

//import static Library.AccessConnection.getCon;
import java.sql.*;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.bean.ActivityApply;
import com.bean.LoveActivity;

public class ConnectionOperation{
             private static  Connection con = null;
   	     private static   Statement sql = null;
	     private static ResultSet rs = null;
	      
	     public static void update(String update){ 
	    	   try{
	
	            con = AccessConnection.getCon();
	            sql = con.createStatement();
	            sql.executeUpdate(update);
	            con.close();
	           
	             }
	           catch(SQLException e)
	           {System.out.println("更新出错："+e); }
	     }
	   

    public static boolean f_isTrue(String str)
	{         boolean m=false;
	          try {
	           con = AccessConnection.getCon();
	           sql = con.createStatement();
	           rs=sql.executeQuery(str);
	            if(rs.next())
	             {
	                m=true;
	            }

               con.close();
          }
         catch (SQLException e4)
          {System.out.println("查询 出错;" + e4);  }
          return m;
    }
    ////////////////////////////////////////////////////////////
    //添加数据,增加活动或者申请
       public static boolean insertData(Object ob,int i){
	  	conn=AccessConnection.getCon();
	  	if(i==1){//插入活动表
		  	      LoveActivity loveactivity= (LoveActivity)ob;
	            try {
			         
			          //////////////////////////////////////////////////
		          String sql="insert into LoveActivity  values (?,?,?,?,?,?,?)";
		          PreparedStatement ps= conn.prepareStatement(sql);
		          ps.setString(1, loveactivity.ac_id);
		          ps.setString(2, loveactivity.ac_name);
		          ps.setString(3, loveactivity.ac_time);
		          ps.setString(4, loveactivity.ac_place);
		          ps.setString(5, loveactivity.p_name);
		          ps.setString(6, loveactivity.p_tel);
		          ps.setString(7, loveactivity.ac_content);
		          
		          int rs=ps.executeUpdate();
		          ps.close();
		          conn.close();
			          
			          if(rs>0)
			          {
			          return true;
			          }else{
			          return false;
			          }
		      	} catch (SQLException ex) {
		            
		      	}
	    	}//if
	  	    else{//插入报名表
	  		ActivityApply apply= (ActivityApply)ob;
	            try {
	  		  String sql="insert into ActivityApply  values (?,?,?,?,?)";
	          PreparedStatement ps= conn.prepareStatement(sql);
	          ps.setString(1, apply.ac_id);
	          ps.setString(2, apply.ac_name);
	          ps.setString(3, apply.u_id);
	          ps.setString(4, apply.u_name);
	          ps.setString(5, apply.u_tel);
	          
	          int rs=ps.executeUpdate();
	          ps.close();
	          conn.close();
	          
	          if(rs>0)
	          {
	          return true;
	          }else{
	          return false;
	          }
	      	} catch (SQLException ex) {
	            
	      }
	  		
	  		
	  	}//else
  return false;
  }
  
 


//删除数据,删除申请表的数据
  public static boolean deleteApply(int no){
  Connection conn= AccessConnection.getCon();
      try {
          Statement stmt=conn.createStatement();
          String sql="delete from ActivityApply where ap_no="+no+"";
          int rs=stmt.executeUpdate(sql);
          stmt.close();
          conn.close();
            if(rs>0)
          {
          return true;
          }else{
          return false;
          }
      } catch (SQLException ex) {
      }
  
  
  return false;
  }


//删除数据,删除活动表的数据
  public static boolean deleteActivity(int no){
  Connection conn= AccessConnection.getCon();
      try {
          Statement stmt=conn.createStatement();
          String sql="delete from ActivityApply where ap_no="+no+"";
          int rs=stmt.executeUpdate(sql);
          stmt.close();
          conn.close();
            if(rs>0)
          {
          return true;
          }else{
          return false;
          }
      } catch (SQLException ex) {
      }
  
  
  return false;
  }
  //修改数据
   public static boolean editData(){
  Connection conn= AccessConnection.getCon();
      try {
          Statement stmt=conn.createStatement();
          String sql="update  LoveActivity set ac_name=''where 'acid='";
          int rs=stmt.executeUpdate(sql);
          stmt.close();
          conn.close();
            if(rs>0)
          {
          return true;
          }else{
          return false;
          }
      } catch (SQLException ex) {
      }
  
  
  return false;
  }
   //总的方法可以更新数据
   public static boolean updateData(String sql)
   {
   Connection conn= AccessConnection.getCon();
      try {
          Statement stmt= conn.createStatement();
          int rs =stmt.executeUpdate(sql);
          stmt.close();
          conn.close();
             if(rs>0)
          {
          return true;
          }else{
          return false;
          }
      } catch (SQLException ex) {
          System.out.print(ex.toString());
      }
   return false;
   }
   
   //查询数据，查询活动或者报名情况
   public static Vector queryData(String sql)
   {
   Connection conn= AccessConnection.getCon();
   
   //声明保存查询结果的Vector对象
   Vector data=new Vector();
    try {
          Statement stmt= conn.createStatement();
          //执行查询sql语句返回查询的结果集
          ResultSet rs=stmt.executeQuery(sql);
          //rs结果集中还有下一条结果
          while(rs.next())
          {
          //保存查询结果集中每行数据的Vector对象
              Vector line= new Vector();
              //查询结果每一行数据保存在LIne对象中
               
              for(int i=1;i<=rs.getMetaData().getColumnCount();i++)
              {
              line.add(rs.getObject(i));
              ///////////////////////////////////////////////////////////////////
              System.out.print("\n line ="+rs.getObject(i).toString()+"\n");
              }
          //将每行数据的line对象添加到data对象中
              
              data.add(line);
             
          }
          
          rs.close();
          stmt.close();
          conn.close();
          return data;
      } catch (SQLException ex) {
          return null;
       }
   }      
   
   
   
   //--------------
    private static Connection  conn = null;
    private static PreparedStatement ps = null;
    private CallableStatement cs = null;
    private static AccessConnection db = new AccessConnection();
    
		    //活动查询
		  public static Vector activity_QueryData(String sql) {
		//     DBConnection db = new DBConnection()  ;  
		//     Connection conn ;
		     conn = AccessConnection.getCon();
		     Vector data = new Vector();  
		      PreparedStatement pst = null;
		      try {
		          pst=conn.prepareStatement(sql);
		          ResultSet rs = pst.executeQuery();
		          ResultSetMetaData rsmd=pst.getMetaData();
		          int columnCount=rsmd.getColumnCount();
		          while (rs.next()){
		          Vector line = new Vector();             
		          for(int i = 1;i <= columnCount;i++){     
		         line.add(rs.getObject(rsmd.getColumnLabel(i)));   
		         
		          }
		          data.add(line);
		
		          }
		          rs.close();
		          pst.close();
		          conn.close();
		          return data;
		      } catch (SQLException ex) {         
		          Logger.getLogger(AccessConnection.class.getName()).log(Level.SEVERE, null, ex);
		          return null;
		      }
		    
		}



    
}