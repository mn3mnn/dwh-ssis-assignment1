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
/****** 
Question 4
******/
/********************************************************************************************************************/



USE [fcaidb]
GO

CREATE TABLE Attendance_Device (
    ID INT PRIMARY KEY,                   
    Employee_Id INT NOT NULL,             
    Finger_Print_TS DATETIME NOT NULL,  
    In_Out VARCHAR(10) 
);


INSERT INTO Attendance_Device(ID, Employee_Id, Finger_Print_TS, In_Out)
VALUES
    (1, 101, '2025-03-12 09:00:00', 'in'),
    (2, 101, '2025-03-12 10:00:00', 'in'),
    (3, 102, '2025-03-12 09:00:00', 'in'),
    (4, 103, '2025-03-12 11:00:00', 'in'),
    (5, 104, '2025-03-12 09:15:00', 'in'),
    (6, 105, '2025-03-12 10:00:00', 'in'),
    (7, 105, '2025-03-12 11:00:00', 'in'),
    (8, 105, '2025-03-12 11:30:00', 'in'),
    (9, 106, '2025-03-12 09:00:00', 'in'),
    (10, 107, '2025-03-12 09:00:00', 'in'),
    (11, 108, '2025-03-12 09:00:00', 'in'),
    (12, 101, '2025-03-12 09:00:00', 'out'),
    (13, 101, '2025-03-12 17:00:00', 'out'),
    (14, 101, '2025-03-12 19:00:00', 'out'),
    (15, 102, '2025-03-12 17:00:00', 'out'),
    (16, 103, '2025-03-12 17:00:00', 'out'),
    (17, 105, '2025-03-12 10:00:00', 'out'),
    (18, 105, '2025-03-12 11:00:00', 'out'),
    (19, 105, '2025-03-12 18:00:00', 'out'),
    (20, 106, '2025-03-12 19:00:00', 'out'),
    (21, 107, '2025-03-12 14:00:00', 'out'),
    (22, 108, '2025-03-12 17:00:00', 'out');


	
USE [fcaidwh]
GO

CREATE TABLE Employee_Attendance_Details (
    Att_Key INT identity(1,1) PRIMARY KEY,              
    Emp_ID INT NOT NULL,                  
    [Date] DATE NOT NULL,                   
    Time_In TIME(0) NOT NULL,             
    Time_Out TIME(0),            
    Worked_Hours INT,            
    [State] VARCHAR(50) NOT NULL          
);


USE [fcaidwh]
GO
select * from [dbo].[Employee_Attendance_Details] order by Emp_ID;

delete from [dbo].[Employee_Attendance_Details];