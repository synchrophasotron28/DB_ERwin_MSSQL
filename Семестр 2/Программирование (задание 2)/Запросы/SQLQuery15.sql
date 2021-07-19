/*
�������: ������� ������� � ��������� ���� �� �� ����� ������ 
�� ���� ������ �������� �� ����, ������������ �� ���������� ����, ������ ��� ������ �������� 
(���� �������� 15 ����� 1990, �� ���� ���� ��������� 15 ����). 
���������� ���� �������� �� �������� ���� ��������.
*/
USE ������������;
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