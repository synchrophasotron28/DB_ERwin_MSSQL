SELECT Код_записи FROM Записи1 WHERE Код_записи IN  
(SELECT Код_записи   FROM Записи1 WHERE Альбом like '______1'); 