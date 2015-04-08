package gov.esm.electric.domain;

import java.io.Serializable;

public class LineSwitchRelation implements Serializable {
	private static final long serialVersionUID = 1L;

	private String lineId;

	private String switchId;

	public String getLineId() {
		return this.lineId;
	}

	public void setLineId(String lineId) {
		this.lineId = lineId;
	}

	public String getSwitchId() {
		return this.switchId;
	}

	public void setSwitchId(String switchId) {
		this.switchId = switchId;
	}

}