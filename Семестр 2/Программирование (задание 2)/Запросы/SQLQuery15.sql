/*
Задание: Создать таблицу и заполнить одно из ее полей датами 
от даты вашего рождения до даты, отличающейся на количество дней, равных дню Вашего рождения 
(дата рождения 15 марта 1990, от этой даты заполнить 15 дней). 
Количество дней получить из заданной даты рождения.
*/
USE Радиостанции;
GO

IF OBJECT_ID (N'Date_of_Birth', N'U') IS NOT NULL

DROP TABLE Date_of_Birth;

GO
CREATE TABLE Date_of_Birth (
		ID_Date   INT      IDENTITY(1,1),
        Date_Birth    DATETIME NOT NULL
 )
DECLARE @DATE DATETIME
DECLARE @N INT
SET @N=1
SET @DATE='28.01.2001'

WHILE @N<28
	BEGIN
		INSERT INTO Date_of_Birth
		VALUES (@DATE+@N) 
		SET @N=@N+1
	END

SELECT * FROM Date_of_Birth