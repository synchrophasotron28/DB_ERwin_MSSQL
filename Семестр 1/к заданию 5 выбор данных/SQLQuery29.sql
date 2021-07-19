WITH EmpsCTE AS 

( 

  SELECT Код_сотрудника, Код_подчиненного, Фамилия 

  FROM Сотрудники4 

  WHERE Фамилия = 'Нестеров' 

    UNION ALL 

 SELECT C.Код_сотрудника, C.Код_подчиненного, C.Фамилия 

  FROM EmpsCTE AS P 

    JOIN Сотрудники4 AS C 

      ON C.Код_подчиненного = P.Код_сотрудника 

) 

SELECT Код_сотрудника, Код_подчиненного, Фамилия

FROM EmpsCTE;