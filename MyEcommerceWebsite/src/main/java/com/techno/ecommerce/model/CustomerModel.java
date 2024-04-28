package com.techno.ecommerce.model;

import java.time.LocalDate;

public class CustomerModel {
	private String firstName;
	private String lastName;
	private LocalDate dob;
	private String email;
	private String phoneNumber;
	private String userName;
	private String password;

	
	public CustomerModel ( String firstName, String lastName, LocalDate dob ,String email, String phoneNumber, String userName , String password) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.userName = userName;
		this.password = password;

	}
	
	//Getter
	public  String getfirstName() {
		return  firstName;
	}
	
	public  String getlastName() {
		return  lastName;
	}
	
	public  LocalDate getdob() {
		return  dob;
	}
	
	public  String getemail() {
		return email;
	}
	
	public  String getphoneNumber() {
		return  phoneNumber;
	}
	
	public  String getuserName() {
		return  userName;
	}

	public  String getpassword() {
		return  password;
	}
	

	
	//Setter
	
			public void setFirstName(String newFirstName) {
			    this.firstName = newFirstName;
			}

			public void setLastName(String newLastName) {
			    this.lastName = newLastName;
			}
			
			public void setDob(LocalDate newDob) {
			    this.dob = newDob;
			}
			
			public void setEmail(String newEmail) {
			    this.email = newEmail;
			}
			
			public void setPhoneNumber(String newPhoneNumber) {
				this.phoneNumber = newPhoneNumber;
			}
			
			public void setUserName(String newUserName) {
				this.userName = newUserName;
			}
			
			public void setPassword(String newPassword) {
				this.password = newPassword;
			}
}
