DELETE FROM Жанры1;
INSERT INTO dbo.Жанры1

Values 
(20,'Наим1','Опис1'), 
(21,'Наим2','Опис2'), 
(22,'Наим3','Опис3')

INSERT INTO dbo.Жанры1 (Код_жанра,Наименование)

Values 
(23,'Наим4'),
(24,'Наим5')


SELECT * 
FROM dbo.Жанры1; 

GO 
