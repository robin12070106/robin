import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataSetting {

	public static void main(String[] args) {
		int cnum = 51;
		String[] cities = { "jeju", "seoul", "busan", "andong", "jeonju", "anmyeondo", "daegu", "gangneung", "gyeongju", "damyang", "yeosu", "chuncheon", "sokcho", "geoje", "ulsan", "gwangju", "incheon", "pohang", "gapyeong", "boseong", "danyang", "daejeon", "jinju", "tongyeong", "dangjin", "ulleungdo", "udo", "miryeong", "suncheon", "taebaek", "suwon", "boeun", "jecheon", "yeongwol", "jinhae", "gunsan", "mokpo", "yangpyeong", "seosan", "pocheon", "jeongdongjin", "samcheok", "muju", "donghae", "pyeongchang", "hadong", "gokseong", "namwon", "uljin", "namhae", "haenam" };
		System.out.println(cities.length);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "sjlee", "6664");
			for(int i=0;i<cnum;i++) {
				String sql = "INSERT INTO CITYINF (CITYCODE, CITYNAME, CITYIMG) VALUES (?,?,?)";		
				PreparedStatement st = con.prepareStatement(sql);
				st.setInt(1, i+1);
				st.setString(2, cities[i]);
				st.setString(3, null);
				st.executeUpdate();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
