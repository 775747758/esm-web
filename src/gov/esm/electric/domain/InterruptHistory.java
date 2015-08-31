package gov.esm.electric.domain;

import java.io.Serializable;
import java.util.Date;

public class InterruptHistory implements Serializable {
	private static final long serialVersionUID = 1L;

	private int id;

	private Date interruptTime;

	private int operater;

	private String switchId;

	private int operate;
	
	
	/**断开*/
	public static final int STATUS_SWITCH_OPEN = 10;
	/**闭合*/
	public static final int STATUS_SWITCH_CLOSE = 11;
	/**闲置*/
	public static final int STATUS_SWITCH_UNUSE = 12;
	/**备用*/
	public static final int STATUS_SWITCH_RESERVE = 13;
	/**调试*/
	public static final int STATUS_SWITCH_DEBUG = 14;
	/**添加开关*/
	public static final int STATUS_SWITCH_ADDSWITCH = 15;
	/**删除开关*/
	public static final int STATUS_SWITCH_DELETESWITCH = 16;
	/**添加线路*/
	public static final int STATUS_SWITCH_ADDLINE = 17;
	/**删除线路*/
	public static final int STATUS_SWITCH_DELETELINE = 18;
	/**修改开关名称*/
	public static final int STATUS_SWITCH_EDITSWITCHNAME = 19;
	

	public InterruptHistory() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getInterruptTime() {
		return this.interruptTime;
	}

	public void setInterruptTime(Date interruptTime) {
		this.interruptTime = interruptTime;
	}

	public int getOperater() {
		return this.operater;
	}

	public void setOperater(int operater) {
		this.operater = operater;
	}

	public String getSwitchId() {
		return this.switchId;
	}

	public void setSwitchId(String switchId) {
		this.switchId = switchId;
	}

	public int getOperate() {
		return operate;
	}

	public void setOperate(int operate) {
		this.operate = operate;
	}

}