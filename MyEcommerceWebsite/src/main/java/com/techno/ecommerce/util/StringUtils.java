package com.techno.ecommerce.util;

public class StringUtils {
	
	public static final String INSERT_CUSTOMER = "INSERT INTO customer"
			+ "(user_name, first_name, last_name, dob, email, phone_number, password)"
			+ "VALUES(?,?,?,?,?,?,?)";
	
	public static final String GET_LOGIN_CUSTOMER = "SELECT * FROM customer WHERE user_name= ? AND password = ?";
	
	
	public static final String GET_ALL_CUSTOMER_INFO = "SELECT * FROM customer";
	
	
	public static final String SUCCESS_REGISTER_MESSAGE = "Successfully Registered!";
	public static final String REGISTER_ERROR_MESSAGE = "Please correct the form data.";
	public static final String SERVER_ERROR_MESSAGE = "An unxpected error occurred.";
	public static final String ERROR_MESSAGE = "errorMessage";
	public static String encryptPassword(String getpassword) {
		// TODO Auto-generated method stub
		return null;
	}

}
