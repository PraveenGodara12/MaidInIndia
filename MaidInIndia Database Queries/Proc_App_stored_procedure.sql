USE [MaidInIndia]
GO

/****** Object:  StoredProcedure [dbo].[Proc_App]    Script Date: 7/25/2020 5:14:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/


CREATE Proc [dbo].[Proc_App]
( 
	@Action varchar(100)=null,
	@first_name1 varchar(100)=null,	
	@last_name1 varchar(100)=null,
	@phone1 varchar(100)=null,
	@alt_phone1 varchar(100)=null,
	@experience1 varchar(100)=null,
	@education1 varchar(100)=null,
	@dateOfBirth1 varchar(100)=null,
	@placeOfBirth1 varchar(100)=null,
	@tempAddress1 varchar(100)=null,
	@permAddress1 varchar(100)=null,
	@gender1 varchar(100)=null,
	@expSalary1 varchar(100)=null,
	@dusting1 varchar(100)=null,
	@cooking1 varchar(100)=null,
	@bathroom_cleaning1 varchar(100)=null,
	@toilet_cleaning1 varchar(100)=null,
	@kitchen_cleaning1 varchar(100)=null,
	@utensils_cleaning1 varchar(100)=null,
	@clothes_washing1 varchar(100)=null,
	@clothes_ironing1 varchar(100)=null
)

as



begin
     
	if (@Action='insert')
         begin 
		insert into userDetails(first_name,last_name,phone,alt_phone,experience,education,dateOfBirth,placeOfBirth,tempAddress,permAddress,gender,expSalary,dusting,cooking,bathroom_cleaning,toilet_cleaning,kitchen_cleaning,utensils_cleaning,clothes_washing,clothes_ironing) values(@first_name1,@last_name1,@phone1,@alt_phone1,@experience1,@education1,@dateOfBirth1,@placeOfBirth1,@tempAddress1,@permAddress1,@gender1,@expSalary1,@dusting1,@cooking1,@bathroom_cleaning1,@toilet_cleaning1,@kitchen_cleaning1,@utensils_cleaning1,@clothes_washing1,@clothes_ironing1);
         end	

	if (@Action='addcustomer')
         begin 
		insert into customerDetails(first_name,last_name,email,phone,city,password) values(@first_name1,@last_name1,@phone1,@alt_phone1,@experience1,@education1);
         end	
		
	if (@Action='verifyLogin')
	    begin
		select * from customerDetails where email=@first_name1;
		end	
		
	if (@Action='bookDetails')
	    begin
		select * from bookings where email=@first_name1 and status='active';
		end		

	if (@Action='booking')
         begin 
		 update bookings set status='inactive' where customer_id=@first_name1;
		insert into bookings(customer_id,name,email,phone,city,area,urgency,numOfPeople,address,gender,dusting,cooking,bathroom_cleaning,toilet_cleaning,kitchen_cleaning,utensils_cleaning,clothes_washing,clothes_ironing,amount,status) values(@first_name1,@last_name1,@phone1,@alt_phone1,@experience1,@education1,@dateOfBirth1,@placeOfBirth1,@tempAddress1,@permAddress1,@gender1,@expSalary1,@dusting1,@cooking1,@bathroom_cleaning1,@toilet_cleaning1,@kitchen_cleaning1,@utensils_cleaning1,@clothes_washing1,'active');
         end
end


		
 
	
	
GO

