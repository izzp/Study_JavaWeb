package caztc.zhaozhipeng.exp4.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import caztc.zhaozhipeng.exp4.dao.UserDao;

/**
 * 登录功能
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDao userDao = new UserDao();

	public LoginServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = new String(request.getParameter("userName").getBytes("iso-8859-1"), "utf-8");
		String userPwd = request.getParameter("userPwd");

		try {
			if (userDao.getUserByNameAndPassword(userName, userPwd) != null) {
				HttpSession session = request.getSession(true);
				session.removeAttribute("uName");
				session.setAttribute("uName", userName);
				response.sendRedirect("success.jsp");
			} else {
				response.sendRedirect("login.jsp");
			}
		} catch (Exception e) {

		}
		doGet(request, response);
	}

}
