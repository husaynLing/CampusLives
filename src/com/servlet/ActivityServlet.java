package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ActivityApply;
import com.bean.LoveActivity;
import com.dbo.ConnectionOperation;

public class ActivityServlet extends HttpServlet {

public static int flag_apply_lov=0;
	/**
	 * Constructor of the object.
	 */
	public ActivityServlet() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		//判断request.getAttribute 是否为null
		flag_apply_lov=Integer.parseInt(String.valueOf(request.getAttribute("flag_apply_lov")==null?2:1));
		System.out.print("flag_apply_lov="+flag_apply_lov);/////////////////////////////////////////
		//这个if 是判断从 主页 刚刚 进入 爱心活动页面时，以初始化 lova_activity.jsp .
		if(flag_apply_lov==1&&request.getParameter("add_submit").equals("增加")){
			flag_apply_lov=0;
			//if(request.getParameter("add_submit")!=null){
			LoveActivity   loveactivity=new LoveActivity();
				String ac_id= request.getParameter("ac_id").toString();
				String ac_name=request.getParameter("ac_name").toString();
				String ac_time=request.getParameter("ac_time").toString();
				String ac_place=request.getParameter("ac_place").toString();
				String p_name=request.getParameter("p_name").toString();
				String p_tel=request.getParameter("p_tel").toString();
				String ac_content=request.getParameter("ac_content").toString();
				
				loveactivity.setAc_id(ac_id);
				loveactivity.setAc_name(ac_name);
				loveactivity.setAc_time(ac_time);
				loveactivity.setAc_place(ac_place);
				loveactivity.setP_name(p_name);
				loveactivity.setP_tel(p_tel);
				loveactivity.setAc_content(ac_content);
				
				boolean b=ConnectionOperation.insertData(loveactivity,1);
				if(b){
				out.print("增加活动成功");
				}else{
					out.print("增加活动失败");
				}
		}
		
		//这个if是判断 是否从 活动报名页面 传来的数据,
		if(flag_apply_lov==2&&request.getParameter("submitofapply").equals("报名")){
			flag_apply_lov=0;
			String ac_id=request.getParameter("ac_id").toString();
			String ac_name=request.getParameter("ac_name").toString();
			String u_id=request.getParameter("u_id").toString();
			String u_name=request.getParameter("u_name").toString();
			String u_tel=request.getParameter("u_tel").toString();
			
		    ActivityApply apply=new ActivityApply();
			
			apply.setAc_id(ac_id);
			apply.setAc_name(ac_name);
			apply.setU_id(u_id);
			apply.setU_name(u_name);
			apply.setU_tel(u_tel);
			
			boolean b=ConnectionOperation.insertData(apply,2);
			if(b){
			out.print("报名成功");
			}else{
				out.print("报名失败");
			}
			
		}
		
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
