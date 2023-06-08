package model;

public class Logic {
	public void like(JavaBeans site) {
		int count = site.getLike();
		site.setLike(count + 1);
	}

	public void dislike(JavaBeans site) {
		int count = site.getDislike();
		site.setDislike(count + 1);
	}

}