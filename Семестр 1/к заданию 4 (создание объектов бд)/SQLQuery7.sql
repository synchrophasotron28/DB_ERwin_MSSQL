USE ������������;

IF OBJECT_ID (N'dbo.����������������1', N'U') IS NOT NULL 

DROP TABLE dbo.[����������������1];
 
GO

CREATE TABLE dbo.����������������1
(
���_���������� int FOREIGN KEY REFERENCES ����������1 ON DELETE NO ACTION ON UPDATE NO ACTION NOT NULL,
���_������� int FOREIGN KEY REFERENCES ������_������1 ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
�����_����_������ int PRIMARY KEY NOT NULL,
���_������ int NOT NULL,
��������������������� int NOT NULL,
CONSTRAINT FK_����������������1_������1 FOREIGN KEY(���_������, ���������������������) 
REFERENCES dbo.������1 (���_������, ���������������������) 
)
