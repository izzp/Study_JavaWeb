package com.mezzp.jdbc;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JdbcUtils {
	private static String driverClass;
	private static String url;
	private static String user;
	private static String password;
	static {
		try{
			Properties prop =new Properties();
			InputStream is=JdbcUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
			prop.load(is);
			driverClass =prop.getProperty("driverClass");
			url = prop.getProperty("url");
			password = prop.getProperty("password");
			Class.forName(driverClass);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		Connection conn = DriverManager.getConnection(url,user,password);
		return conn;
	}
	public static void release(Connection conn,Statement stmt,ResultSet rs) {
		try {
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(conn!=null) conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
