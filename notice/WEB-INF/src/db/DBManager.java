/*
데이터베이스 접속 및 해제와 관련된 코드가 너무나 중복되므로, 공통의 로직으로 분리시켜
재사용하기 위함!!!
*/
package db;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBManager {
	String driver="org.mariadb.jdbc.Driver";
	String url="jdbc:mariadb://localhost:3306/db1202";
	String user="root";
	String password="1234";
	
	//접속객체 얻기 
	public Connection getConnection(){
		return null;
	}
	
	//자원해제 
	public void release(Connection con){//쿼리문 수행 안햇을때..
	}
	public void release(Connection con, PreparedStatement pstmt){ //DML용
	}
	public void release(Connection con, PreparedStatement pstmt,ResultSet rs){//select용
	}
}
