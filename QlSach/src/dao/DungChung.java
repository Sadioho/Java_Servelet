package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception{
		//b1:xd hqtcsdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.println("Da xac dinh");
		//b2:ket noi
		String url="jdbc:sqlserver://MSI\\SQLEXPRESS:1433;databaseName=QlSach;user=sa; password=123456";
		cn=DriverManager.getConnection(url);
		System.out.println("Da ket noi");
	}
}
