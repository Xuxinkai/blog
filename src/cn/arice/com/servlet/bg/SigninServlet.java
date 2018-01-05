package cn.arice.com.servlet.bg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.arice.com.bean.LoginHistoryBean;
import cn.arice.com.service.LoginHistoryService;
import cn.arice.com.service.UserInfoService;
import cn.arice.com.service.impl.LoginHistoryServiceImpl;
import cn.arice.com.service.impl.UserInfoServiceImpl;

public class SigninServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		UserInfoService userInfoService = new UserInfoServiceImpl();
		//判断登陆
		boolean login = userInfoService.login(username, pwd);
		if(login){
			out.print("OK");
			
			//登陆成功写session
			request.getSession().setAttribute("userId", userInfoService.getIdByName(username));
			//记录登录历史
			LoginHistoryService loginHistoryService = new LoginHistoryServiceImpl();
			loginHistoryService.addLoginHistory(new LoginHistoryBean(null,userInfoService.getIdByName(username) , null, "121.199.46.153", null));
		}else{
			out.print("ERROR");
			
		}
		
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
