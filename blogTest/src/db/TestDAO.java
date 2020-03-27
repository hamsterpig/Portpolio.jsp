package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import dbc.DBConnectionMgr;
import db.TestDTO;

public class TestDAO {
	private Connection conn; // 데이터에비스에 접근
	private PreparedStatement pstmt;
	DBConnectionMgr pool = DBConnectionMgr.getInstance();
		
	public Vector<TestDTO> selectAll(String table){
		ResultSet rs=null;
		
		String SQL = "SELECT * FROM "+table;
		Vector<TestDTO> v = new Vector<TestDTO>();
		
		try{
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(SQL); // db에 연결하여 SQL 사용 준비
			rs = pstmt.executeQuery();
			while(rs.next()){
				TestDTO dto = new TestDTO();

				dto.setIdx(rs.getInt("idx"));
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setAnswer(rs.getString("answer"));
				dto.setSecret(rs.getString("secret"));
				dto.setDate(rs.getString("date"));
				v.add(dto);
				//System.out.println(rs.getString("id")+" : " + rs.getString("pw"));
			}
		}catch(Exception e){
			e.printStackTrace();
		} finally{
			try { // 다 썻으니 닫아줘야 한다.
				if(rs != null){
					rs.close();
				}
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return v;
	}
	
	public int insertGuest(String id, String pw, String answer, 
			String secret){ // insert into method
		String SQL = "INSERT INTO guestboard VALUE(NULL, ?, ?, ?, ?, NOW())"; // 값 넣을 부분에 ?로 잡아주고 나중에 넣음
		int result = 0;
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(SQL); // db에 연결하여 SQL 사용 준비
			pstmt.setString(1, id); // 첫 번째 ?에 id를 삽입
			pstmt.setString(2, pw); // 두 번째 ?에 pw를 삽입
			pstmt.setString(3, answer);
			pstmt.setString(4, secret);
			result = pstmt.executeUpdate(); // 삽입한 값을 포함하여 SQL을 실행한다.
		} catch(Exception e){
			e.printStackTrace();
		}
		return result; // 제대로 적용됬는지 확인용. 1이상이면 정상 실행, 아니면 제대로 실행되지 않음
	}
	
	public int deleteGuest(int idx, String pw){ // insert into method
		String SQL = "DELETE FROM guestboard WHERE idx=? && pw=?"; // 값 넣을 부분에 ?로 잡아주고 나중에 넣음
		int result = 0;
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(SQL); // db에 연결하여 SQL 사용 준비
			pstmt.setInt(1, idx); // 첫 번째 ?에 id를 삽입
			pstmt.setString(2, pw); // 두 번째 ?에 id를 삽입
			result = pstmt.executeUpdate(); // 삽입한 값을 포함하여 SQL을 실행한다.
		} catch(Exception e){
			e.printStackTrace();
		}
		return result; // 제대로 적용됬는지 확인용. 1이상이면 정상 실행, 아니면 제대로 실행되지 않음
	}
	
	public int updateGuest(int idx, String pw, String answer){ // insert into method
		String SQL = "UPDATE guestboard SET answer=? WHERE pw=? && idx=?"; // 값 넣을 부분에 ?로 잡아주고 나중에 넣음
		int result = 0;
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(SQL); // db에 연결하여 SQL 사용 준비
			pstmt.setString(1, answer); // 첫 번째 ?에 id를 삽입
			pstmt.setString(2, pw); // 
			pstmt.setInt(3, idx); // 
			
			result = pstmt.executeUpdate(); // 삽입한 값을 포함하여 SQL을 실행한다.
		} catch(Exception e){
			e.printStackTrace();
		}
		return result; // 제대로 적용됬는지 확인용. 1이상이면 정상 실행, 아니면 제대로 실행되지 않음
	}

}



