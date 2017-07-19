package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBUtil {
	private static final String id = "";
	private static final String password = "";
	
	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql:///"+ id +"?useSSL=false&serverTimezone=Asia/Seoul";
	
	private DBUtil() {}
	
	public static Connection getConnection(){
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, id, password);
			return con;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void close( Connection con, PreparedStatement pstmt) {
		try {
			if(pstmt != null && !pstmt.isClosed())
				pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if(con != null && !con.isClosed())
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close( Connection con, PreparedStatement pstmt, ResultSet rs) {
		close(con, pstmt);
		try {
			if(rs != null && !rs.isClosed())
				rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
