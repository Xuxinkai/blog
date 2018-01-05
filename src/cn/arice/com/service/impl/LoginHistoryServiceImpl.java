package cn.arice.com.service.impl;

import java.util.List;

import cn.arice.com.bean.LoginHistoryBean;
import cn.arice.com.bean.UserInfoBean;
import cn.arice.com.dao.LoginHistoryDao;
import cn.arice.com.dao.impl.LoginHistoryDaoImpl;
import cn.arice.com.service.LoginHistoryService;
import cn.arice.com.util.DateHelper;
import cn.arice.com.util.IPToAddr;
import cn.arice.com.util.Random100;

public class LoginHistoryServiceImpl implements LoginHistoryService {
	private LoginHistoryDao lhDao = new LoginHistoryDaoImpl();
	@Override
	public List<LoginHistoryBean> getAllLoginHistoryByUser(String userId) {
		return lhDao.getAllLoginHistoryByUser(userId);
	}

	@Override
	public int addLoginHistory(LoginHistoryBean hisBean) {
		LoginHistoryBean lhBean = hisBean;
		lhBean.setLoginId(DateHelper.getDateTimeForNumber()+Random100.getrandom100());
		lhBean.setVisitaddr(IPToAddr.jiexiip(hisBean.getLoginIp()));
		lhBean.setLoginTime(DateHelper.getDateTimeFormat());
		return lhDao.addLoginHistory(lhBean);
	}

}
