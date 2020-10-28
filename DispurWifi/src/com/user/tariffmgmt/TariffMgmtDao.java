package com.user.tariffmgmt;

import java.util.*;
import java.sql.*;

import com.database.connect.DbConnection;
import com.object.user.*;

public class TariffMgmtDao {

	public static List<TariffPlan> fetchAllPlanData() {
		List<TariffPlan> list = new ArrayList<TariffPlan>();

		Connection con = DbConnection.getConnection();

		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from tariffdetails;");
			while (rs.next()) {
				list.add(new TariffPlan(rs.getInt(1), rs.getInt(5), rs.getString(2), rs.getString(3), rs.getDouble(6),
						rs.getDouble(4)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public static List<TariffPlan> fetchAvailablePlansId(int id) {
		List<TariffPlan> list = new ArrayList<TariffPlan>();

		Connection con = DbConnection.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(
					"select * from tariffdetails where planID not in (select plan_id from user_plan where user_id=?);");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new TariffPlan(rs.getInt(1), rs.getInt(5), rs.getString(2), rs.getString(3), rs.getDouble(6),
						rs.getDouble(4)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public static List<TariffPlan> fetchSubscribedPlansId(int id) {

		List<TariffPlan> list = new ArrayList<TariffPlan>();

		Connection con = DbConnection.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(
					"select * from tariffdetails where planID in (select plan_id from user_plan where user_id=?);");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new TariffPlan(rs.getInt(1), rs.getInt(5), rs.getString(2), rs.getString(3), rs.getDouble(6),
						rs.getDouble(4)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	public static String subscribePlan(int user_id,int plan_id) {
		
		Connection con = DbConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("insert into user_plan values(?,?)");
			ps.setInt(1, user_id);
			ps.setInt(2, plan_id);
			
			if(ps.execute()) {
				return "Can not Subscribe to plan right now";
			}
			else {
				return "Subscribe to the new plan successfully";
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "Can not Subscribe to plan right now";
	}
	
	public static String unsubscribePlan(int user_id,int plan_id) {
		
		Connection con = DbConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("delete from user_plan where user_id=? and plan_id=?");
			ps.setInt(1, user_id);
			ps.setInt(2, plan_id);
			
			if(ps.execute()) {
				return "Can not Unubscribe to plan right now ! Try after some time";
			}
			else {
				return "Unsubscribe to the plan successfully";
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "Can not Unubscribe to plan right now ! Try after some time";
	}
}
