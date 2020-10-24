package com.login.check;

import com.login.dao.LoginDao;
import com.object.user.User;
import java.sql.*;

public class LoginValidation {
	public static User validate(String uname,String pass) {
		Connection con = LoginDao.getConnection();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from userdetails");
			while(rs.next()) {
				if(rs.getString(2).equals(uname) && rs.getString(7).equals(pass)){
					return new User(rs.getInt(1),rs.getInt(2),rs.getLong(6),rs.getString(3),rs.getString(5),rs.getString(4),rs.getString(8),rs.getString(7));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
