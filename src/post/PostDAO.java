package post;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBUtil;

public class PostDAO implements PostDAOInterface {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	final String WRITE_POST = "insert into post values(NULL,?,?,?,?)";
	final String DELETE_POST = "delete from post where seq=?";
	final String GET_POST = "select * from post where seq=?";

	@Override
	public void writePost(String title, int writer, String content, String kind) {
		con = DBUtil.getConnection();
		try {
			pstmt = con.prepareStatement(WRITE_POST);
			pstmt.setString(1, title);
			pstmt.setInt(2, writer);
			pstmt.setString(3, content);
			pstmt.setString(4, kind);
			
			pstmt.execute();
			
			DBUtil.close(con, pstmt);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deletePost(int seq) {
		con = DBUtil.getConnection();
		try {
			pstmt = con.prepareStatement(DELETE_POST);
			pstmt.setInt(1, seq);
			pstmt.execute();
			DBUtil.close(con, pstmt);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public PostVO getPost(int seq) {
		PostVO vo = new PostVO();
		con = DBUtil.getConnection();
		try {
			pstmt = con.prepareStatement(GET_POST);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
		
			vo.setSeq(rs.getInt(1));
			vo.setTitle(rs.getString(2));
			vo.setWriter(rs.getInt(3));
			vo.setContent(rs.getString(4));
			vo.setKind(rs.getString(5));
			vo.setViews(rs.getInt(6));
			
			DBUtil.close(con, pstmt, rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}
}
