
DROP TABLE dbo.[People];
 
GO


CREATE TABLE People 

(  

����������� INTEGER IDENTITY(1, 1) PRIMARY KEY  NOT NULL,  
������� VARCHAR (15),            
���_������������� INTEGER FOREIGN KEY  REFERENCES People (�����������) DEFAULT NULL

)

INSERT INTO dbo.People (�������,���_�������������) 

Values 
('�����',2), 
('���������',1), 
('���������',4),
('����������',3)

INSERT INTO dbo.People (�������)

Values 
('�������'),
('�����')

INSERT INTO dbo.People DEFAULT VALUES;  

GO 

SELECT * 
FROM dbo.People; 

GO 