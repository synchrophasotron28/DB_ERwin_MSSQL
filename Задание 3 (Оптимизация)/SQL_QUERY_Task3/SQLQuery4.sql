SET STATISTICS IO ON;
SELECT * FROM BigDataBOSS1, BigDataSUBORDINATE1
WHERE BigDataBOSS1.ID_BOSS<=BigDataSUBORDINATE1.ID_SUBORDINATE AND BigDataSUBORDINATE1.SUBORDINATE_SALARY=5000
SET STATISTICS IO OFF;