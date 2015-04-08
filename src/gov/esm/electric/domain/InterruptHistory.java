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