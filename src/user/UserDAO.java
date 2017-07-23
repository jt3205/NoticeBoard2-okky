package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import util.DBUtil;

public class UserDAO implements UserDAOInterface{
	private final String ADD_USER = "insert into user values(null,?,?,?,?,?)";
	private final String GET_PASSWORD = "select password from user where id=?";
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	@Override
	public void addUser(String id, String password, String nickname, String question, String answer) {
		con = DBUtil.getConnection();
		try {
			pstmt = con.prepareStatement(ADD_USER);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, nickname);
			pstmt.setString(4, question);
			pstmt.setString(5, answer);
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DBUtil.close(con,pstmt);
	}
	
	public boolean login(String id, String password){
		boolean result = false;
		
		con = DBUtil.getConnection();
		try {
			pstmt = con.prepareStatement(GET_PASSWORD);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				if(rs.getString(1).equals(password)){
					result = true;
				}
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DBUtil.close(con,pstmt,rs);
		return result;
	}
}
