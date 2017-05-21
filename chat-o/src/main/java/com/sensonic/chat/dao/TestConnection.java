package com.sensonic.chat.dao;

import java.sql.*;

class TestConnection {
	public static void main(String args[]) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chatdb", "root", "music");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from CHAT_USER_DTL");
			while (rs.next())
				System.out.println(rs.getString(1) + "  " + rs.getString(2) + "  " + rs.getString(3)+ "  " + rs.getString(4)+ "  " + rs.getString(5));
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}