USE Радиостанции;

IF OBJECT_ID (N'dbo.Жанры1', N'U') IS NOT NULL 

DROP TABLE dbo.[Жанры1];
 
GO

CREATE TABLE dbo.Жанры1
(
Код_жанра int PRIMARY KEY NOT NULL,
Наименование nvarchar(50) NOT NULL,
Описание nvarchar(50) NULL
)
