package com.user.registrationDao;
import java.sql.*;

import com.database.connect.DbConnection;
public class RegistrationDao {
	
	
	private static int getRegistrationId(Connection con) {
		int id=1000;
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select max(userID) from userdetails;");
			while (rs.next()) {
				id += (rs.getInt(1)+1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id;
	}
	
	
	public static int insertUser(String name,String sname,String addr,String email,String pass,Long ph) {
		Connection con = DbConnection.getConnection();
		int regId = getRegistrationId(con);
		
		try {
			PreparedStatement ps = con.prepareStatement("insert into userdetails values(null,?,?,?,?,?,?,?);");
			ps.setInt(1,regId);
			ps.setString(2, name+" "+sname);
			ps.setString(3, addr);
			ps.setString(4, email);
			ps.setLong(5, ph);
			ps.setString(6, pass);
			ps.setString(7, "user");
			
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();return -1;
		}
		return regId;
	}
}
