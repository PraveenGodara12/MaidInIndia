package com.MaidInIndia.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.MaidInIndia.model.Booking;
import com.MaidInIndia.model.Customer;
import com.MaidInIndia.model.User;

@Repository
public class AppDaoImpl implements AppDao {
	@Autowired 
	JdbcTemplate jdbcTemplate;

	@Override
	public String adduser(User u) {
		Connection con = null;
		try{
			final String procedurecall = "{call proc_app(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
			con = jdbcTemplate.getDataSource().getConnection();
			CallableStatement cs = con.prepareCall(procedurecall);
			cs.setString(1,"insert");
			cs.setString(2,u.getFirst_name());
			cs.setString(3,u.getLast_name());
			cs.setString(4,u.getPhone());
			cs.setString(5,u.getAlt_phone());
			cs.setString(6,u.getExperience());
			cs.setString(7,u.getEducation());
			cs.setString(8,u.getDateOfBirth());
			cs.setString(9,u.getPlaceOfBirth());
			cs.setString(10,u.getTempAddress());
			cs.setString(11,u.getPermAddress());
			cs.setString(12,u.getGender());
			cs.setString(13,u.getExpSalary());
			cs.setInt(14,u.getDusting());
			cs.setInt(15,u.getCooking());
			cs.setInt(16,u.getBathroom_cleaning());
			cs.setInt(17,u.getToilet_cleaning());
			cs.setInt(18,u.getKitchen_cleaning());
			cs.setInt(19,u.getUtensils_cleaning());
			cs.setInt(20,u.getClothes_washing());
			cs.setInt(21,u.getClothes_ironing());
			cs.execute();
			return "registered";
		}catch(Exception e){
			e.printStackTrace();
			return "jobs";
		}finally{
			try{
				con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}

	@Override
	public String addcustomer(Customer u) {
		Connection con = null;
		try{
			final String procedurecall = "{call proc_app(?,?,?,?,?,?,?)}";
			con = jdbcTemplate.getDataSource().getConnection();
			CallableStatement cs = con.prepareCall(procedurecall);
			cs.setString(1,"addcustomer");
			cs.setString(2,u.getFirst_name());
			cs.setString(3,u.getLast_name());
			cs.setString(4,u.getEmail());
			cs.setString(5,u.getPhone());
			cs.setString(6,u.getCity());
			cs.setString(7,u.getPassword());
			cs.execute();
			return "login";
		}catch(Exception e){
			e.printStackTrace();
			return "signup";
		}finally{
			try{
				con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}

	@Override
	public ResultSet verifyLogin(Customer u) {
		final String procedurecall = "{call Proc_App(?,?)}";
		Connection con = null;
		ResultSet rs = null;
		try{
			con = jdbcTemplate.getDataSource().getConnection();
			CallableStatement cs = con.prepareCall(procedurecall);
			cs.setString(1, "verifyLogin");
			cs.setString(2, u.getEmail());
			rs = cs.executeQuery();
			return rs;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public ResultSet bookDetails(Customer u) {
		final String procedurecall = "{call Proc_App(?,?)}";
		Connection con = null;
		ResultSet rs = null;
		try{
			con = jdbcTemplate.getDataSource().getConnection();
			CallableStatement cs = con.prepareCall(procedurecall);
			cs.setString(1, "bookDetails");
			cs.setString(2, u.getEmail());
			rs = cs.executeQuery();
			return rs;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public String booking(Booking u) {
		Connection con = null;
		try{
			final String procedurecall = "{call proc_app(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
			con = jdbcTemplate.getDataSource().getConnection();
			CallableStatement cs = con.prepareCall(procedurecall);
			cs.setString(1,"booking");
			cs.setInt(2,u.getCustomer_id());
			cs.setString(3,u.getName());
			cs.setString(4,u.getEmail());
			cs.setString(5,u.getPhone());
			cs.setString(6,u.getCity());
			cs.setString(7,u.getArea());
			cs.setString(8,u.getUrgency());
			cs.setString(9,u.getNumOfPeople());
			cs.setString(10,u.getAddress());
			cs.setString(11,u.getGender());
			cs.setInt(12,u.getDusting());
			cs.setInt(13,u.getCooking());
			cs.setInt(14,u.getBathroom_cleaning());
			cs.setInt(15,u.getToilet_cleaning());
			cs.setInt(16,u.getKitchen_cleaning());
			cs.setInt(17,u.getUtensils_cleaning());
			cs.setInt(18,u.getClothes_washing());
			cs.setInt(19,u.getClothes_ironing());
			int nop = Integer.parseInt(u.getNumOfPeople());
			int amount = (u.getDusting()*500)+(nop*500*u.getCooking())+(u.getBathroom_cleaning()*300)+(u.getToilet_cleaning()*300)+(u.getKitchen_cleaning()*300)+(nop*300*u.getUtensils_cleaning())+(nop*500*u.getClothes_washing())+(nop*300*u.getClothes_ironing());
			cs.setInt(20,amount);
			cs.execute();
			return "booked";
		}catch(Exception e){
			e.printStackTrace();
			return "book";
		}finally{
			try{
				con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
}
