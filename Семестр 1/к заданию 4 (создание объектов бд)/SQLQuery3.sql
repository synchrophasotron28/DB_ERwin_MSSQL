USE Радиостанции;

IF OBJECT_ID (N'dbo.Должности1', N'U') IS NOT NULL 

DROP TABLE dbo.Должности1;

 
GO

CREATE TABLE dbo.Должности1
(
Код_должности int PRIMARY KEY NOT NULL,
Наименованиедолжности nvarchar(50) NOT NULL,
Оклад money NOT NULL DEFAULT 0,
Обязанности nvarchar(50) NOT NULL,
Требования nvarchar(50) NULL,
Годовой_оклад AS (Оклад*12) PERSISTED --добавление вычисляемого столбца

)
