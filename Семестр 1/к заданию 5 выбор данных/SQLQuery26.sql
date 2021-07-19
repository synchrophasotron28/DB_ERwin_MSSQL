WITH C(dz, Код_исполнителя) AS 

(  SELECT YEAR(Дата_записи), Код_исполнителя   FROM Записи1) 

SELECT dz, COUNT(DISTINCT Код_исполнителя) AS kjanr

FROM C 

GROUP BY dz; 