USE Радиостанции;

IF OBJECT_ID (N'dbo.Сотрудники1', N'U') IS NOT NULL 

DROP TABLE dbo.[Сотрудники1];
 
GO

CREATE TABLE dbo.Сотрудники1
(
Код_сотрудника int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Код_должности int FOREIGN KEY REFERENCES Должности1 ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
ФИО nvarchar(50) NOT NULL,
Возраст int NOT NULL,
Пол nchar(7) NOT NULL
)
