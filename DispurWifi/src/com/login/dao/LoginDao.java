package com.login.dao;
import java.sql.*;
public class LoginDao {
	public static Connection getConnection() {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/casestudy","root","ari1106");  
			return con;
		}
		catch(Exception e) { System.out.println(e);return null;}
	}
}
