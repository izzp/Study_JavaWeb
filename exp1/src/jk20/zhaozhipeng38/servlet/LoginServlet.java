package jk20.zhaozhipeng38.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登录
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String userPwd = request.getParameter("userPwd");
		// 编码转换，否则汉字乱码
		String gender = new String(request.getParameter("gender").getBytes("iso-8859-1"), "utf-8");
		System.out.println(gender);
		if (userName.equals("admin") && userPwd.equals("1234") && gender.equals("男")) {
			// 用请求重定向
			response.sendRedirect("success.html");
			System.out.println("----ok----");

		} else {
			// 用请求转发
			request.getRequestDispatcher("failure.html").forward(request, response);
			System.out.println("----error----");
		}
	}
}
