/*
Создание и использование функций.

1. Создать скалярную функцию и использовать обращение к ней в запросе.

2. Создать линейную табличную функцию и обращение к ней.
*/
USE Радиостанции
GO

IF OBJECT_ID (N'FUNC1', N'U') IS NOT NULL

DROP FUNCTION FUNC1;

GO


alter FUNCTION FUNC1(@FIO CHAR(10))
RETURNS TABLE
AS 
RETURN (SELECT * 
FROM Сотрудники1
WHERE ФИО=@FIO AND Возраст=54)
GO

SELECT * FROM FUNC1('Семгов') 