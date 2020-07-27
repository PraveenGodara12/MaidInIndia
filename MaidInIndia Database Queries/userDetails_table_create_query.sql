USE [MaidInIndia]
GO

/****** Object:  Table [dbo].[userDetails]    Script Date: 7/25/2020 5:13:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[userDetails](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nchar](20) NOT NULL,
	[last_name] [nchar](20) NULL,
	[phone] [nchar](10) NOT NULL,
	[alt_phone] [nchar](10) NOT NULL,
	[experience] [nchar](10) NOT NULL,
	[education] [nchar](20) NULL,
	[dateOfBirth] [nchar](10) NULL,
	[placeOfBirth] [nchar](50) NULL,
	[tempAddress] [nchar](100) NOT NULL,
	[permAddress] [nchar](100) NULL,
	[gender] [nchar](10) NOT NULL,
	[expSalary] [nchar](10) NULL,
	[dusting] [bit] NULL,
	[cooking] [bit] NULL,
	[bathroom_cleaning] [bit] NULL,
	[toilet_cleaning] [bit] NULL,
	[kitchen_cleaning] [bit] NULL,
	[utensils_cleaning] [bit] NULL,
	[clothes_washing] [bit] NULL,
	[clothes_ironing] [bit] NULL,
 CONSTRAINT [PK_userDetails] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

