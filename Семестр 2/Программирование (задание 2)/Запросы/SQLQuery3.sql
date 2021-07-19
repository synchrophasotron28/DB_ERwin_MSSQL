/*Преобразование типов переменных

1. Объявить переменные типа FLOAT, CHAR, TINYINT, BIT. 
Присвоить значения, соответствующие типам. 
Выполнить преобразование переменных типа FLOAT, CHAR, TINYINT, BIT в INT, DATETIME, BIT, FLOAT соответственно и вывести результат на экран.

2. Объявить переменные типа INT, DATETIME, NUMERIC, VARCHAR. 
Присвоить значения, соответствующие типам. 
Выполнить преобразование переменных типа INT, DATETIME, NUMERIC, VARCHAR в FLOAT, CHAR, FLOAT, INT соответственно и вывести результат на экран.

*/


DECLARE @q1 INT, @q2 DATETIME,@q3 NUMERIC, @q4 VARCHAR  
SET @q1 = 5
SET @q2 = '1990-01-01 00:00:00'   
SET @q3 = 584.72 
SET @q4 = '15' 
SELECT CAST(@q1 AS FLOAT) AS float1
SELECT CAST(@q2 AS CHAR(50)) AS char1
SELECT CAST(@q3 AS FLOAT) AS float1
SELECT CAST(@q4 AS INT) AS int1
