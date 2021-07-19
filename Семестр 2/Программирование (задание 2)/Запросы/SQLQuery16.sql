/*
Создание временной таблицы через переменную типа TABLE

1. Создать локальную временную таблицу с названием TEMP1. Заполнить таблицу TEMP2 данными из имеющейся таблицы и вывести результат на экран.

2. Создать табличную переменную с названием TEMP2 и полями типа длинное целое со счетчиком, 
дата/время, целое, строка. Добавить в нее две записи с данными и вывести результат на экран.

*/
USE Радиостанции;
GO

IF OBJECT_ID (N'TEMP1', N'U') IS NOT NULL

DROP TABLE #TEMP1;

GO
IF OBJECT_ID (N'TEMP2', N'U') IS NOT NULL

DROP TABLE #TEMP2;

GO

CREATE TABLE #TEMP1
(Код_сотрудника	INT IDENTITY(1,1),
Должность VARCHAR(40),
Заработок INT NOT NULL
)	

INSERT INTO #TEMP1 (Должность, Заработок) VALUES ('Звукорежиссер',30000)
INSERT INTO #TEMP1 (Должность, Заработок) VALUES ('Уборщик',10000)	
INSERT INTO #TEMP1 (Должность, Заработок) VALUES ('Флорист',20000)

CREATE TABLE #TEMP2
(Код_сотрудника	INT IDENTITY(1,1),
Должность VARCHAR(40),
Заработок INT NOT NULL
)

INSERT INTO #TEMP2 SELECT Должность, Заработок FROM #TEMP1
SELECT *FROM #TEMP2