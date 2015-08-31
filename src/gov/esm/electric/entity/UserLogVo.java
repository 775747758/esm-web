package gov.esm.electric.entity;

import java.util.Date;
public class UserLogVo {
	private String operatorName;
	private String operate;
	private Date loginTime;
	private Date logoutTime;
	public String getOperatorName() {
		return operatorName;
	}
	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}
	public String getOperate() {
		return operate;
	}
	public void setOperate(String operate) {
		this.operate = operate;
	}
	public Date getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	public Date getLogoutTime() {
		return logoutTime;
	}
	public void setLogoutTime(Date logoutTime) {
		this.logoutTime = logoutTime;
	}
	@Override
	public String toString() {
		return "UserLogVo [operatorName=" + operatorName + ", operate="
				+ operate + ", loginTime=" + loginTime + ", logoutTime="
				+ logoutTime + "]";
	}
	
	
	
	
}
