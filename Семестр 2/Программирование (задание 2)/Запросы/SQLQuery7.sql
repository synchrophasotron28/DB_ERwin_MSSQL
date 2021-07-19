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

