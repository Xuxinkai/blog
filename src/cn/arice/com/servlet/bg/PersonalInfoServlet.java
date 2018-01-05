package cn.arice.com.servlet.bg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.arice.com.bean.UserInfoBean;
import cn.arice.com.service.UserInfoService;
import cn.arice.com.service.impl.UserInfoServiceImpl;

public class PersonalInfoServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取用户id
		String userId = request.getParameter("userId");
		// 获取当前用户信息
		UserInfoService userInfoService = new UserInfoServiceImpl();
		UserInfoBean user = userInfoService.getUserInfoById(userId);

		// 传输数据
		request.setAttribute("userBean", user);

		// 内部转发给前台
		request.getRequestDispatcher("personal_info.jsp").forward(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
