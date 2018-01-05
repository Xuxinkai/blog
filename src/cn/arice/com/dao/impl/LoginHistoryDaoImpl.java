package cn.arice.com.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.arice.com.bean.LoginHistoryBean;
import cn.arice.com.bean.UserInfoBean;
import cn.arice.com.bean.VisitBean;
import cn.arice.com.dao.LoginHistoryDao;
import cn.arice.com.util.JdbcSourceUtil;

public class LoginHistoryDaoImpl implements LoginHistoryDao {

	@Override
	public List<LoginHistoryBean> getAllLoginHistoryByUser(String userId) {
		QueryRunner runner = JdbcSourceUtil.getQueryRunner();
		String sql = "select * from loginhistory where loginUserId='"+userId+"' order by loginId desc;";
		List<LoginHistoryBean> listlh = null;
		try {
			listlh = runner.query(sql, new BeanListHandler<LoginHistoryBean>(LoginHistoryBean.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listlh;
	}

	@Override
	public int addLoginHistory(LoginHistoryBean hisBean) {
		QueryRunner runner = JdbcSourceUtil.getQueryRunner();
		String sql = "insert into loginhistory values(?,?,?,?,?)";
		Object[] obj = new Object[]{hisBean.getLoginId(),hisBean.getLoginUserId(),hisBean.getLoginTime(),hisBean.getLoginIp(),hisBean.getVisitaddr()};
		int count = 0;
		try {
			count = runner.update(sql,obj);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public LoginHistoryBean getLastLoginTimeByUser(UserInfoBean user) {
		QueryRunner runner = JdbcSourceUtil.getQueryRunner();
		String sql = "SELECT * FROM loginhistoryWHERE loginUserId =  '"+user.getUserid()+"' ORDER BY loginId DESC LIMIT 0 , 1;";
		LoginHistoryBean lh = null;
		try {
			lh = runner.query(sql, new BeanHandler<LoginHistoryBean>(LoginHistoryBean.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lh;
	}

}
