package model;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TaskBeans implements Serializable {
	private String taskName;
	private Date date;

	public TaskBeans() {
		taskName = "";

		SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		try {
			Date date = df.parse("2023/01/01");
		} catch (ParseException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}


}