USE Радиостанции;

IF OBJECT_ID (N'dbo.Сотрудники4', N'U') IS NOT NULL 

DROP TABLE dbo.[Сотрудники4];
 
GO

CREATE TABLE dbo.Сотрудники4
(
Код_сотрудника int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Фамилия nchar(15) NULL,
Дата_рождения DATE NULL,
Специальность nchar(10) NULL,
Код_подчиненного int REFERENCES Сотрудники4(Код_сотрудника) null
)
DELETE FROM Сотрудники4
SET IDENTITY_INSERT Сотрудники4 ON
INSERT INTO dbo.Сотрудники4 (Код_сотрудника, Фамилия, Дата_рождения, Специальность,Код_подчиненного)

Values
(1,'Карпов','01.10.1990', 'Спец1',2), 
(2,'Смирнов','01.10.1980', 'Спец1',1), 
(3,'Мишин','01.10.1995', 'Спец2',4), 
(4,'Серпин','01.10.1982', 'Спец2',6), 
(5,'Кручинин','01.10.2000', 'Спец3',6), 
(6,'Нестеров','01.10.1996', 'Спец4',NULL)




SELECT * 
FROM dbo.Сотрудники4; 

GO
WITH EmpsRN AS
(
  SELECT *,
    ROW_NUMBER() OVER(PARTITION BY Код_подчиненного ORDER BY Фамилия, Код_сотрудника) AS n
  FROM dbo.Сотрудники4
)
SELECT * FROM EmpsRN;