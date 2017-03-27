package com.hixx.web.dao.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hixx.web.data.dao.CityScoreDao;

public class MySQLCityScoreDao implements CityScoreDao {

	@Override
	public int init(String id) {
		String sql = "SELECT COUNT(CODE) NUM FROM CITYSCORE WHERE WRITER = '" + id +"'";
		int result = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "sjlee", "6664");
					
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if(rs.next())  result = Integer.parseInt(rs.getString("NUM"));
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
