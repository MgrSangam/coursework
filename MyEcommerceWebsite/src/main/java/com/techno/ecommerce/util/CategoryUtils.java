package com.techno.ecommerce.util;

public class CategoryUtils {
	
	public static final String INSERT_CATEGORY = "INSERT INTO category"
			+ "(category_name, category_description)"
			+ "VALUES (?,?)";
	
	public static final String GET_ALL_CATEGORY_INFO = "SELECT * FROM categoryORDER BY category_order ASC";

}
