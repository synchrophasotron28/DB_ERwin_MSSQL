USE ������������;

IF OBJECT_ID (N'dbo.�����1', N'U') IS NOT NULL 

DROP TABLE dbo.[�����1];
 
GO

CREATE TABLE dbo.�����1
(
���_����� int PRIMARY KEY NOT NULL,
������������ nvarchar(50) NOT NULL,
�������� nvarchar(50) NULL
)
