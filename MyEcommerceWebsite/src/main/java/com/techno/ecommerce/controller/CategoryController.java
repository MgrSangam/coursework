package com.techno.ecommerce.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.techno.ecommerce.model.CategoryModel;
import com.techno.ecommerce.util.CategoryUtils;
public class CategoryController {
	public Connection getConnection() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/ecommerce_database";
		String user = "root";
		String pass = "";
		return DriverManager.getConnection(url, user, pass);
	}
		
		public int addCategory(CategoryModel categoryModel) {
			try(Connection con = getConnection()) {
				PreparedStatement st = con.prepareStatement(CategoryUtils.INSERT_CATEGORY);
				st.setString(1, categoryModel.getcategoryName());
				st.setString(2, categoryModel.getcategoryDescription());
				
				int result = st.executeUpdate();
				return result > 0 ? 1: 0;
				
			}catch(SQLException | ClassNotFoundException ex) {
				ex.printStackTrace();
				return -1;
			}
		}
	
		
	}


