USE Радиостанции;

IF OBJECT_ID (N'dbo.Записисотрудника1', N'U') IS NOT NULL 

DROP TABLE dbo.[Записисотрудника1];
 
GO

CREATE TABLE dbo.Записисотрудника1
(
Код_сотрудника int FOREIGN KEY REFERENCES Сотрудники1 ON DELETE NO ACTION ON UPDATE NO ACTION NOT NULL,
Код_графика int FOREIGN KEY REFERENCES График_работы1 ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Номер_кода_записи int PRIMARY KEY NOT NULL,
Код_записи int NOT NULL,
Номерисполнениявэфире int NOT NULL,
CONSTRAINT FK_Записисотрудника1_Записи1 FOREIGN KEY(Код_записи, Номерисполнениявэфире) 
REFERENCES dbo.Записи1 (Код_записи, Номерисполнениявэфире) 
)
