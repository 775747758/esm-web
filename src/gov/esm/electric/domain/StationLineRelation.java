package gov.esm.electric.domain;

import java.io.Serializable;

public class StationLineRelation implements Serializable {
	private static final long serialVersionUID = 1L;

	private int id;

	private int lineId;

	private int stationId;

	public StationLineRelation() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLineId() {
		return this.lineId;
	}

	public void setLineId(int lineId) {
		this.lineId = lineId;
	}

	public int getStationId() {
		return this.stationId;
	}

	public void setStationId(int stationId) {
		this.stationId = stationId;
	}

}