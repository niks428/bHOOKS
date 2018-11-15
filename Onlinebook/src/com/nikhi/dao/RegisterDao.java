package com.nikhi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegisterDao {
	
	String sql = "Insert into login values(?,?,?,?,?,?)";
	String url = "jdbc:mysql://localhost:3306/obook";
	String username = "root";
	String password = "root";

	public boolean check(String name,String uname,String email, String pass,String add,String ph) {
		
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, name);
		st.setString(2, uname);
		st.setString(3, email);
		st.setString(4, pass);
		st.setString(5,add);
		st.setString(6,ph);
		st.executeUpdate();
		System.out.print("Data updated");
		st.close();
		con.close();
		return true;
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return false;
}	
}
