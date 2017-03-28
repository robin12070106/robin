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
			rs.close();
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int[] cityrank() {
		String sql = "SELECT COUNTRY_CODE CCODE, COUNT(COUNTRY_CODE) CCOUNT FROM CITYSCORE GROUP BY COUNTRY_CODE ORDER BY CCOUNT DESC";
		int cnum = 51;int imsi = 0;
		int cityCount[] = new int[cnum+1];
		int cityRank[] = new int[cnum+1];
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "sjlee", "6664");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				cityRank[Integer.parseInt(rs.getString("CCODE"))] = Integer.parseInt(rs.getString("CCOUNT"));
			}
			
			/*for(int i=1;i<=cnum;i++) {
				for(int j=i;j<cnum;j++) {
					if(cityCount[i] < cityCount[j]) {
						imsi = cityCount[i];
						cityCount[i] = cityCount[j];
						cityCount[j] = imsi;
						
					}
				}
			}*/
			System.out.println(cityRank[0]);
			System.out.println(cityRank[1]);
			System.out.println(cityRank[2]);
			System.out.println(cityRank[3]);
			System.out.println(cityRank[4]);
			System.out.println(cityRank[5]);
			System.out.println(cityRank[6]);
			System.out.println(cityRank[7]);
			System.out.println(cityRank[8]);
			System.out.println(cityRank[9]);
			System.out.println(cityRank[10]);
			System.out.println(cityRank[11]);
			System.out.println(cityRank[12]);
			System.out.println(cityRank[13]);
			
			/*for(int i : cityRank) {
				if (cityRank[i] == 0) cityRank[i] = 0;
			}*/
			
			rs.close();
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public int[] citypass() {
		
		return null;
	}

}
