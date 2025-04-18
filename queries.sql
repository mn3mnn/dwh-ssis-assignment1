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


CREATE TABLE Employee_Current (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(100),
    Email VARCHAR(100),
    Update_Date DATE
);
CREATE TABLE Employee_History (
  ID INT,
  Name VARCHAR(100),
  Old_City VARCHAR(100),
  Old_Email VARCHAR(100),
  Change_Date DATE
);
CREATE TABLE Employee_Q2 (
    ID INT,
    Name VARCHAR(100),
    City VARCHAR(100),
    Email VARCHAR(100),
    Update_Date DATE
);
SELECT * FROM Employee_Q2
INSERT INTO Employee_Q2 (ID, Name, City, Email, Update_Date)
VALUES
(1001, 'Ahmed', 'Cairo', 'ahmed@mail.com', '2025-03-27'),
(1002, 'Nehal', 'Giza', 'nehal@mail.com', '2025-03-27'),
(1003, 'Samaa', 'Cairo', 'samaa@mail.com', '2025-03-27');
UPDATE Employee_Q2
SET City = 'Alexandria', Email = 'ahmed.new@mail.com'
WHERE ID = 1001;
-- Check current table
SELECT * FROM Employee_Current;

-- Check history table


