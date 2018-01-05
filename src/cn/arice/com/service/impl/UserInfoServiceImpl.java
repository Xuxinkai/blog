package cn.arice.com.service.impl;

import java.util.List;

import cn.arice.com.bean.UserInfoBean;
import cn.arice.com.dao.impl.UserInfoDaoImpl;
import cn.arice.com.service.UserInfoService;
/**
 * 
 * @author Arice ���¿�
 * @description blog:cn.arice.com.service.impl:UserInfoServiceImpl.java
 * @version 1.0
 * @data 2016-5-27
 */
public class UserInfoServiceImpl implements UserInfoService {
	UserInfoDaoImpl userDao = new UserInfoDaoImpl();

	public UserInfoBean getUserInfoById(String userId) {
		// TODO Auto-generated method stub
		return userDao.getUserInfoById(userId);
	}

	public int updatePwdById(String userId, String newPwd) {
		// TODO Auto-generated method stub
		return userDao.updatePwdById(userId, newPwd);
	}

	public boolean login(String loginname, String password) {
		// TODO Auto-generated method stub
		return userDao.login(loginname, password);
	}

	public String getIdByName(String loginname) {
		// TODO Auto-generated method stub
		return userDao.getIdByName(loginname);
	}

	public List<UserInfoBean> getAllUserInfo() {
		// TODO Auto-generated method stub
		return userDao.getAllUserInfo();
	}

	public int updateLoginTime(String userId, String time) {
		// TODO Auto-generated method stub
		return userDao.updateLoginTime(userId, time);
	}

	public int updateUserInfoById(UserInfoBean user) {
		// TODO Auto-generated method stub
		return userDao.updateUserInfoById(user);
	}

	@Override
	public int addUser(UserInfoBean user) {
		// TODO Auto-generated method stub
		return userDao.addUser(user);
	}

}
