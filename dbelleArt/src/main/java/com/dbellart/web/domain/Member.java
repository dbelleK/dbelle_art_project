package com.dbellart.web.domain;


public class Member {
	
	private int userIdx;
	private String name;
	private String email;
	private String pw;
	private String pwCheck;
	private int tel;
	private String address;
	private boolean checkAll;
	
	
	
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPwCheck() {
		return pwCheck;
	}
	public void setPwCheck(String pwCheck) {
		this.pwCheck = pwCheck;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public boolean isCheckAll() {
		return checkAll;
	}
	public void setCheckAll(boolean checkAll) {
		this.checkAll = checkAll;
	}
	
}
