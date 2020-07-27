package com.MaidInIndia.dao;

import java.sql.ResultSet;

import com.MaidInIndia.model.Booking;
import com.MaidInIndia.model.Customer;
import com.MaidInIndia.model.User;

public interface AppDao {

	String adduser(User u);

	String addcustomer(Customer u);

	ResultSet verifyLogin(Customer u);

	String booking(Booking u);

	ResultSet bookDetails(Customer u);

}
