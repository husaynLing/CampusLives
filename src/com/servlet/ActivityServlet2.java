
/*
 *  [check_cancel_apply.jsp]
 *  [delete_activity.jsp]
 * 
 * */



package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbo.ConnectionOperation;

public class ActivityServlet2 extends HttpServlet {
public static int is_delete=0;
	/**
	 * Constructor of the object.
	 */
	public ActivityServlet2() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		int ap_no=Integer.parseInt(request.getParameter("ap_no").toString());
		System.out.print("\n ap_no="+ap_no);
		boolean b=ConnectionOperation.deleteApply(ap_no);
	
		 String s1=new String("..cancel apply success".getBytes("iso8859-1"),"utf-8"); 
		 String s2=new String("..cancel apply success".getBytes("iso8859-1"),"utf-8"); 
		if(b){
			out.print(s1);
		}else{
			out.print(s2);
		}
		
		
		if(request.getParameter("where")!=null&&request.getParameter("where").toString()=="delete_ac"){
		
		     String no=request.getParameter("ac_no").toString();
             int NO=Integer.parseInt(no);
             ConnectionOperation.deleteActivity(NO);
		
		}
		
		
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
