USE ������������
GO

DECLARE @VAL INT
SET @VAL=(SELECT COUNT(*) FROM ����������)
WHILE @VAL<5
	BEGIN
		INSERT INTO ����������
		(���, �������)
		VALUES ('�� ������',0)
	END