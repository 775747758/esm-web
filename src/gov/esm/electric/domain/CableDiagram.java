package gov.esm.electric.domain;

import java.util.Date;

/**
 * 
 * @author XueLiang
 * @date 2014年11月29日
 */
public class CableDiagram {
	private int id;
	private String html;
	private Date createTime;
	private int operater;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHtml() {
		return html;
	}

	public void setHtml(String html) {
		this.html = html;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public int getOperater() {
		return operater;
	}

	public void setOperater(int operater) {
		this.operater = operater;
	}
}
