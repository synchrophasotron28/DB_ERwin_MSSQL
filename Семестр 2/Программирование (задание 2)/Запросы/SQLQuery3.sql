/*�������������� ����� ����������

1. �������� ���������� ���� FLOAT, CHAR, TINYINT, BIT. 
��������� ��������, ��������������� �����. 
��������� �������������� ���������� ���� FLOAT, CHAR, TINYINT, BIT � INT, DATETIME, BIT, FLOAT �������������� � ������� ��������� �� �����.

2. �������� ���������� ���� INT, DATETIME, NUMERIC, VARCHAR. 
��������� ��������, ��������������� �����. 
��������� �������������� ���������� ���� INT, DATETIME, NUMERIC, VARCHAR � FLOAT, CHAR, FLOAT, INT �������������� � ������� ��������� �� �����.

*/


DECLARE @q1 INT, @q2 DATETIME,@q3 NUMERIC, @q4 VARCHAR  
SET @q1 = 5
SET @q2 = '1990-01-01 00:00:00'   
SET @q3 = 584.72 
SET @q4 = '15' 
SELECT CAST(@q1 AS FLOAT) AS float1
SELECT CAST(@q2 AS CHAR(50)) AS char1
SELECT CAST(@q3 AS FLOAT) AS float1
SELECT CAST(@q4 AS INT) AS int1
