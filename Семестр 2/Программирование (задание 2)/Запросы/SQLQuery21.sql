CREATE TRIGGER WORK1--�������� ��������
ON ����������1
AFTER INSERT AS
DECLARE @KODE_S INT, @KODE_D INT
SELECT @KODE_S=���_����������, @KODE_D=���_���������
FROM ����������1

IF (@KODE_S>5 OR @KODE_D<5)
	BEGIN
		RAISERROR('������!',5,1)
		ROLLBACK TRAN
	END
GO
