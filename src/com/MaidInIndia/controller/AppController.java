package com.MaidInIndia.controller;

import java.sql.ResultSet;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.MaidInIndia.model.Booking;
import com.MaidInIndia.model.Customer;
import com.MaidInIndia.model.User;
import com.MaidInIndia.service.AppService;

@Controller

public class AppController {
	@Autowired
	AppService as;
	   @RequestMapping(value="/")
	   public String home(){
	   return "index";
	   }
	   @RequestMapping(value="home")
	   public String home1(){
	   return "index";
	   }
	   @RequestMapping(value="jobs")
	   public String jobs(){
	   return "jobs";
	   }
	   @RequestMapping(value="login")
	   public String login(){
	   return "login";
	   }
	   @RequestMapping(value="signup")
	   public String signup(){
	   return "signup";
	   }
	   @RequestMapping(value="book")
	   public String book(){
	   return "book";
	   }
	   @RequestMapping(value="adduser")
	   public String adduser(HttpServletRequest req,User u){
		   String rv = as.adduser(u);
		   if(rv.equals("jobs")){
				req.setAttribute("msg", "There was some problem in registering. Please try again.");
				System.out.println("There was some problem in registering. Please try again.");
				return rv;
			}else{
				req.setAttribute("msg", "successfully registered");
				return rv;
			}
	   }
	   @RequestMapping(value="addcustomer")
	   public String addcustomer(HttpServletRequest req,Customer u){
		   String rv = as.addcustomer(u);
		   if(rv.equals("signup")){
				req.setAttribute("msg", "There was some problem in registering. Please try again.");
				System.out.println("There was some problem in registering. Please try again.");
				return rv;
			}else{
				req.setAttribute("msg", "successfully registered! Please Login");
				return rv;
			}
	   }
	   @RequestMapping(value="verifyLogin")
	   public String verifyLogin(HttpServletRequest req,Customer u){
		   try{
			   ResultSet rs = as.verifyLogin(u);
			   rs.next();
			   String pwd = rs.getString(7);
			   String email = rs.getString(4);
			   req.setAttribute("email", email);
			   if(pwd.trim().equalsIgnoreCase(u.getPassword().trim())){
				   ResultSet rs1 = as.bookDetails(u);
				   if(rs1.next()){
					   req.setAttribute("key","BZVTjj6z");
					   req.setAttribute("customer_id", rs1.getString(2));
					   req.setAttribute("name", rs1.getString(3));
					   req.setAttribute("phone", rs1.getString(5));
					   req.setAttribute("city", rs1.getString(6));
					   req.setAttribute("numOfPeople", rs1.getString(9));
					   req.setAttribute("address", rs1.getString(10));
					   req.setAttribute("gender", rs1.getString(11));
					   if(rs1.getInt(12)==1){
						   req.setAttribute("service1", "Dusting");
					   }
					   if(rs1.getInt(13)==1){
						   req.setAttribute("service2", "Cooking");
					   }
					   if(rs1.getInt(14)==1){
						   req.setAttribute("service3", "Bathroom Cleaning");
					   }
					   if(rs1.getInt(15)==1){
						   req.setAttribute("service4", "Toilet Cleaning");
					   }
					   if(rs1.getInt(16)==1){
						   req.setAttribute("service5", "Kitchen Cleaning");
					   }
					   if(rs1.getInt(17)==1){
						   req.setAttribute("service6", "Utensils Cleaning");
					   }
					   if(rs1.getInt(18)==1){
						   req.setAttribute("service7", "Clothes Washing");
					   }
					   if(rs1.getInt(19)==1){
						   req.setAttribute("service8", "Clothes Ironing");
					   }
					   req.setAttribute("amount", rs1.getString(20));
					   String payment_status = rs1.getString(22);
					   if(payment_status==null){
						   req.setAttribute("section", "NoPaymentSection");
					   }else if(payment_status.trim().equals("complete")){
						   req.setAttribute("section", "CompleteSection");
					   }else{
						   req.setAttribute("section", "NoPaymentSection");
					   }
					   req.setAttribute("payment_status", payment_status);
					   Date dateOfBooking = rs1.getDate(23);
					   Date today = new Date();
					   long diff = today.getTime()- dateOfBooking.getTime();
					   int daysOfBooking = (int)(diff/(24*60*60*1000)); 
					   req.setAttribute("daysOfBooking", daysOfBooking);
					   req.setAttribute("dateOfBooking", rs1.getDate(23));
				   }else{
					   req.setAttribute("section", "NoBookingSection");
				   }
				   return "profile";
			   }else{
				   req.setAttribute("msg","username not found");
				   return "login";
			   }
		   }catch(Exception e){
			   e.printStackTrace();
			   req.setAttribute("msg", "Exception Occured");
			   return "login";
		   }
	   }
	   @RequestMapping(value="bookRequest")
	   public String bookRequest(HttpServletRequest req,Customer u){
		   try{
			   ResultSet rs = as.verifyLogin(u);
			   rs.next();
			   req.setAttribute("customer_id", rs.getString(1));
			   req.setAttribute("name", rs.getString(2)+" "+rs.getString(3));
			   req.setAttribute("email", rs.getString(4));
			   req.setAttribute("phone", rs.getString(5));
			   req.setAttribute("city", rs.getString(6));
			   return "book";
		   }catch(Exception e){
			   e.printStackTrace();
			   req.setAttribute("msg", "Exception Occured");
			   return "login";
		   }
	   }
	   @RequestMapping(value="booking")
	   public String booking(HttpServletRequest req,Booking u){
		   String rv = as.booking(u);
		   if(rv.equals("book")){
				req.setAttribute("msg", "There was some problem in booking. Please try again.");
				System.out.println("There was some problem in booking. Please try again.");
				return rv;
			}else{
				req.setAttribute("msg", "successfully booked");
				return rv;
			}
	   }
}
