USE [MaidInIndia]
GO

/****** Object:  Table [dbo].[customerDetails]    Script Date: 7/25/2020 5:13:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[customerDetails](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nchar](20) NOT NULL,
	[last_name] [nchar](20) NULL,
	[email] [nchar](50) NOT NULL,
	[phone] [nchar](10) NOT NULL,
	[city] [nchar](20) NOT NULL,
	[password] [nchar](50) NOT NULL,
 CONSTRAINT [PK_customerDetails] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

