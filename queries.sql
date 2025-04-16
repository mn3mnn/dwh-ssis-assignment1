USE [fcai_dwh]
GO

/****** Object:  Table [dbo].[Employee_Q2]    Script Date: 4/14/2025 9:03:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee_Q2](
	[Name] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Update_Date] [datetime] NULL
) ON [PRIMARY]
GO

/*create universtiy table q1*/
CREATE TABLE University (
    Name NVARCHAR(255),
    Country NVARCHAR(100),
    Alpha_Two_Code NVARCHAR(10)
);