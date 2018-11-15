package com.nikhi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ResetP {
	
	String sql = "select * from login where uname=? and email=?";
	String url = "jdbc:mysql://localhost:3306/obook";
	String username = "root";
	String password = "root";

	public boolean check(String uname, String email) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2,email);
			ResultSet rs=st.executeQuery();
			
			if (rs.next()) {
				System.out.print("check available");
				return true;
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
