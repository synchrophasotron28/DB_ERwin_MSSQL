SELECT Специальность
FROM Сотрудники3
WHERE datediff (year, Дата_рождения, getdate())>6

