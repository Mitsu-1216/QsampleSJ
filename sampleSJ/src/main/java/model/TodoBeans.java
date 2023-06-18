package model;

import java.io.Serializable;
import java.util.Date;

public class TodoBeans implements Serializable {
	private String userName;
	private String text;
	private Date deadline;

	public TodoBeans() {
	}

	public TodoBeans(String userName, String text,Date deadline) {
		this.userName = userName;
		this.text = text;
		this.deadline = deadline;
	}

	public String getUserName() {
		return userName;
	}

	public String getText() {
		return text;
	}
	
	public Date getDeadline() {
		return deadline;
	}
}