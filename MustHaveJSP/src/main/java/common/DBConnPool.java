package common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnPool {
	//커넥션 풀 동작 검증 코드
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	//기본생성자
	public DBConnPool() {
		try {
			//커넥션 풀(데이터 소스) 얻기
			Context initCtx = new InitialContext();
			Context ctx = (Context)initCtx.lookup("java:comp/env");
			DataSource source = (DataSource)ctx.lookup("dbcp_myoracle");
			
			//커넥션 출을 통해 연결 얻기
			con = source.getConnection();
			
			System.out.println("DB 커넥션 출 연결 성공");
		}
		catch (Exception e){
			System.out.println("DB 커넥션 풀 연결 실패");
			e.printStackTrace();
		}
	}
	
	//연결 해제 (자원 반납)
	
	public void close() {
		try {
			if(rs != null)rs.close();
			if(stmt != null) stmt.close();
			if(psmt != null) psmt.close();
			if(con != null) con.close();
			
			System.out.println("DV 커넥션 풀 자원 반납");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
