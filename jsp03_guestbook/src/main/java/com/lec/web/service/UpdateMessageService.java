package com.lec.web.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.lec.web.dao.MessageDAO;
import com.lec.web.exception.InvalidPasswordException;
import com.lec.web.exception.MessageNotFoundException;
import com.lec.web.exception.ServiceException;
import com.lec.web.jdbc.ConnectionProvider;
import com.lec.web.jdbc.JDBCUtil;
import com.lec.web.model.Message;

public class UpdateMessageService {
	
	// singleton
	private UpdateMessageService() {}
	private static UpdateMessageService instance = new UpdateMessageService();
	public static UpdateMessageService getInstance() { return instance; }
	
	public void UpdateMessageService(int id, String pw, String msg) {
		
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			MessageDAO messageDAO = MessageDAO.getInstance();
			Message message = messageDAO.select(conn, id);
			
			if(message == null || msg.trim().isEmpty()) {
				throw new MessageNotFoundException(id + "Message is empty. please write a message.");
			}
			if(!message.matchPassword(pw)) throw new InvalidPasswordException("Wrong Password. Try Again.");
			
			messageDAO.update(conn, id, msg);
			conn.commit();
			
		} catch (SQLException e) {
			throw new ServiceException("Message Edit Failed" + e.getMessage(), null);
		} catch(MessageNotFoundException | InvalidPasswordException e) {
			JDBCUtil.rollback(conn);
			throw e;
		} finally {
			JDBCUtil.close(conn, null, null);
		}

	}

}
