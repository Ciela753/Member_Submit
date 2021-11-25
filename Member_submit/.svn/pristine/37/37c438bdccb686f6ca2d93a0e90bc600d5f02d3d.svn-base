package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import util.DBConn;
import vo.Member;

public class MemberDao {
	public List<Member> getMembers() {
		
		//연결 생성(스위치온)
		Connection conn = DBConn.getConnection();
		List<Member> list = new ArrayList<Member>();
		
		try {
			//연결 상태 생성(쿼리실행할 변수 생성)
			Statement stmt = conn.createStatement();
			//연결 쿼리 실행(실행할 쿼리 입력)
			ResultSet rs = stmt.executeQuery("SELECT ID, PWD, EMAIL, NAME FROM USER26.TBL_MEMBER");
			
			while(rs.next()) {
				String id=rs.getString("ID");
				String pwd = rs.getString("pwd");
				String email = rs.getString("email");
				String name = rs.getString("name");
				
				//생성자에 저장
				Member member = new Member(id, pwd, email, name);
				//리스트에 저장
				list.add(member);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean login(String id, String pwd) {
		Connection conn = DBConn.getConnection();
		boolean success = false;
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT ID, PWD, EMAIL, NAME FROM USER26.TBL_MEMBER "
					+ "WHERE ID='"+id+"' AND PWD='"+pwd+"'");
			success = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return success;
	}
	
	public void join(Member member) {
		Connection conn = DBConn.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO USER26.TBL_MEMBER VALUES (?, ?, ?, ?)");
			int idx = 1;
			pstmt.setString(idx++,  member.getId());
			pstmt.setString(idx++,  member.getPwd());
			pstmt.setString(idx++,  member.getEmail());
			pstmt.setString(idx++,  member.getName());
			
			pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		new MemberDao().getMembers().forEach(System.out::println);
		MemberDao dao = new MemberDao();
//		System.out.println(dao.login("javaman", "1234"));
//		System.out.println(dao.login("javaman", "1234"));
//		System.out.println(dao.login("javaman", "1234"));
		System.out.println(dao.login("Chy", "1234"));
		
	}
	
	public Member findBy(String id) {
		Connection conn = DBConn.getConnection();
		Member member=null;
		try {
			PreparedStatement pstmt = conn.prepareStatement("SELECT ID, PWD, EMAIL, NAME FROM TBL_MEMBER WHERE ID=?");
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int idx=1;
				member = new Member(
						rs.getString(idx++), 
						rs.getString(idx++), 
						rs.getString(idx++), 
						rs.getString(idx++) 
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
	}
}
