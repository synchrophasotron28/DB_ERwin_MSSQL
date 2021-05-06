   SELECT CASE WHEN Код_должности = 1 THEN 'Один'
                        WHEN Код_должности = 2 THEN 'Два'
                        WHEN Код_должности = 3 THEN 'Три'
                        WHEN Код_должности = 4 THEN 'Четыре'
                        WHEN Код_должности = 5 THEN 'Пять'
                        ELSE '' 
           END AS Код_должности_text1
           

   FROM Сотрудники1
