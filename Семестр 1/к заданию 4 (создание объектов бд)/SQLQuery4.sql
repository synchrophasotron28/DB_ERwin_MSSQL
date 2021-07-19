USE ������������; 

IF OBJECT_ID (N'dbo.������1', N'U') IS NOT NULL 

DROP TABLE dbo.[������1];
 
GO

CREATE TABLE dbo.������1
(
���_������ int NOT NULL,
��������������������� int NOT NULL,
���_����� int FOREIGN KEY REFERENCES �����1 ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
���_����������� int FOREIGN KEY REFERENCES �����������1 ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
������������ nvarchar (50) NOT NULL,
������ nvarchar (50) NULL,
��� datetime NOT NULL,
����_������ date NOT NULL default GETDATE(),
������������ time CHECK (������������ > '00:00:00' And ������������ <= '00:10:00') NOT NULL, 
������� float CHECK (������� >= 0 And ������� <= 10) NOT NULL,
CONSTRAINT PK_������1 PRIMARY KEY CLUSTERED  
(���_������ ASC, ��������������������� ASC) 

)
