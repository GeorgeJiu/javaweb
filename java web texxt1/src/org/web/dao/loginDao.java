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
 
	// �û���¼
	public static int login(User user) throws Exception {
 
		int result = -1;
		Connection conn = JDBCUtil.getCon(); // ��ȡһ�����ݿ�����
 
		String sql = "select * from user where username=? and password=?"; // ��дsql���
 
		prst = conn.prepareStatement(sql); // ��ssql������Ԥ����
 
		prst.setString(1, user.getUsername());
		prst.setString(2, user.getPassword());
 
		rs = prst.executeQuery(); // ִ��sql��䣬 �����ؽ����
 
		if (rs.next())
			result = rs.getInt(1);
 
		if (result > 0)
			return 1;
 
		else
			return 0;
 
	}
 
	// �û�ע��
	public static boolean register(User user) throws Exception {
 
		conn = JDBCUtil.getCon(); // ��ȡ���ݿ�����
 
		String sql = "insert into user(username,password) values(?,?)"; // ��дsql���
 
		prst = conn.prepareStatement(sql); // ��sql������Ԥ����
 
		prst.setString(1, user.getUsername());
		prst.setString(2, user.getPassword());
 
		boolean result = prst.executeUpdate() > 0; // ִ��sql���
		return result;
	}
 
}
