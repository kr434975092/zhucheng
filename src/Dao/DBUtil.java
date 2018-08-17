package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {

	public static Connection getConnection() {
		Connection con = null;
//		String user = "sa";
//  	    String password = "leomessi10";
//  	    String url = "jdbc:sqlserver://localhost:1433;DatabaseName=Recruit";
		String user = "root";
//        String password = "root";
  	    String password = "20163488";
  	    String url = "jdbc:mysql://localhost:3306/recruit";
		try {
			//Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}
		return con;
	}
	
	public static void close(PreparedStatement pre) {
		if(pre == null)return;
		try {
			pre.close();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}
	}
	
	public static void close(ResultSet rs) {
		if(rs == null)return;
		try {
			rs.close();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}
	}
	
	public static void close(Connection con) {
		if(con == null)return;
		try {
			con.close();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}
	}
	
}



