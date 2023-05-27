package com.lec.member.service;

import java.sql.Connection;

import com.lec.db.JDBCUtility;
import com.lec.member.dao.MemberDAO;
import com.lec.member.vo.MemberBean;

public class MemberRegistService {
	
	public boolean registerMember(MemberBean member) {
		
		boolean isRegistSuccess = false;
		
		Connection conn = JDBCUtility.getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(conn);
		int insertCount = memberDAO.insertMember(member);
		
		if(insertCount > 0) {
			JDBCUtility.commit(conn);
			JDBCUtility.close(conn, null, null);
			isRegistSuccess = true;
		} else {
			JDBCUtility.rollback(conn);
		}
		return isRegistSuccess;
		
		
	}

}







