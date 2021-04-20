package com.mezzp.beans;

public class User {
	private String userName;
	private Integer userAge;
	private String gender;
	public User() {
		
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getUserAge() {
		return userAge;
	}
	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "User [userName=" + userName + ", userAge=" + userAge + ", gender=" + gender + "]";
	}
	
	
}
