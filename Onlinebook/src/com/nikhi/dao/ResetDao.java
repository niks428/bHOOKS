package com.nikhi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class ResetDao {
	
	
	String sql = "update login set pass=? where uname=? and email=?";
	String url = "jdbc:mysql://localhost:3306/obook";
	String username = "root";
	String password = "root";

	public boolean check(String uname,String email, String pass) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, pass);
			st.setString(2, uname);
			st.setString(3, email);
			st.executeUpdate();
			st.close();
			con.close();
			System.out.print("Password Upadated in Server");
			return true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
