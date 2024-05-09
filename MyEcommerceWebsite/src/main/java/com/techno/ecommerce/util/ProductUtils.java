package com.techno.ecommerce.util;

public class ProductUtils {

	public static final String INSERT_PRODCUCT = "INSERT INTO product"
			+  "(product_name, product_category, unit_price,quantity, product_image, product_desc)"
			+ "VALUES(?,?,?,?,?,?)";
	
	public static final String GET_ALL_PRODUCT_INFO = "SELECT * FROM product";
}
