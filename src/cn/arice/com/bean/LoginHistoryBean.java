package cn.arice.com.bean;
/**
 * 
 * 
 * @author Arice徐新凯
 *
 */
public class LoginHistoryBean {
	private String loginId;
	private String loginUserId;
	private String loginTime;
	private String loginIp;
	/**ip对应的真实地址*/
	private String visitaddr;
	public LoginHistoryBean() {
		// TODO Auto-generated constructor stub
	}
	
	
	public LoginHistoryBean(String loginId, String loginUserId, String loginTime, String loginIp, String visitaddr) {
		super();
		this.loginId = loginId;
		this.loginUserId = loginUserId;
		this.loginTime = loginTime;
		this.loginIp = loginIp;
		this.visitaddr = visitaddr;
	}
	public String getVisitaddr() {
		return visitaddr;
	}
	public void setVisitaddr(String visitaddr) {
		this.visitaddr = visitaddr;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getLoginUserId() {
		return loginUserId;
	}
	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}
	public String getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}
	public String getLoginIp() {
		return loginIp;
	}
	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}
	
	

}
