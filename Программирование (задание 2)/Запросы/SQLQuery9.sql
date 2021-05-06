/*
���� WHILE

��������� ����� ������ ������������������. 
������� ������ ����� ������������������ ������������ ������� ��������. 
���������� ����� �� �������� �������� ���������� (�������� � ���������). 
�������� ���������� ������������ ��� �������� ���� ������ ������������������.
6. (-1)^(N+1)/(2*N)!
��� ���������� � ������� ������������ ������� POWER ( numeric_expression, y), 
��� y - �������, � ������� ���������� �������� numeric_expression. 
�������� y �������� ���������� ��������� ������� ��������� ��� ���������������� ��������� ���� ������, �� ����������� ���� ������ bit.
*/

USE ������������
GO

ALTER FUNCTION GetSeqU
 (@N int)
RETURNS float
AS
 BEGIN
  DECLARE @D FLOAT
  --6. (-1)^(N+1)/(2*N)
	SET @D=POWER((-1),(@N+1)/(2*@N));
  RETURN @D
 END

DECLARE @SUM FLOAT
DECLARE @N INT
DECLARE @VAL FLOAT
SET @N=1
SET @VAL=1
SET @SUM=0
WHILE @VAL > 0.01
BEGIN
SET @VAL = (SELECT dbo.GetSeqU(@N+1))-(SELECT dbo.GetSeqU(@N))
SET @SUM=@SUM+@VAL
SET @N=@N+1;
END
SELECT @SUM