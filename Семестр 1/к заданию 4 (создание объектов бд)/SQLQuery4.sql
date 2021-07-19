USE Радиостанции; 

IF OBJECT_ID (N'dbo.Записи1', N'U') IS NOT NULL 

DROP TABLE dbo.[Записи1];
 
GO

CREATE TABLE dbo.Записи1
(
Код_записи int NOT NULL,
Номерисполнениявэфире int NOT NULL,
Код_жанра int FOREIGN KEY REFERENCES Жанры1 ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Код_исполнителя int FOREIGN KEY REFERENCES Исполнители1 ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
Наименование nvarchar (50) NOT NULL,
Альбом nvarchar (50) NULL,
Год datetime NOT NULL,
Дата_записи date NOT NULL default GETDATE(),
Длительность time CHECK (Длительность > '00:00:00' And Длительность <= '00:10:00') NOT NULL, 
Рейтинг float CHECK (Рейтинг >= 0 And Рейтинг <= 10) NOT NULL,
CONSTRAINT PK_Записи1 PRIMARY KEY CLUSTERED  
(Код_записи ASC, Номерисполнениявэфире ASC) 

)
