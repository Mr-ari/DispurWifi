package com.object.user;

public class User {
	private int user_id,registration_id;private long phone;
	private String name,email,address,role,password;
	
	
	
	public User(int user_id, int registration_id, long phone, String name, String email, String address, String role,
			String password) {
		super();
		this.user_id = user_id;
		this.registration_id = registration_id;
		this.phone = phone;
		this.name = name;
		this.email = email;
		this.address = address;
		this.role = role;
		this.password = password;
	}
	
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getRegistration_id() {
		return registration_id;
	}
	public void setRegistration_id(int registration_id) {
		this.registration_id = registration_id;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	
}
