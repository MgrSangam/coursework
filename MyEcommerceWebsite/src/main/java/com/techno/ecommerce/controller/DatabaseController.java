package com.techno.ecommerce.controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.techno.ecommerce.model.AdminModel;
import com.techno.ecommerce.model.CustomerModel;
import com.techno.ecommerce.util.AdminUtils;
import com.techno.ecommerce.util.StringUtils;

public class DatabaseController {
	
	public Connection getConnection() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/ecommerce_database";
		String user = "root";
		String pass = "";
		return DriverManager.getConnection(url, user, pass);
		
	}
	
	public int addCustomer(CustomerModel customerModel) {
		try (Connection con = getConnection()) {
			PreparedStatement st = con.prepareStatement(StringUtils.INSERT_CUSTOMER);
			
			st.setString(1, customerModel.getuserName());
			st.setString(2, customerModel.getfirstName());
			st.setString(3, customerModel.getlastName());
			st.setDate(4, Date.valueOf(customerModel.getdob()));
			st.setString(5, customerModel.getemail());
			st.setString(6, customerModel.getphoneNumber());
			st.setString(7, customerModel.getpassword());
			
			
			
			int result = st.executeUpdate();
			return result > 0 ? 1: 0;
			
			
			
		

		} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return -1;
		}
		
	}
	
	public int getCustomerInfo (String user_name, String password) {
		
		try (Connection con = getConnection()) {
			PreparedStatement st = con.prepareStatement(StringUtils.GET_LOGIN_CUSTOMER);
			st.setString(1, user_name);
			st.setString(2, password);
			ResultSet rs = st.executeQuery();
			
			if (rs.next()) {
				return 1;
			}else {
				return 0;
			}
		} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return -1;
		}
		
	}
	
	//Add admin information in database 
	
	public int addAdmin(AdminModel adminModel) {
		try (Connection con = getConnection()) {
			PreparedStatement st = con.prepareStatement(AdminUtils.INSERT_ADMIN);
			
			st.setString(1, adminModel.getuserName());
			st.setString(2, adminModel.getfirstName());
			st.setString(3, adminModel.getlastName());
			st.setDate(4, Date.valueOf(adminModel.getdob()));
			st.setString(5, adminModel.getemail());
			st.setString(6, adminModel.getphoneNumber());
			st.setString(7, adminModel.getpassword());
			
			
			
			int result = st.executeUpdate();
			return result > 0 ? 1: 0;
			
			
			
		

		} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return -1;
		}
		
	}
	
	public int getAdminInfo (String user_name, String password) {
		
		try (Connection con = getConnection()) {
			PreparedStatement st = con.prepareStatement(AdminUtils.GET_LOGIN_ADMIN);
			st.setString(1, user_name);
			st.setString(2, password);
			ResultSet rs = st.executeQuery();
			
			if (rs.next()) {
				return 1;
			}else {
				return 0;
			}
		} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			return -1;
		}
		
	

}
}
