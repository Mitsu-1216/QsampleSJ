package model;

public class LoginLogic {
	public boolean excute(UserBeans user) {
		if(user.getPassword().equals("1234")) {
			return true;
		}
		return false;
	}
		
}