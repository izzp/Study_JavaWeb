package com.mezzp.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.mezzp.beans.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取注册信息
		request.setCharacterEncoding("utf-8");
		String userName = request.getParameter("userName");
		String userPwd = request.getParameter("userPwd");
		int userAge =Integer.parseInt(request.getParameter("userAge"));
		String gender = request.getParameter("gender");
		
		User user=new User();
		user.setUserName(userName);
		user.setUserPwd(userPwd);
		user.setUserAge(userAge);
		user.setGender(gender);
		//获取application对象
		ServletContext app= request.getServletContext();
		Map<String, User> users = (Map<String, User>)app.getAttribute("users");
		if(users==null) {
			users = new HashMap<String,User>();
		}
		if(userName!=null&&users.get(userName)==null) {
			users.put(userName, user);
		}
		app.removeAttribute("users");
		app.setAttribute("users", users);
		response.sendRedirect("list.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
