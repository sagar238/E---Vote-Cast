package com.connection;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DatabaseConnection {

	public static Connection connection;

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/voting?useSSL=false", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (connection);
	}

	public static void CloseConnection() {
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
	}

	public static ResultSet getResultFromSqlQuery(String SqlQueryString) {
		ResultSet rs = null;
		try {
			if (connection == null) {
				getConnection();
			}
			rs = connection.createStatement().executeQuery(SqlQueryString);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return rs;
	}

	public static int insertUpdateFromSqlQuery(String SqlQueryString) {
		int i = 2;
		try {
			if (connection == null) {
				getConnection();
			}
			i = connection.createStatement().executeUpdate(SqlQueryString);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return i;
	}
	
	public static String generateVoterId() {
		String vid = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		vid = sdf.format(new Date());
		vid = "V" + vid;
		System.out.println("Voter Id " + vid);
		return vid;
	}
	
	public static String generateCandidateId() {
		String cid = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		cid = sdf.format(new Date());
		cid = "C" + cid;
		System.out.println("Candidate Id " + cid);
		return cid;
	}
	

}
