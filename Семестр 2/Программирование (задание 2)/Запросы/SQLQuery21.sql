CREATE TRIGGER WORK1--создание триггера
ON Сотрудники1
AFTER INSERT AS
DECLARE @KODE_S INT, @KODE_D INT
SELECT @KODE_S=Код_сотрудника, @KODE_D=Код_должности
FROM Сотрудники1

IF (@KODE_S>5 OR @KODE_D<5)
	BEGIN
		RAISERROR('Ошибка!',5,1)
		ROLLBACK TRAN
	END
GO
