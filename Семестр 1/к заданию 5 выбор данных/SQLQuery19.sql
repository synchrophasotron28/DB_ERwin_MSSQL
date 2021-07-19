SELECT Код_записи FROM Записи1 WHERE Код_записи IN  
(SELECT Код_записи   FROM Записи1 WHERE Длительность>'00:02:00'); 