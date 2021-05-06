/*
�������� ��������� ������� ����� ���������� ���� TABLE

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