package cn.arice.com.servlet.bg;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.arice.com.bean.LoginHistoryBean;
import cn.arice.com.bean.UserInfoBean;
import cn.arice.com.service.LoginHistoryService;
import cn.arice.com.service.UserInfoService;
import cn.arice.com.service.impl.LoginHistoryServiceImpl;
import cn.arice.com.service.impl.UserInfoServiceImpl;

public class HistoryInfoServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//获取用户Id
		String userId = request.getParameter("userId");
		LoginHistoryService loginHistoryService = new LoginHistoryServiceImpl();
		List<LoginHistoryBean> lhs = loginHistoryService.getAllLoginHistoryByUser(userId);
		//获取当前用户信息
		UserInfoService userInfoService = new UserInfoServiceImpl();
		UserInfoBean user = userInfoService.getUserInfoById(userId);
		
		request.setAttribute("lhs", lhs);
		request.setAttribute("user", user);
		request.getRequestDispatcher("history_info.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
