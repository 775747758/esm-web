package gov.esm.electric.domain;

public class CableSwitchRelation {

	private int id;
	private String switchId;
	private String childSwitchId;
	private int seq;

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

	public String getChildSwitchId() {
		return childSwitchId;
	}

	public void setChildSwitchId(String childSwitchId) {
		this.childSwitchId = childSwitchId;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

}
