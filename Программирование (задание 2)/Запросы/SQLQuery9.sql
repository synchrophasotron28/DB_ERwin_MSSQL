/*
Цикл WHILE

Вычислить сумму членов последовательности. 
Формула общего члена последовательности определяется номером варианта. 
Вычисление вести до заданной точности вычисления (задается в программе). 
Точность вычисления определяется как разность двух членов последовательности.
6. (-1)^(N+1)/(2*N)!
Для возведения в степень использовать функцию POWER ( numeric_expression, y), 
где y - степень, в которую возводится аргумент numeric_expression. 
Аргумент y является выражением категории точного числового или приблизительного числового типа данных, за исключением типа данных bit.
*/

USE Радиостанции
GO

ALTER FUNCTION GetSeqU
 (@N int)
RETURNS float
AS
 BEGIN
  DECLARE @D FLOAT
  --6. (-1)^(N+1)/(2*N)
	SET @D=POWER((-1),(@N+1)/(2*@N));
  RETURN @D
 END

DECLARE @SUM FLOAT
DECLARE @N INT
DECLARE @VAL FLOAT
SET @N=1
SET @VAL=1
SET @SUM=0
WHILE @VAL > 0.01
BEGIN
SET @VAL = (SELECT dbo.GetSeqU(@N+1))-(SELECT dbo.GetSeqU(@N))
SET @SUM=@SUM+@VAL
SET @N=@N+1;
END
SELECT @SUM