SELECT З.Альбом, И.Имя
FROM     Записи1 AS З
LEFT JOIN Исполнители1 AS И
 ON З.Код_записи = И.Код_исполнителя
 WHERE Альбом IS NOT NULL