package gov.esm.electric.domain;

public class CableSwitchDownStream {
	private int id;
	private String switchId;
	private String downstream;

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

	public String getDownstream() {
		return downstream;
	}

	public void setDownstream(String downstream) {
		this.downstream = downstream;
	}

}
