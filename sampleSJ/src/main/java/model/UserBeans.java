package model;

import java.io.Serializable;

public class UserBeans implements Serializable {
	private String name;
	private String password;

	public UserBeans() {
	}

	public UserBeans(String name, String password) {
		this.name = name;
		this.password = password;
	}

	public String getName() {
		return name;
	};

	public String getPassword() {
		return password;
	}

}