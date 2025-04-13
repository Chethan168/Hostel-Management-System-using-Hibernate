package com.hostel;

import javax.persistence.*;

@Entity
@Table(name = "employee")
public class Employee {

	@Id
	private int id;

	@Column(name="name")
	private String name;

	@Column(name="role")
	private String role;

	@Column(name="phone_number")
	private String phone_number;

	@Column(name = "state")
	private String state;
	
	public Employee() {
		super();
	}
	public Employee(int id, String name, String role, String phone_number, String state) {
		super();
		this.id = id;
		this.name = name;
		this.role = role;
		this.phone_number = phone_number;
		this.state = state;
	}
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}

}

