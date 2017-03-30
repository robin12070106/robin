import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hixx.web.dao.mysql.MySQLMemberDao;
import com.hixx.web.data.dao.MemberDao;
import com.hixx.web.data.entity.CityInf;
import com.hixx.web.data.entity.CityScore;

public class Clustering {

	public static void main(String args[]){
		String sql = "SELECT * FROM CITYSCORE";
		double idata[][] = new double[100][100];
		int socket[][] = new int[100][100];
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "sjlee", "6664");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			MemberDao memberDao = new MySQLMemberDao();
			
			while(rs.next()) {
				idata[rs.getInt("COUNTRY_CODE")][memberDao.get(rs.getString("WRITER")).getCode()] = rs.getInt("TRATE");	
				socket[rs.getInt("COUNTRY_CODE")][memberDao.get(rs.getString("WRITER")).getCode()] = 1;
			}
			
			rs.close();
			st.close();
			con.close();
			
/*			rs.getInt("FRATE");
			rs.getInt("SRATE");*/
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		for(int i=0;i<51;i++) {
			for(int j=0;j<51;j++) {
				System.out.print((int)idata[i][j]+" ");
			}
			System.out.println();;
		}
		
	}

}
