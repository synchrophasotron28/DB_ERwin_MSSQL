USE ������������;

IF OBJECT_ID (N'dbo.������_������1', N'U') IS NOT NULL 

DROP TABLE dbo.[������_������1];
 
GO

CREATE TABLE dbo.������_������1
(
���_������� int PRIMARY KEY NOT NULL,
���_���������� int FOREIGN KEY REFERENCES ����������1 ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
���� date NOT NULL
)
