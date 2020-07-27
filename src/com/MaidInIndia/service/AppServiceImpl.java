package com.MaidInIndia.service;

import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MaidInIndia.dao.AppDao;
import com.MaidInIndia.model.Booking;
import com.MaidInIndia.model.Customer;
import com.MaidInIndia.model.User;

@Service
public class AppServiceImpl implements AppService {
	@Autowired 
	AppDao ad;

	@Override
	public String adduser(User u) {
		return ad.adduser(u);
	}

	@Override
	public String addcustomer(Customer u) {
		return ad.addcustomer(u);
	}

	@Override
	public ResultSet verifyLogin(Customer u) {
		return ad.verifyLogin(u);
	}

	@Override
	public String booking(Booking u) {
		return ad.booking(u);
	}

	@Override
	public ResultSet bookDetails(Customer u) {
		return ad.bookDetails(u);
	}
}
