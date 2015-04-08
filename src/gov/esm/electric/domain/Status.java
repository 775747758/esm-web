package gov.esm.electric.domain;

import java.io.Serializable;

public class Status implements Serializable {
	private static final long serialVersionUID = 1L;

	private int id;

	private String code;

	private String name;

	public Status() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}