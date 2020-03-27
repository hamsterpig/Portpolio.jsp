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
	private Connection conn; // �����Ϳ��񽺿� ����
	private PreparedStatement pstmt;
	DBConnectionMgr pool = DBConnectionMgr.getInstance();
		
	public Vector<TestDTO> selectAll(String table){
		ResultSet rs=null;
		
		String SQL = "SELECT * FROM "+table;
		Vector<TestDTO> v = new Vector<TestDTO>();
		
		try{
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(SQL); // db�� �����Ͽ� SQL ��� �غ�
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
			try { // �� ������ �ݾ���� �Ѵ�.
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
		String SQL = "INSERT INTO guestboard VALUE(NULL, ?, ?, ?, ?, NOW())"; // �� ���� �κп� ?�� ����ְ� ���߿� ����
		int result = 0;
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(SQL); // db�� �����Ͽ� SQL ��� �غ�
			pstmt.setString(1, id); // ù ��° ?�� id�� ����
			pstmt.setString(2, pw); // �� ��° ?�� pw�� ����
			pstmt.setString(3, answer);
			pstmt.setString(4, secret);
			result = pstmt.executeUpdate(); // ������ ���� �����Ͽ� SQL�� �����Ѵ�.
		} catch(Exception e){
			e.printStackTrace();
		}
		return result; // ����� �������� Ȯ�ο�. 1�̻��̸� ���� ����, �ƴϸ� ����� ������� ����
	}
	
	public int deleteGuest(int idx, String pw){ // insert into method
		String SQL = "DELETE FROM guestboard WHERE idx=? && pw=?"; // �� ���� �κп� ?�� ����ְ� ���߿� ����
		int result = 0;
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(SQL); // db�� �����Ͽ� SQL ��� �غ�
			pstmt.setInt(1, idx); // ù ��° ?�� id�� ����
			pstmt.setString(2, pw); // �� ��° ?�� id�� ����
			result = pstmt.executeUpdate(); // ������ ���� �����Ͽ� SQL�� �����Ѵ�.
		} catch(Exception e){
			e.printStackTrace();
		}
		return result; // ����� �������� Ȯ�ο�. 1�̻��̸� ���� ����, �ƴϸ� ����� ������� ����
	}
	
	public int updateGuest(int idx, String pw, String answer){ // insert into method
		String SQL = "UPDATE guestboard SET answer=? WHERE pw=? && idx=?"; // �� ���� �κп� ?�� ����ְ� ���߿� ����
		int result = 0;
		
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement(SQL); // db�� �����Ͽ� SQL ��� �غ�
			pstmt.setString(1, answer); // ù ��° ?�� id�� ����
			pstmt.setString(2, pw); // 
			pstmt.setInt(3, idx); // 
			
			result = pstmt.executeUpdate(); // ������ ���� �����Ͽ� SQL�� �����Ѵ�.
		} catch(Exception e){
			e.printStackTrace();
		}
		return result; // ����� �������� Ȯ�ο�. 1�̻��̸� ���� ����, �ƴϸ� ����� ������� ����
	}

}



