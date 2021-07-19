CREATE VIEW TOPReiting

AS SELECT Код_записи, Рейтинг 

FROM Записи1

WHERE Рейтинг = 4 

WITH CHECK OPTION; 