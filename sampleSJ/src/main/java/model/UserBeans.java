package model;

import java.io.Serializable;

public class UserBeans implements Serializable {
	private String name;

	public UserBeans() {
	}

	public UserBeans(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	};


}