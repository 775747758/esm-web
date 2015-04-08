package gov.esm.electric.domain;

import java.io.Serializable;

public class UserRoleRelation implements Serializable {
	private static final long serialVersionUID = 1L;

	private int roleId;

	private int userId;

	public UserRoleRelation() {
	}

	public int getRoleId() {
		return this.roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}