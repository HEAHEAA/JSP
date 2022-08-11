package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBConnect {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	
	//기본 생성자
	public JDBConnect() {
		try {
			//JDBC 드라이버 로드
			Class.forName("oracle.jdbc.OracleDriver");
			
			//DB연결
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
				// "jdbc:oracle:thin:@localhost:1521:xe";  <- jdbc:oracle:thin':'@ 이거 주의 해야됨 루트 안맞다고 나옴
			String id = "musthave";
			String pwd = "1922";
			con = DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공 (기본생성자)");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//연결 해제 (지원반납)
	public void close() {
		try {
			if (rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(psmt != null) psmt.close();
			if(con != null) con.close();
			
			System.out.println("JDBC 자원해제");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//두번째 생성자
	public JDBConnect(String driver, String url, String id, String pwd) {
		try {
			//JDBC 드라이버 로드
			Class.forName(driver);
			
			//DB연결
			con = DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공하(인수 생성자 1)");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
