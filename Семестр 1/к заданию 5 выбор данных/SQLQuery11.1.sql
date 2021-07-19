USE Радиостанции;

IF OBJECT_ID (N'dbo.Датыпремьеры1', N'U') IS NOT NULL 

DROP TABLE dbo.[Датыпремьеры1];
 
GO

CREATE TABLE dbo.Датыпремьеры1
(
Код_записи int NOT NULL,
Номерисполнениявэфире int NOT NULL,
Дата_премьеры DATETIME NOT NULL,
CONSTRAINT FK_Датыпремьеры1_Записи1 FOREIGN KEY(Код_записи, Номерисполнениявэфире) 
REFERENCES dbo.Записи1 (Код_записи, Номерисполнениявэфире) 
)