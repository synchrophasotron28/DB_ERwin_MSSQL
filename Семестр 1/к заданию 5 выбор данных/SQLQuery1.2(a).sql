SELECT DISTINCT Оклад, Оклад*12 AS Годовой_оклад1
FROM Должности1
WHERE Обязанности is not null
ORDER BY Оклад, Годовой_оклад1 DESC