WITH EmpsCTE AS 

( 

  SELECT ���_����������, ���_������������, ������� 

  FROM ����������4 

  WHERE ������� = '��������' 

    UNION ALL 

 SELECT C.���_����������, C.���_������������, C.������� 

  FROM EmpsCTE AS P 

    JOIN ����������4 AS C 

      ON C.���_������������ = P.���_���������� 

) 

SELECT ���_����������, ���_������������, �������

FROM EmpsCTE;