SELECT dyear, COUNT(DISTINCT Код_жанра) AS kjanr

FROM (SELECT YEAR(Дата_записи) AS dyear, Код_жанра

FROM Записи1) as З  

GROUP BY dyear;