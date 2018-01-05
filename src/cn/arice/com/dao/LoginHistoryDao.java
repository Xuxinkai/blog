package cn.arice.com.dao;
/**
 * 
 * @author Arice徐新凯
 *
 */

import java.util.List;

import cn.arice.com.bean.LoginHistoryBean;
import cn.arice.com.bean.UserInfoBean;

public interface LoginHistoryDao {
	public List<LoginHistoryBean> getAllLoginHistoryByUser(String userId);
	
	public int addLoginHistory(LoginHistoryBean hisBean);
	
	public LoginHistoryBean getLastLoginTimeByUser(UserInfoBean user);

}
