USE ������������;

IF OBJECT_ID (N'dbo.������������1', N'U') IS NOT NULL 

DROP TABLE dbo.[������������1];
 
GO

CREATE TABLE dbo.������������1
(
���_������ int NOT NULL,
��������������������� int NOT NULL,
����_�������� DATETIME NOT NULL,
CONSTRAINT FK_������������1_������1 FOREIGN KEY(���_������, ���������������������) 
REFERENCES dbo.������1 (���_������, ���������������������) 
)