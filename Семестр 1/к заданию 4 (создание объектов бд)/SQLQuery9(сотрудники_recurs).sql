
USE ������������;

IF OBJECT_ID (N'dbo.����������_recurs', N'U') IS NOT NULL 

DROP TABLE dbo.[����������_recurs];
 
GO

CREATE TABLE dbo.����������_recurs
( 

������������� int PRIMARY KEY NOT NULL, 
������� nvarchar(15) NOT NULL,
������������� nvarchar(50) NOT NULL, 
������������ datetime NOT NULL,
��������������� int NULL FOREIGN KEY(���������������) 
REFERENCES dbo.����������_recurs (�������������)

) 