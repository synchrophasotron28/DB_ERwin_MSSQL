SET TRANSACTION ISOLATION LEVEL REPEATABLE READ; 

BEGIN TRAN 

SELECT * FROM TRAN_TABLE1 WHERE COLUMN_1 <= 8; 