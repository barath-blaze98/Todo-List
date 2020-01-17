package com.spring.beans;

public class Todo 
{
	private int id;
	private String title;
	private String whomtomeet;
	private String start;
	private String purpose;
	private String location;
	private String createddate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWhomtomeet() {
		return whomtomeet;
	}
	public void setWhomtomeet(String whomtomeet) {
		this.whomtomeet = whomtomeet;
	}
	
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getCreateddate() {
		return createddate;
	}
	public void setCreateddate(String createddate) {
		this.createddate = createddate;
	}
	
}
