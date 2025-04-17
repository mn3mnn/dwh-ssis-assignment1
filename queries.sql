/****** 
Question 3
******/
/********************************************************************************************************************/

USE [fcaidb]
GO

/****** Object:  Table [dbo].[Employee_Q3]    Script Date: 4/17/2025 12:56:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee_Q3](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Schedule_Date] [date] NOT NULL,
 CONSTRAINT [PK_Employee_Q3] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



USE [fcaidb]
GO
INSERT INTO [dbo].[Employee_Q3] ([ID], [Name], [City], [Email], [Schedule_Date])
VALUES 
(1001, 'Ahmed', 'Cairo', 'ahmed@mail.com', '2025-03-27'),
(1002, 'Nehal', 'Giza', 'nehal@mail.com', '2025-03-27'),
(1003, 'Samaa', 'Cairo', 'samaa@mail.com', '2025-03-27');

USE [fcaidb]
GO
UPDATE [dbo].[Employee_Q3] SET Schedule_Date = '2025-03-28';


USE [fcaidb]
GO
SELECT * FROM [dbo].[Employee_Q3];


USE [fcaidwh]
GO

/****** Object:  Table [dbo].[Dim_Employee_Q3]    Script Date: 4/17/2025 1:01:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Employee_Q3](
	[Key] [int] IDENTITY(1,1),
	[Emp_ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Insert_Date] [date] NOT NULL,
	[Active_Flag] [bit] NOT NULL,
	[Version_No] [int] NOT NULL,
 CONSTRAINT [PK_Dim_Employee_Q3] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



USE [fcaidwh]
GO
SELECT * FROM [dbo].[Dim_Employee_Q3];


/********************************************************************************************************************/

