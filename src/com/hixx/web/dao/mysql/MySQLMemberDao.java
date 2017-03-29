package com.hixx.web.dao.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.hixx.web.data.dao.MemberDao;
import com.hixx.web.data.entity.Member;

public class MySQLMemberDao implements MemberDao {

	@Override
	public int add(Member member) {
		return add(member.getId(),member.getPwd(),member.getGender(),member.getAge(),member.getBirthdate());
	}

	@Override
	public int add(String id, String pwd, String gender, int age, String birthdate) {
		String codesql = "SELECT MAX(CODE)+1 CODE FROM MEMBER";
		String sql = "INSERT INTO MEMBER (CODE, ID, PWD, GENDER, AGE, BIRTHDATE, REGDATE) VALUES(?, ?, ?, ?, ?, ?, NOW())";
		int result =0;int codenum=0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "sjlee", "6664");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(codesql);
			
			rs.next();
			if (rs.getString("CODE") == null) codenum = 1;
			else codenum = Integer.parseInt(rs.getString("CODE"));
			
			rs.close();
			st.close();
			
			PreparedStatement pop = con.prepareStatement(sql);
			pop.setInt(1, codenum);
			pop.setString(2, id);
			pop.setString(3, pwd);
			pop.setString(4, gender);
			pop.setInt(5, age);
			pop.setString(6, birthdate);
			
			result = pop.executeUpdate();
			
			pop.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	return result;
	}

	@Override
	public Member get(String id) {
		String sql = "SELECT * FROM MEMBER WHERE ID='"+id +"'";
		Member member = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "sjlee", "6664");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()) {
				member = new Member();
				
				member.setCode(Integer.parseInt(rs.getString("CODE")));
				member.setId(rs.getString("ID"));
				member.setPwd(rs.getString("PWD"));
				member.setGender(rs.getString("GENDER"));
				member.setAge(Integer.parseInt(rs.getString("AGE")));
				member.setBirthdate(rs.getString("BIRTHDATE"));
				member.setTicket(Integer.parseInt(rs.getString("TICKET")));
			}
			rs.close();
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
	}

	@Override
	public void ticketAdd(String id) {
		String sql = "UPDATE MEMBER SET TICKET =1 WHERE ID ='"+id+"'";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "sjlee", "6664");
			
			Statement st = con.createStatement();
			st.executeUpdate(sql);

			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		
	}
}