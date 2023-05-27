package com.lec.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.lec.db.JDBCUtility;
import com.lec.member.vo.MemberBean;

public class MemberDAO {
	
	private MemberDAO() {}
	private static MemberDAO memberDAO;
	public static MemberDAO getInstance() {
		if(memberDAO == null) memberDAO = new MemberDAO();
		return memberDAO;
	}
	
	Connection conn = null;
	
	// DB Connection
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	// Member Registration
	public int insertMember(MemberBean member) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "insert into member(id, pw, name, age, gender, email) values(?,?,?,?,?,?)";
		
		int insertCount = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			pstmt.setString(3, member.getName());
			pstmt.setInt(4, member.getAge());
			pstmt.setString(5, member.getGender());
			pstmt.setString(6, member.getEmail());
			insertCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("Registration Failed" + e.getMessage());
		} finally {
			JDBCUtility.close(null, pstmt, rs);
		}
		
		return insertCount;
		
	}
	
	
	
	
}











