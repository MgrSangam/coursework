package com.techno.ecommerce.util;

public class AdminUtils {
	
	public static final String INSERT_ADMIN = "INSERT INTO admin"
	+ "(user_name, first_name, last_name, dob, email, phone_number, password)"
	+ "VALUES(?,?,?,?,?,?,?)";
	
	public static final String GET_LOGIN_ADMIN = "SELECT * FROM admin WHERE user_name= ? AND password = ?";
	
	
	public static final String GET_ALL_CUSTOMER_INFO = "SELECT * FROM admin";
	

}
