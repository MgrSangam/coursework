package com.techno.ecommerce.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.techno.ecommerce.model.ProductModel;
import com.techno.ecommerce.util.ProductUtils;

public class ProductController {
	public Connection getConnection() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/ecommerce_database";
		String user = "root";
		String pass = "";
		return DriverManager.getConnection(url, user, pass);
		
	}
	
	public int addProduct(ProductModel productModel) {
		try (Connection con = getConnection()) {
			PreparedStatement st = con.prepareStatement(ProductUtils.INSERT_PRODCUCT);
			
				st.setString(1,  productModel.getproductName());
				st.setString(2, productModel.getproductCategory());
				st.setString(3,  productModel.getunitPrice());
				st.setString(4, productModel.getquantity());
				st.setString(5, productModel.getproductImage());
				st.setString(6, productModel.getproductDescription());
				
				int result = st.executeUpdate();
				return result > 0 ? 1: 0;
			
		}catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return -1;
	}
		
}
}
