package model;

import java.io.Serializable;

public class TodoBeans implements Serializable {
	private String userName;
	private String text;
	private String deadline;

	public TodoBeans() {
	}

	public TodoBeans(String userName, String text,String deadline) {
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
	
	public String getDeadline() {
		return deadline;
	}
}