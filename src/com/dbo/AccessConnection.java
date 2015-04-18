package com.dbo;


import java.sql.*;
public class  AccessConnection{
    public AccessConnection(){}
  	public  static   Connection getCon(){
		Connection con = null;
		     String url = "jdbc:sqlserver://localhost:1433;databaseName=CampusLives";
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con=DriverManager.getConnection(url,"sa","646167465");

		}
		catch(Exception e){
			System.out.println("连接数据库出错;"+e);

		}
		if(con==null)System.out.print("111111111111111");
		return con;
	}

}