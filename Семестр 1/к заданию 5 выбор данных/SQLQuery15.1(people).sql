
DROP TABLE dbo.[People];
 
GO


CREATE TABLE People 

(  

КодЧеловека INTEGER IDENTITY(1, 1) PRIMARY KEY  NOT NULL,  
Фамилия VARCHAR (15),            
Код_СупругСупруга INTEGER FOREIGN KEY  REFERENCES People (КодЧеловека) DEFAULT NULL

)

INSERT INTO dbo.People (Фамилия,Код_СупругСупруга) 

Values 
('Ершов',2), 
('Соловьева',1), 
('Меньшиков',4),
('Меньшикова',3)

INSERT INTO dbo.People (Фамилия)

Values 
('Никитюк'),
('Южина')

INSERT INTO dbo.People DEFAULT VALUES;  

GO 

SELECT * 
FROM dbo.People; 

GO 