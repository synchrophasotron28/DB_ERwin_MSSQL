
USE Радиостанции;

IF OBJECT_ID (N'dbo.Сотрудники_recurs', N'U') IS NOT NULL 

DROP TABLE dbo.[Сотрудники_recurs];
 
GO

CREATE TABLE dbo.Сотрудники_recurs
( 

Кодсотрудника int PRIMARY KEY NOT NULL, 
Фамилия nvarchar(15) NOT NULL,
Специальность nvarchar(50) NOT NULL, 
ДатаРождения datetime NOT NULL,
Кодруководителя int NULL FOREIGN KEY(Кодруководителя) 
REFERENCES dbo.Сотрудники_recurs (Кодсотрудника)

) 