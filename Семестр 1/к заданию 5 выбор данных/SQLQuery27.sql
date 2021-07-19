USE ������������;

IF OBJECT_ID (N'dbo.����������4', N'U') IS NOT NULL 

DROP TABLE dbo.[����������4];
 
GO

CREATE TABLE dbo.����������4
(
���_���������� int PRIMARY KEY IDENTITY(1,1) NOT NULL,
������� nchar(15) NULL,
����_�������� DATE NULL,
������������� nchar(10) NULL,
���_������������ int REFERENCES ����������4(���_����������) null
)
DELETE FROM ����������4
SET IDENTITY_INSERT ����������4 ON
INSERT INTO dbo.����������4 (���_����������, �������, ����_��������, �������������,���_������������)

Values
(1,'������','01.10.1990', '����1',2), 
(2,'�������','01.10.1980', '����1',1), 
(3,'�����','01.10.1995', '����2',4), 
(4,'������','01.10.1982', '����2',6), 
(5,'��������','01.10.2000', '����3',6), 
(6,'��������','01.10.1996', '����4',NULL)




SELECT * 
FROM dbo.����������4; 

GO
WITH EmpsRN AS
(
  SELECT *,
    ROW_NUMBER() OVER(PARTITION BY ���_������������ ORDER BY �������, ���_����������) AS n
  FROM dbo.����������4
)
SELECT * FROM EmpsRN;