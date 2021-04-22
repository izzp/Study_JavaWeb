package com.mezzp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class jdbcTest {
	public static void main(String[] args) {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://127.0.0.1:3306/test";
		String user = "root";
		String password = "123456";

		try {
			Class.forName(driver);

			Connection con = DriverManager.getConnection(url, user, password);

			String sql = "select * from user";
			Statement stm = con.createStatement();
			ResultSet rSet = stm.executeQuery(sql);
			while (rSet.next()) {
				System.out.println("uid:" + rSet.getInt("userId") + ",uname:" + rSet.getString(2));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	}
}
