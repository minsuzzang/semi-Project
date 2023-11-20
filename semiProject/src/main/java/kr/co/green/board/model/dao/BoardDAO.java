package kr.co.green.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.co.green.board.model.dto.BoardDTO;
import kr.co.green.common.PageInfo;

public class BoardDAO {
	private PreparedStatement pstmt;

	// 게시글 목록 조회
	public ArrayList<BoardDTO> boardList(Connection con, PageInfo pi, String searchText) {

		ArrayList<BoardDTO> list = new ArrayList<>();

		// 1.쿼리작성

		String query = "SELECT b.b_idx," 
				+ "			m.m_nickname,"
				+ "			b.b_title," 
				+ "			b.b_views" 
				+ "		FROM board b"
				+ "		JOIN  MEMBER m"
				+ "		ON b.m_no=m.m_no"
				+ "		WHERE b_DELETE_DATE IS NULL" 
				+ "	 	ORDER BY b_in_date DESC"
				+ "		OFFSET ? ROWS FETCH FIRST ? ROWS ONLY";

		System.out.println(pi.getOffset());
		System.out.println(pi.getBoardLimit());
		// 2.쿼리사용할준비
		try {
			pstmt = con.prepareStatement(query);
			// 3.물음표에 값넣기
			pstmt.setInt(1, pi.getOffset());
			pstmt.setInt(2, pi.getBoardLimit());

			// 4.쿼리실행
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				int b_idx = rs.getInt("b_idX");
				String b_title = rs.getString("b_title");
				String m_nickname = rs.getString("m_nickname");
				int b_views = rs.getInt("b_views");

				BoardDTO board = new BoardDTO();
				board.setB_idx(b_idx);
				board.setB_title(b_title);
				board.setM_nickname(m_nickname);
				board.setB_views(b_views);
				list.add(board);
			}
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

	// 전체 게시글 수
	public int boardListCount(Connection con, String searchText) {
		String query = "SELECT count(*) AS cnt FROM board WHERE b_delete_date IS NULL";
		try {
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				int result = rs.getInt("CNT");
				return result;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 글 등록
	public int boardEnroll(Connection con, String b_title, String b_content, String b_file_patint, String b_file_path, int m_no) {
		// 1.쿼리작성
		String query = "INSERT INTO board" 
				+ " 		VALUES(BOARD_SEQ.NEXTVAL, ?, ?,0, SYSDATE,NULL,NULL,?,?,?) ";
		// 2.쿼리 사용할 준비
		try {
			pstmt = con.prepareStatement(query);
			// 3.물음표에 값 넣기
			pstmt.setString(1, b_title);
			pstmt.setString(2, b_content);
			pstmt.setString(3, b_file_path);
			pstmt.setString(4, b_file_path);
			pstmt.setInt(5, m_no);
			

			// 4.쿼리실행
			int result = pstmt.executeUpdate();

			// 5.DB연결종료
			pstmt.close();
			con.close();

			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 조회수+1
	public int boardView(Connection con, int b_idx) {
		String query = "UPDATE board" 
				+ " 		SET b_views = b_views+1" 
				+ " 		WHERE b_idx = ?";

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, b_idx);
			int result = pstmt.executeUpdate();

			return result;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 상세보기
//	public void boardSelect(Connection con, BoardDTO board) {
//		String query = "SELECT board_idx," 
//				+ " 				board_title," 
//				+ " 				board_memberNo,"
//				+ " 				board_views," 
//				+ " 				board_in_date," 
//				+ " 				board_content"
//				+ "		FROM board" 
//				+ "		WHERE board_idx=?";
//
//		try {
//			pstmt = con.prepareStatement(query);
//			pstmt.setInt(1, board.getIdx());
//			ResultSet rs = pstmt.executeQuery();
//
//			while (rs.next()) {
//				// 글번호, 제목, 작성자, 조회수, 작성일, 내용 꺼내기
//				int idx = rs.getInt("board_IDX");
//				String title = rs.getString("board_TITLE");
//				int memberNo = rs.getInt("board_memberNo");
//				int views = rs.getInt("board_VIEWS");
//				String inDate = rs.getString("board_IN_DATE");
//				String content = rs.getString("board_CONTENT");
//
//				board.setIdx(idx);
//				board.setTitle(title);
//				board.setMemberNo(memberNo);
//				board.setViews(views);
//				board.setInDate(inDate);
//				board.setContent(content);
//			}
//			pstmt.close();
//			con.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//
//	}
}
