package com.mezzp.serlvet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

public class SecondServlet implements Servlet {
	
	private String userName;
	private String userPwd;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init方法");
		//ServletConfig
		userName = config.getInitParameter("user");
		userPwd = config.getInitParameter("password");
		System.out.println(userName+"------"+userPwd);
		//ServletContext
		ServletContext application = config.getServletContext();
		application.setAttribute("age" ,"20");
		System.out.println(application.getAttribute("age"));
		System.out.println("url"+application.getInitParameter("url"));
		System.out.println("部署路径"+application.getRealPath("/"));
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service2");
		String userName= req.getParameter("userName");
		String userPwd=req.getParameter("userPwd");
		System.out.println("--------------------");
		System.out.println(userName+userPwd);
		System.out.println("--------------------");
		//输出到浏览器
		PrintWriter outPrintWriter=res.getWriter();
		//res.setContentType("application/msword");
		outPrintWriter.println("<h1>hello<h1>");
		System.out.println("--------------------");
		//跳转
//		HttpServletResponse response = (HttpServletResponse)res;
//		response.sendRedirect("index.jsp");
		
	}

}
