USE Радиостанции
GO

DECLARE @VAL INT
SET @VAL=(SELECT COUNT(*) FROM Сотрудники)
WHILE @VAL<5
	BEGIN
		INSERT INTO Сотрудники
		(ФИО, Возраст)
		VALUES ('Не задано',0)
	END