USE Радиостанции
GO
DECLARE @S_N nvarchar(50), @S_S money, @ID_B int
DECLARE @i int, @n int, @salary money
SET @i=1
SET @ID_B=1
WHILE @i<=1000
BEGIN
SET @salary=5000
SET @S_N='SUBORDINATE_'+CAST(@i AS VARCHAR(4))
SET @S_S=CASE WHEN @i BETWEEN 1 AND 5
			  THEN @salary
			  WHEN @i BETWEEN 6 AND 15
			  THEN @salary+50
			  ELSE @salary+1000 END
SET @ID_B=CASE WHEN @i BETWEEN 1 AND 20
			   THEN @i+5
			   ELSE @i END
INSERT INTO dbo.BigDataSUBORDINATE1
VALUES(@i, @S_N, @ID_B, @S_S)
SET @i=@i+1
END
SELECT * FROM BigDataSUBORDINATE1