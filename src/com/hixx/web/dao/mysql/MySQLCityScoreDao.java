package com.hixx.web.dao.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
	public int[] cityRank() {
		String sql = "SELECT COUNTRY_CODE CCODE, COUNT(COUNTRY_CODE) CCOUNT FROM CITYSCORE GROUP BY COUNTRY_CODE ORDER BY CCOUNT DESC";
		int cnum = 51;int sw = 0;int swi=0;
		int cityRank[] = new int[cnum];
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "sjlee", "6664");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				cityRank[sw] = Integer.parseInt(rs.getString("CCODE"));
				sw++;
			}
			
			for(int i =1;i<=cnum;i++) {
				for(int j=0; j<sw;j++) {
					if(cityRank[j] == i) {
						swi=1;
						break; 
					}
				}
				if (swi==0) {
					cityRank[sw] = i;
					sw++;
				}
				swi=0;
			}
			
			rs.close();
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cityRank;
	}

	@Override
	public int[] cityPass(String id) {
		String sql = "SELECT COUNTRY_CODE FROM CITYSCORE WHERE WRITER = '" + id +"'";
		int cnum = 51;
		int cityPass[] = new int[cnum];
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "sjlee", "6664");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				cityPass[Integer.parseInt(rs.getString("COUNTRY_CODE"))-1] = 1;
			}
			
			rs.close();
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cityPass;
	}

	@Override
	public void add(String id, int ccode, int trate, int frate, int srate) {
		String codesql = "SELECT MAX(CODE)+1 CODE FROM CITYSCORE";
		String sql = "INSERT INTO CITYSCORE (CODE,WRITER,COUNTRY_CODE, TRATE, FRATE, SRATE) VALUES (?,?,?,?,?,?)";
		int codenum=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "sjlee", "6664");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(codesql);
			if(rs.next()) codenum = Integer.parseInt(rs.getString("CODE"));
			PreparedStatement st2 = con.prepareStatement(sql);
		
			st2.setInt(1, codenum);
			st2.setString(2, id);
			st2.setInt(3, ccode);
			st2.setInt(4, trate);
			st2.setInt(5, frate);
			st2.setInt(6, srate);
			
			st2.executeUpdate();
			
			rs.close();
			st.close();
			con.close();
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}

}
