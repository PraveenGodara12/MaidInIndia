USE [MaidInIndia]
GO

/****** Object:  Table [dbo].[bookings]    Script Date: 7/25/2020 5:12:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[bookings](
	[booking_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[name] [nchar](50) NOT NULL,
	[email] [nchar](100) NOT NULL,
	[phone] [nchar](15) NOT NULL,
	[city] [nchar](30) NOT NULL,
	[area] [nchar](100) NULL,
	[urgency] [nchar](40) NULL,
	[numOfPeople] [nchar](10) NOT NULL,
	[address] [nchar](200) NOT NULL,
	[gender] [nchar](10) NULL,
	[dusting] [bit] NULL,
	[cooking] [bit] NULL,
	[bathroom_cleaning] [bit] NULL,
	[toilet_cleaning] [bit] NULL,
	[kitchen_cleaning] [bit] NULL,
	[utensils_cleaning] [bit] NULL,
	[clothes_washing] [bit] NULL,
	[clothes_ironing] [bit] NULL,
	[amount] [int] NULL,
	[status] [nchar](10) NULL,
	[payment_status] [nchar](10) NULL,
	[dateOfBooking] [date] NULL,
 CONSTRAINT [PK_bookings] PRIMARY KEY CLUSTERED 
(
	[booking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

