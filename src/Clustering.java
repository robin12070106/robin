import java.io.FileInputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.hixx.web.dao.mysql.MySQLMemberDao;
import com.hixx.web.data.dao.MemberDao;
import com.hixx.web.data.entity.CityInf;
import com.hixx.web.data.entity.CityScore;

public class Clustering {

   public static void main(String args[]) {
      String sql = "SELECT * FROM CITYSCORE";
      String numsql = "SELECT ID FROM MEMBER GROUP BY ID";
      double idata[][] = new double[100][100];
      int socket[][] = new int[100][100];
      double matrix[][] = new double[100][100];
      double kmatrix[][] = new double[100][100];
      int grouping[][][] = new int[100][100][100];
      int num = 0, lang = 51, sw = 0, sum = 0;
      double popin = 0, total = 0, cc = 0;

      try {
         Class.forName("com.mysql.jdbc.Driver");
         String url = "jdbc:mysql://211.238.142.84/hixx?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
         Connection con = DriverManager.getConnection(url, "sjlee", "6664");

         Statement st = con.createStatement();
         ResultSet rs = st.executeQuery(sql);

         MemberDao memberDao = new MySQLMemberDao();
         while (rs.next()) {
            idata[memberDao.get(rs.getString("WRITER")).getCode()][rs.getInt("COUNTRY_CODE")] = rs.getInt("TRATE");
            socket[memberDao.get(rs.getString("WRITER")).getCode()][rs.getInt("COUNTRY_CODE")] = 1;
         }
         rs.close();
         st.close();
         
         Statement st2 = con.createStatement();
         ResultSet rs2 = st2.executeQuery(numsql);

         while (rs2.next())
            num++;
         
         rs2.close();
         st2.close();
         con.close();
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      } catch (SQLException e) {
         e.printStackTrace();
      }

      for (int i = 1; i <= num; i++) {
         for (int j = 1; j <= lang; j++) {
            if (socket[i][j] == 1) {
               sw++;
               sum += idata[i][j];
            }
            if (sw != 0)
               cc = sum / (double) sw;
            else
               cc = 0;

         }
         for (int j = 1; j <= lang; j++) {
            if (socket[i][j] == 0)
               idata[i][j] = cc;
         }
         sw = 0;
         sum = 0;
         cc = 0;
      }
      
      for (int i = 1; i <= num; i++) {
         for (int j = 1; j<= lang; j++) {
            System.out.printf("%.1f  ", idata[i][j]);
         }
         System.out.println();
         ;
      }

      // �⺻ ���̺� ���� - �⺻ �Ÿ����
      for (int i = 1; i <= num; i++) {
         for (int j = 1; j <= i; j++) {
            for (int k = 1; k <= lang; k++) { // lang�� ���� ��, num�� ����
                                       // ����
               popin = Math.pow(idata[i][k] - idata[j][k], 2);
               total += popin;
            }
            matrix[i][j] = total;
            matrix[j][i] = total;
            kmatrix[i][j] = total;
            total = 0;
         }
      }
      for (int i = 1; i <= num; i++) {
         for (int j = 1; j <= i; j++) {
            System.out.printf("%.1f     ",kmatrix[i][j]);
         }
         System.out.println();
      }

      // <����ȭ> - �ʱ� ���� ����
      double min = 0;
      int gx = 0, gy = 0, tt = 1, gnum = 0;
      for (int i = 1; i <= num; i++) {
         grouping[1][i][1] = i;
         grouping[1][i][0] = 1;
      }

      do {
         // gnum��° kmatrix�� ������ �ּ� �Ÿ� ����
         min = 1000000;
         for (int i = 1; i <= num - gnum; i++) {
            for (int j = 1; j < i; j++) {
               if (min > kmatrix[i][j]) {
                  min = kmatrix[i][j];
                  gx = i;
                  gy = j;
               }
            }
         }

         // grouping�迭�� ���� ���� ����
         gnum++;
         for (int i = 1; i <= grouping[gnum][gx][0]; i++) {
            grouping[gnum + 1][1][i] = grouping[gnum][gx][i];
         }
         for (int i = grouping[gnum][gx][0] + 1; i <= grouping[gnum][gx][0] + grouping[gnum][gy][0]; i++) {
            grouping[gnum + 1][1][i] = grouping[gnum][gy][i - grouping[gnum][gx][0]];
         }
         grouping[gnum + 1][1][0] = grouping[gnum][gx][0] + grouping[gnum][gy][0];
         tt = 1;
         for (int i = 1; i <= num - gnum + 1; i++) {
            if (i != gx && i != gy) {
               tt++;
               for (int j = 1; j <= grouping[gnum][i][0]; j++) {
                  grouping[gnum + 1][tt][j] = grouping[gnum][i][j];
               }
               grouping[gnum + 1][tt][0] = grouping[gnum][i][0];
            }
         }

         // kmatrix �ʱ�ȭ
         for (int i = 1; i <= num; i++) {
            for (int j = 1; j <= i; j++) {
               kmatrix[i][j] = 0;
            }
         }

         // gnum+1��° kmatrix�� ������ �Ÿ� ��� ����
         for (int i = 1; i <= num - gnum; i++) {
            for (int j = 1; j <= i; j++) {
               if (i != j) {
                  for (int k = 1; k <= grouping[gnum + 1][i][0]; k++) {
                     for (int l = 1; l <= grouping[gnum + 1][j][0]; l++) {
                        popin = matrix[grouping[gnum + 1][i][k]][grouping[gnum + 1][j][l]];
                        total += popin;
                     }
                  }
                  total = total / (grouping[gnum + 1][i][0] * grouping[gnum + 1][j][0]);
                  kmatrix[i][j] = total;
                  total = 0;
               }
            }
         }

         System.out.println(" ");
         for (int i = 1; i <= num - gnum; i++) {
            for (int j = 1; j <= i; j++) {
               System.out.printf("%.1f     ",kmatrix[i][j]);
            }
            System.out.println();
         }
      } while (gnum <= num - 1);

      System.out.println();
      System.out.println();
      for (int i = 1; i <= num; i++) {
         System.out.println(i + "번째 군집결과");
         for (int j = 1; j <= num - i + 1; j++) {
            for (int k = 1; k <= grouping[i][j][0]; k++) {
               System.out.print(grouping[i][j][k] + "   ");
            }
            System.out.println();
         }
         System.out.println();
      }

   }

}