USE ������������;

IF OBJECT_ID (N'dbo.����������1', N'U') IS NOT NULL 

DROP TABLE dbo.[����������1];
 
GO

CREATE TABLE dbo.����������1
(
���_���������� int PRIMARY KEY IDENTITY(1,1) NOT NULL,
���_��������� int FOREIGN KEY REFERENCES ���������1 ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
��� nvarchar(50) NOT NULL,
������� int NOT NULL,
��� nchar(7) NOT NULL
)
