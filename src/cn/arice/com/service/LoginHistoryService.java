package cn.arice.com.service;

import java.util.List;

import cn.arice.com.bean.LoginHistoryBean;
import cn.arice.com.bean.UserInfoBean;

public interface LoginHistoryService {
	public List<LoginHistoryBean> getAllLoginHistoryByUser(String userId);
	
	public int addLoginHistory(LoginHistoryBean hisBean);
}
