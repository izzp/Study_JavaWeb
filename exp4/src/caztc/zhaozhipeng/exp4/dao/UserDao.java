package caztc.zhaozhipeng.exp4.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import catzc.zhaozhipeng.utils.C3P0Utils;
import caztc.zhaozhipeng.exp4.beans.User;

public class UserDao {
	
	public User getUserByNameAndPassword(String uName,String uPwd) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from users where uName=? and uPwd=?";
		User user = qr.query(sql, new BeanHandler<User>(User.class),uName,uPwd);
		return user;
	}
}
