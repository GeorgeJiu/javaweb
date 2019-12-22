
package com.web.util;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 
/**
 *  连接诶数据库的工具类
 * @author Administrator
 *
 */
public  class JDBCUtil {
 
	 private static String url="jdbc:mysql://localhost/javaweb?userSSL=true&useUnicode=true&characterEncoding=UTF8&serverTimezone=GMT";
	 private static String driver="com.mysql.cj.jdbc.Driver";
	 private static String username="root";
	 private static String password="123456";
    
	
	public static Connection getCon() throws Exception {
		Class.forName(driver); // 加载数据库驱动
		Connection conn = DriverManager.getConnection(url,username,password); // 获取数据库连接
		System.out.println(DriverManager.getConnection(url, username, password));
		return conn;
	}
	
	//关闭数据库连接
	public static void getClose(Connection conn) throws SQLException {
		if (conn != null) {
			conn.close();
		}
 
	}
}
