package gov.esm.electric.domain;

public class SwitchStream {
	private int id;
	private String stationId;
	private String switchStream;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStationId() {
		return stationId;
	}
	public void setStationId(String stationId) {
		this.stationId = stationId;
	}
	public String getSwitchStream() {
		return switchStream;
	}
	public void setSwitchStream(String switchStream) {
		this.switchStream = switchStream;
	}

}
