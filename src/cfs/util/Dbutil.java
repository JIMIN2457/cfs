package cfs.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * DBCP 기술 로드 연결 닫기
 * 담당 : 박지민
 */
public class Dbutil {
	static DataSource ds;
	
	// 로드
	static {
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:/comp/env/jdbc/myoracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	// 연결
	public static Connection getConnection() throws SQLException {
		return ds.getConnection();
	}
	
	// 닫기
	public static void dbClose(Connection conn, Statement st) {
			try {
				if(st != null) st.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	public static void dbClose(Connection conn, Statement st, ResultSet rs) {
		try {
			if(rs != null) rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		dbClose(conn, st);
	}
}