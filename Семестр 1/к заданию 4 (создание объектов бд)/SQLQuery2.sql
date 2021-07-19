USE Радиостанции;

IF OBJECT_ID (N'dbo.Исполнители1', N'U') IS NOT NULL 

DROP TABLE dbo.[Исполнители1];
 
GO

CREATE TABLE dbo.Исполнители1
(
Код_исполнителя int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Имя nvarchar (50) NOT NULL,
Описание nvarchar (50) NULL
)
