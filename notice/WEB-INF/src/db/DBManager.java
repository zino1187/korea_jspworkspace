/*
�����ͺ��̽� ���� �� ������ ���õ� �ڵ尡 �ʹ��� �ߺ��ǹǷ�, ������ �������� �и�����
�����ϱ� ����!!!
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
	
	//���Ӱ�ü ��� 
	public Connection getConnection(){
		return null;
	}
	
	//�ڿ����� 
	public void release(Connection con){//������ ���� ��������..
	}
	public void release(Connection con, PreparedStatement pstmt){ //DML��
	}
	public void release(Connection con, PreparedStatement pstmt,ResultSet rs){//select��
	}
}
