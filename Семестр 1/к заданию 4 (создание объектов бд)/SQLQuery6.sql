USE Радиостанции;

IF OBJECT_ID (N'dbo.График_работы1', N'U') IS NOT NULL 

DROP TABLE dbo.[График_работы1];
 
GO

CREATE TABLE dbo.График_работы1
(
Код_графика int PRIMARY KEY NOT NULL,
Код_сотрудника int FOREIGN KEY REFERENCES Сотрудники1 ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Дата date NOT NULL
)
