package gov.esm.electric.domain;

import java.io.Serializable;

public class Permission implements Serializable {
	private static final long serialVersionUID = 1L;

	private int id;

	private String name;

	private String url;

	private String description;

	private int leaderId;

	private int seq;

	public Permission() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public int hashCode() {
		return this.id;
	}

	public boolean equals(Object obj) {
		if (obj == null) {
			return Boolean.FALSE.booleanValue();
		}
		Permission permission = (Permission) obj;
		return this.id == permission.getId();
	}

	public int getLeaderId() {
		return leaderId;
	}

	public void setLeaderId(int leaderId) {
		this.leaderId = leaderId;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}
}