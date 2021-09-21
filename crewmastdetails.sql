USE [avsec1]
GO

/****** Object:  Table [dbo].[crewmastdetails]    Script Date: 12/17/2018 15:02:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[crewmastdetails](
	[crewcode] [nvarchar](20) NOT NULL,
	[crewdatetime] [datetime] NULL,
	[crewdate] [date] NULL,
	[sendto] [nvarchar](10) NULL,
	[username] [nvarchar](50) NULL,
	[sessionid] [nvarchar](100) NULL,
	[field1] [datetime] NULL,
	[field2] [date] NULL,
	[field3] [nvarchar](255) NULL,
	[field4] [nvarchar](255) NULL,
	[field5] [nvarchar](255) NULL
) ON [PRIMARY]

GO


