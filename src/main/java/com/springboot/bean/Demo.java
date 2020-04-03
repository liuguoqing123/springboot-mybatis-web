package com.springboot.bean;


public class Demo {
	private int id;
	private String name;
	private String updateTime;
	private String sexEnum;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public String getSexEnum() {
		return sexEnum;
	}

	public void setSexEnum(String sexEnum) {
		this.sexEnum = sexEnum;
	}

	@Override
	public String toString() {
		return "Demo{" +
				"id=" + id +
				", name='" + name + '\'' +
				", updateTime='" + updateTime + '\'' +
				", sexEnum='" + sexEnum + '\'' +
				'}';
	}
}
