package com.mezzp.test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mezzp.jdbc.JdbcUtils;

public class TestJdbcUtils {
	public static void main(String[] args) throws SQLException {
		Connection conn =JdbcUtils.getConnection();
		
		Statement stmt =conn.createStatement();
		String sql="select * from user";
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next()) {
			System.out.println("用户编码:"+rs.getInt(1)
			+",用户名:"+rs.getString(2)+",用户密码:"+rs.getString(3));
		}
		TestJdbcUtils.release(conn,null,null);
	}

	private static void release(Connection conn, Object object, Object object2) {
		// TODO Auto-generated method stub
		
	}
}
