package com.dbo;

import java.sql.*;

public class ConnectionManager {
	private static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	private static String DatabaseName="test";
	private static String USER_NAME="root";
	private static String PASSWORD="1234";	
	private static final String DATABASE_URL = "jdbc:mysql://localhost:3309/"+DatabaseName;//mysql鏈夋墍涓嶄竴鏍风殑鍦版柟鍦ㄨ繖涓暟鎹簱杩炴帴璺緞銆�
	
	//鏁版嵁搴撻摼鎺�
	public static Connection getConnection(){
		
		Connection conn = null;
		try {
			Class.forName(DRIVER_CLASS);
			conn = DriverManager.getConnection(DATABASE_URL,USER_NAME,PASSWORD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	
	//鍏抽棴杩炴帴
	public static void closeConnection(Connection conn){
		try {
			if(conn!=null&&!(conn.isClosed())){		
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	
	//鍏抽棴缁撴灉闆�
	public static void closeResultSet(ResultSet res){
		if(res!=null){
			
			try {
				res.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			res=null;
		}
		
	}
	
	
	//鍏抽棴璇彞
	public static void closeStatement(PreparedStatement ps){
		if(ps!=null){
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ps = null;
		}
		
	}
}
