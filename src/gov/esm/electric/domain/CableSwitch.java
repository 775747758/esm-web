package gov.esm.electric.domain;

import java.io.Serializable;

/**
 * 表示一个开关
 * 
 * @author XueLiang
 * @date 2014年11月27日
 */
public class CableSwitch implements Serializable {
	private static final long serialVersionUID = 1L;

	private String id;

	private String code;

	private String name;

	private String properties;

	private int status;

	private int type;// 1:刀闸　2:普通开关　3:握手开关

	public CableSwitch() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
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

	public String getProperties() {
		if(properties==null) {
			return "";
		}
		return this.properties;
	}

	public void setProperties(String properties) {
		this.properties = properties;
	}

	public int getStatus() {
		return this.status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null) {
			return false;
		} else {
			CableSwitch cs = (CableSwitch) obj;
			return this.id.equals(cs.getId());
		}
	}

	@Override
	public int hashCode() {
		return this.id.hashCode();
	}
}