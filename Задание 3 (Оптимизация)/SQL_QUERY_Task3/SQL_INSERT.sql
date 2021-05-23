USE Радиостанции
GO
DECLARE @B_N nvarchar(50), @B_S money
DECLARE @i int, @n int, @salary money
SET @i=1

WHILE @i<=1000
BEGIN
SET @salary=10000
SET @B_N='BOSS_'+CAST(@i AS VARCHAR(4))
SET @B_S=CASE WHEN @i BETWEEN 1 AND 5
			  THEN @salary
			  WHEN @i BETWEEN 6 AND 15
			  THEN @salary+50
			  ELSE @salary+1000 END
INSERT INTO dbo.BigDataBOSS1
VALUES(@i, @B_N, @B_S)
SET @i=@i+1
END
SELECT * FROM BigDataBOSS1