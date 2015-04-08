package gov.esm.electric.domain;

/**
 * 表示一条线路的一段线路
 * 
 * @author XueLiang
 * @date 2014年11月27日
 */
public class CableLinePart {
	private int id;
	private String code;
	private String name;
	private int status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
