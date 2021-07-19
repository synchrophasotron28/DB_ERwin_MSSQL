SELECT * 
FROM Записи1 
WHERE Рейтинг= (SELECT MAX(Рейтинг) FROM Записи1)