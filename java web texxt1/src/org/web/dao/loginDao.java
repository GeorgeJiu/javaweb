package org.web.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
import org.web.eneity.User;
 
import com.web.util.JDBCUtil;
 
public class loginDao {
	static Connection conn = null;
	static PreparedStatement prst = null;
	static ResultSet rs = null;
 
	private User user = new User();
 
	// 用户登录
	public static int login(User user) throws Exception {
 
		int result = -1;
		Connection conn = JDBCUtil.getCon(); // 获取一个数据库连接
 
		String sql = "select * from user where username=? and password=?"; // 编写sql语句
 
		prst = conn.prepareStatement(sql); // 对ssql语句进行预处理
 
		prst.setString(1, user.getUsername());
		prst.setString(2, user.getPassword());
 
		rs = prst.executeQuery(); // 执行sql语句， 并返回结果集
 
		if (rs.next())
			result = rs.getInt(1);
 
		if (result > 0)
			return 1;
 
		else
			return 0;
 
	}
 
	// 用户注册
	public static boolean register(User user) throws Exception {
 
		conn = JDBCUtil.getCon(); // 获取数据库连接
 
		String sql = "insert into user(username,password) values(?,?)"; // 编写sql语句
 
		prst = conn.prepareStatement(sql); // 对sql语句进行预处理
 
		prst.setString(1, user.getUsername());
		prst.setString(2, user.getPassword());
 
		boolean result = prst.executeUpdate() > 0; // 执行sql语句
		return result;
	}
 
}
