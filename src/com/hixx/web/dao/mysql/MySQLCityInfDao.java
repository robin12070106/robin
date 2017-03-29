package com.hixx.web.dao.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hixx.web.data.dao.CityInfDao;
import com.hixx.web.data.entity.CityInf;

public class MySQLCityInfDao implements CityInfDao {

	@Override
	public List <CityInf> getList() {
		String sql = "SELECT * FROM CITYINF";
		List list = new ArrayList<>();
		CityInf cityInf = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "sjlee", "6664");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				cityInf = new CityInf();
				cityInf.setCityCode(Integer.parseInt(rs.getString("CITYCODE")));
				cityInf.setCityName(rs.getString("CITYNAME"));
				cityInf.setCityHan(rs.getString("CITYHAN"));
				list.add(cityInf);
			}
			
			rs.close();
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
