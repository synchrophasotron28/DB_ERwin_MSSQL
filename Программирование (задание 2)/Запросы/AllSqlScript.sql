/*���������� ���������� ������� 1

1. �������� ���������� Perem1 ���� ��������, � ���������� Perem2 ���� ����� � ����� ������ ������ 8 � ������� ������ ������ 2.

2. �������� ���������� Perem1 ���� ������ ������ 100, � ���������� Perem2 ���� ������� �����.

3. �������� ���������� Perem1 ���� ������������ ������ � ������������ ������ 1000, � ���������� Perem2 ���� ����� �����.

4. �������� ���������� Perem1 ���� ������ ������ 30, � ���������� Perem2 ���� ����� � ����� ������ ������ 10 � ������� ������ ������ 5.

5. �������� ���������� Perem1 ���� ����/ �����, � ���������� Perem2 ���� ����� � ��������� �� 0 �� 255.

*/

DECLARE @a MONEY,
		@b NUMERIC(10,2),
		@text CHAR(100), 
		@c BIGINT,
		@DINAMtext VARCHAR(1000), 
		@d INT,
		@text1 CHAR(30),
		@E NUMERIC(10,5),
		@DT DATETIME,
		@num TINYINT

/*������ � ����� � �������� ������� 2

1. ���������� ���������� Date1 ���� ����/�����. ��������� �� �������� ���� 31.12.2009 � ������� dd.mm.yyyy.

2. ���������� ���������� Date1 ���� ����/�����. ��������� �� �������� ���� 31.12.2009 � ������� mm.dd.yyyy.

3. ���������� ���������� Date1 ���� ����/�����. ��������� �� �������� ���� 31.12.2009 � ������� yyyy.mm.dd.

*/
SET DATEFORMAT dmy 
DECLARE @Date1 DATETIME
SET @Date1 = '31.12.2009'

SET DATEFORMAT mdy
DECLARE @Date2 DATETIME
SET @Date2 = '12.31.2009'

SET DATEFORMAT ymd
DECLARE @Date3 DATETIME
SET @Date3 = '2009.12.31'

/*�������������� ����� ���������� ������� 3

1. �������� ���������� ���� FLOAT, CHAR, TINYINT, BIT. 
��������� ��������, ��������������� �����. 
��������� �������������� ���������� ���� FLOAT, CHAR, TINYINT, BIT � INT, DATETIME, BIT, FLOAT �������������� � ������� ��������� �� �����.

2. �������� ���������� ���� INT, DATETIME, NUMERIC, VARCHAR. 
��������� ��������, ��������������� �����. 
��������� �������������� ���������� ���� INT, DATETIME, NUMERIC, VARCHAR � FLOAT, CHAR, FLOAT, INT �������������� � ������� ��������� �� �����.

*/

DECLARE @p1 FLOAT, @p2 CHAR,@p3 TINYINT, @p4 BIT  
SET @p1 = 1.57
SET @p2 = '����'    
SET @p3 = 2  
SET @p4 = 'True' 
SELECT CAST(@p1 AS INT) AS int1
SELECT CAST(@p2 AS DATETIME) AS datetime1
SELECT CAST(@p3 AS BIT) AS bit1
SELECT CAST(@p4 AS FLOAT) AS float1

DECLARE @q1 INT, @q2 DATETIME,@q3 NUMERIC, @q4 VARCHAR  
SET @q1 = 5
SET @q2 = '1990-01-01 00:00:00'   
SET @q3 = 584.72 
SET @q4 = '������' 
SELECT CAST(@q1 AS FLOAT) AS float1
SELECT CAST(@q2 AS CHAR) AS char1
SELECT CAST(@q3 AS FLOAT) AS float1
SELECT CAST(@q4 AS INT) AS int1


/*
������������� ������� ��� ������ � ����� ����/����� ������� 4

1. ������� �� ����� �������� �������� ������ � ������� �����.

2. ��������� �� ��������� ������������ ������� ���� � ����� � ������� �������� �� ����� 
� ��������� ������� (������ ����������): "�������: ���� = �, ����� = �, ��� = �, ����� = �, ����� = �, ������= �"

3. � �������� �����, ����������� � ���������� Perem, 
����� ����� " ����� " �������� ������� �����. ��������� ��������� � ��� �� ���������� Perem � ������� �� �����.
*/

SELECT DATENAME(MONTH,GETDATE())+ ', '+ CAST(DATEPART(HOUR,GETDATE())AS CHAR(4))+
':' + CAST (DATEPART(MINUTE,GETDATE())AS CHAR(4))+':'+ CAST (DATEPART(SECOND,GETDATE())AS CHAR(4))

SELECT '�������: ���� = ' + CAST(DATENAME(DAY, GETDATE()) AS CHAR(2))+', '+ 
'����� = '+DATENAME(MONTH, GETDATE())+', ','��� ='+CAST(DATENAME(YEAR, GETDATE()) AS CHAR(4))+', '+
'����� ='+CAST(DATENAME(HOUR, GETDATE())AS CHAR(2))+', '+'����� ='+CAST(DATENAME(MINUTE, GETDATE())AS CHAR(2))+', '+
'������='+ CAST(DATENAME(SECOND, GETDATE())AS CHAR(2))

DECLARE @Perem CHAR(10)
SET @Perem = '����� : '
SELECT @Perem + CAST(DATENAME(HOUR, GETDATE())AS CHAR(2))+':'+CAST(DATENAME(MINUTE, GETDATE())AS CHAR(2))+':'+
 CAST(DATENAME(SECOND, GETDATE())AS CHAR(2))
/*
 ������� ��������� Case: ������� 5

�������: ��������� ������� ��������� Case, ���������� ����� ���������� �������� ������ �� ����� ������� 
���� ������ ������ �������� (������������ �� ����� 3 ����������� ��������� � ������������� ������������� ELSE). 
��� ������������� �������� �������� ����� � ������������ �������.
*/

USE ������������
GO

SELECT  CASE ���_��������� WHEN 1 THEN '����'
                          WHEN 2 THEN '���'
                          WHEN 3 THEN '���'
                          WHEN 4 THEN '������'
                          WHEN 5 THEN '����'
                          ELSE '' 
        END AS ���_���������_text

FROM ����������1

/*
��������� ��������� CASE: ������� 6

�������: ��������� ��������� ��������� Case, 
���������� ������ �������� ������ �� ����� ������� ���� ������ ������ ��������
 (������������ �� ����� 3 ����������� ��������� � ������������� ������������� ELSE). 
 ��� ������������� �������� �������� ����� � ������������ �������.
*/
USE ������������
GO

   SELECT CASE WHEN ���_��������� = 1 THEN '����'
                        WHEN ���_��������� = 2 THEN '���'
                        WHEN ���_��������� = 3 THEN '���'
                        WHEN ���_��������� = 4 THEN '������'
                        WHEN ���_��������� = 5 THEN '����'
                        ELSE '' 
           END AS ���_���������_text1
           

   FROM ����������1

   /*
   �������� ����������� IF ������� 7

1. ���������� ���������� ������� � ����� �� ������ ���� ������ ������ ��������. 
���� �� � ������� �� ?? �� ?? (������ ��������), �� ������ �� ��������,
 � ��������� ������ ������� ��������� ���� "� ������� ... �������" (������ ���������� ��������� ������ ���������� �������).

2. ���������� ����� �������� ������ �� ����� ������� ���� ������ ������ ��������. 
���� ���������� ����� � ��������� �� ?? �� ?? (������ ��������), �� ������ �� ��������,
 � ��������� ������ ������� ��������� ���� "����� �� ���� ????? = �" (������ ���������� ��������� ������ �����)
   */
USE ������������
GO
DECLARE @QUANTITY INT, @TEXT CHAR(100)
SET @QUANTITY = (SELECT COUNT(*) FROM ����������1)
SET @TEXT = '� ������� ������ 4 �������'
IF @QUANTITY>=4
	BEGIN
		SELECT @TEXT
	END


USE ������������
GO
DECLARE @QUANTITY INT, @TEXT CHAR(100)
SET @QUANTITY = (SELECT SUM(�������) FROM ����������1)
SET @TEXT = '����� �� ����'
IF @QUANTITY>=150
	BEGIN
		SELECT @TEXT + CAST (@QUANTITY AS CHAR(3))
	END


/*
���� WHILE ������� 8

��������� ����� ������ ������������������. 
������� ������ ����� ������������������ ������������ ������� ��������. 
���������� ����� �� �������� �������� ���������� (�������� � ���������). 
�������� ���������� ������������ ��� �������� ���� ������ ������������������.
6. (-1)^(N+1)/(2*N)!
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

/*
�������: ��� ����� �� ������ ���� ������ ������ ��������, ������� 9
������� �������� ���� � �������������� ������������ ��������, 
���������� ���������� ������� � �������. ���� ������� ������ ?? (������ ��������), 
������ � ����� ���������� ������ � ������� � �������������� ������������ �������� ��������� ����, 
� ������ �������� ������ �� ����� ��������� �������� '�� ������'.
*/
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

/*
�������: ������� ������� � ��������� ���� �� �� ����� ������  ������� 10
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
/*
�������� ��������� ������� ����� ���������� ���� TABLE ������� 11

1. ������� ��������� ��������� ������� � ��������� TEMP1. ��������� ������� TEMP2 ������� �� ��������� ������� � ������� ��������� �� �����.

2. ������� ��������� ���������� � ��������� TEMP2 � ������ ���� ������� ����� �� ���������, 
����/�����, �����, ������. �������� � ��� ��� ������ � ������� � ������� ��������� �� �����.

*/
USE ������������;
GO

IF OBJECT_ID (N'TEMP1', N'U') IS NOT NULL

DROP TABLE #TEMP1;

GO
IF OBJECT_ID (N'TEMP2', N'U') IS NOT NULL

DROP TABLE #TEMP2;

GO

CREATE TABLE #TEMP1
(���_����������	INT IDENTITY(1,1),
��������� VARCHAR(40),
��������� INT NOT NULL
)	

INSERT INTO #TEMP1 (���������, ���������) VALUES ('�������������',30000)
INSERT INTO #TEMP1 (���������, ���������) VALUES ('�������',10000)	
INSERT INTO #TEMP1 (���������, ���������) VALUES ('�������',20000)

CREATE TABLE #TEMP2
(���_����������	INT IDENTITY(1,1),
��������� VARCHAR(40),
��������� INT NOT NULL
)

INSERT INTO #TEMP2 SELECT ���������, ��������� FROM #TEMP1
SELECT *FROM #TEMP2
/*
������� 12:

1. �� ���� ��������� �������� (��� SQL �������� ����� �������� ����� �������, 
����� � ��� ����� ���� ���������� �������� �����, �� ������� �������������� �����) �������:

1. ��������� ��� ����������.

2. ��������� c �������� �����������

3. ��������� c �������� ����������� � �������� ����������
*/

CREATE PROCEDURE STAFF AS 
SELECT COUNT(���) FROM ����������1
GO
EXEC STAFF

CREATE PROCEDURE STAFF_W @����_������� INT
AS SELECT MAX(�������)
FROM ����������1
WHERE �������<=@����_�������
GO
EXEC STAFF_W 50

ALTER PROCEDURE STAFF_D @���_������� INT, @����_������� INT, @�������_������� INT OUTPUT
AS SELECT @�������_�������=AVG(�������)
FROM ����������1
WHERE ������� BETWEEN @���_������� AND @����_�������
GO

DECLARE @�������_������� INT
EXEC STAFF_D 18,60, @�������_������� OUTPUT
PRINT '������� ������� �� 18 �� 60 �����'+CAST (@�������_������� AS CHAR(5))
/*
�������� � ������������� �������. ������� 13

1. ������� ��������� ������� � ������������ ��������� � ��� � �������.

2. ������� �������� ��������� ������� � ��������� � ���.
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


USE ������������
GO

IF OBJECT_ID (N'FUNC1', N'U') IS NOT NULL

DROP FUNCTION FUNC1;

GO


CREATE FUNCTION FUNC1(@FIO CHAR(10))
RETURNS TABLE
AS 
RETURN (SELECT * 
FROM ����������1
WHERE ���=@FIO AND �������=54)
GO

SELECT * FROM FUNC1('������') 

/*

�������� � ������������� ���������. ������� 14

1. ������� DDL - ������� � ���� ������ �������� ������� ��� ������� ��������� �������. 
������������������ ������ �������� �� ������� ��������� ������� ���� ������.

2. ������� D�L � ������� ��� �������� ������-������� � ���� ������ �������� �������. 
������� ������ ��������� ����������� ��������� ������� ����� ������� �� ������ �������� ������� ������ �������
*/

USE ������������
GO
--�������� DDL ��������
CREATE TRIGGER WORK--�������� ��������
ON DATABASE
FOR DROP_TABLE
AS
PRINT '���������� ������� �������'
ROLLBACK;
GO

DROP TABLE People


USE ������������
GO

ENABLE TRIGGER WORK--��������� ��������
ON DATABASE
GO

DROP TABLE People


USE ������������
GO

DISABLE TRIGGER WORK--���������� �������� � �������� �������
ON DATABASE
DROP TABLE People

USE ������������
GO

DROP TRIGGER WORK--�������� ��������
ON DATABASE


--�������� DML ��������
USE ������������
GO

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


