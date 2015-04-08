package gov.esm.electric.entity;

import java.util.Date;

public class InterruptHistoryVo {

	private int id;
	private String switchId;
	private String switchName;
	private String operatorName;
	
	
	


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSwitchId() {
		return switchId;
	}

	public void setSwitchId(String switchId) {
		this.switchId = switchId;
	}

	public String getSwitchName() {
		return switchName;
	}

	public void setSwitchName(String switchName) {
		this.switchName = switchName;
	}

	public String getOperatorName() {
		return operatorName;
	}

	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}

	public Date getInterruptTime() {
		return interruptTime;
	}

	public void setInterruptTime(Date interruptTime) {
		this.interruptTime = interruptTime;
	}

	public String getOperate() {
		return operate;
	}

	public void setOperate(String operate) {
		this.operate = operate;
	}

	private Date interruptTime;
	private String operate;

	@Override
	public String toString() {
		return "InterruptHistoryVo [id=" + id + ", switchId=" + switchId
				+ ", switchName=" + switchName + ", operatorName="
				+ operatorName + ", interruptTime=" + interruptTime
				+ ", operate=" + operate + "]";
	}
	
	

}
