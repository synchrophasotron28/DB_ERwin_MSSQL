/*
�������� � ������������� �������.

1. ������� ��������� ������� � ������������ ��������� � ��� � �������.

2. ������� �������� ��������� ������� � ��������� � ���.
*/
USE ������������
GO

IF OBJECT_ID (N'FUNC1', N'U') IS NOT NULL

DROP FUNCTION FUNC1;

GO


alter FUNCTION FUNC1(@FIO CHAR(10))
RETURNS TABLE
AS 
RETURN (SELECT * 
FROM ����������1
WHERE ���=@FIO AND �������=54)
GO

SELECT * FROM FUNC1('������') 