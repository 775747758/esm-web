package gov.esm.electric.entity;

import gov.esm.electric.domain.User;

public class UserVo extends User {
	private static final long serialVersionUID = -1171665524907881124L;
	private int roleId;
	private String roleName;
	private String statusName;

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

}
