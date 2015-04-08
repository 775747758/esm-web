package gov.esm.electric.web.circuit;

import java.io.Serializable;

public class JsonBean implements Serializable {

	private static final long serialVersionUID = -3734421553235865057L;

	private boolean success = true;
	private String msg = "";
	private Object obj;

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

}
